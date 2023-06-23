package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.genonbeta.TrebleShot.dialog.EstablishConnectionDialog;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.kd.speedshare.R;
import java.util.List;

public class ConnectionTestDialog extends AlertDialog.Builder {
    /* access modifiers changed from: private */
    public int mActiveColor;
    /* access modifiers changed from: private */
    public final List<EstablishConnectionDialog.ConnectionResult> mConnections;
    /* access modifiers changed from: private */
    public int mPassiveColor;

    public ConnectionTestDialog(Context context, NetworkDevice networkDevice, List<EstablishConnectionDialog.ConnectionResult> list) {
        super(context);
        this.mConnections = list;
        this.mActiveColor = ContextCompat.getColor(context, AppUtils.getReference(context, R.attr.colorAccent));
        this.mPassiveColor = ContextCompat.getColor(context, AppUtils.getReference(context, R.attr.colorControlNormal));
        setTitle((CharSequence) context.getString(R.string.text_connectionTest, new Object[]{networkDevice.nickname}));
        setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
        if (list.size() < 1) {
            setMessage((int) R.string.text_empty);
        } else {
            setAdapter(new ConnectionListAdapter(), (DialogInterface.OnClickListener) null);
        }
    }

    private class ConnectionListAdapter extends BaseAdapter {
        public long getItemId(int i) {
            return 0;
        }

        private ConnectionListAdapter() {
        }

        public int getCount() {
            return ConnectionTestDialog.this.mConnections.size();
        }

        public Object getItem(int i) {
            return ConnectionTestDialog.this.mConnections.get(i);
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(ConnectionTestDialog.this.getContext()).inflate(R.layout.list_available_interface, viewGroup, false);
            }
            EstablishConnectionDialog.ConnectionResult connectionResult = (EstablishConnectionDialog.ConnectionResult) getItem(i);
            TextView textView = (TextView) view.findViewById(R.id.pending_available_interface_text1);
            TextView textView2 = (TextView) view.findViewById(R.id.pending_available_interface_text2);
            TextView textView3 = (TextView) view.findViewById(R.id.pending_available_interface_text3);
            boolean z = connectionResult.pingTime >= 0;
            ConnectionTestDialog connectionTestDialog = ConnectionTestDialog.this;
            textView.setTextColor(z ? connectionTestDialog.mActiveColor : connectionTestDialog.mPassiveColor);
            textView.setText(TextUtils.getAdapterName(ConnectionTestDialog.this.getContext(), connectionResult.connection));
            textView2.setText(connectionResult.connection.ipAddress);
            if (z) {
                textView3.setText(ConnectionTestDialog.this.getContext().getString(R.string.text_textMillisecond, new Object[]{Integer.valueOf(connectionResult.pingTime)}));
            } else {
                textView3.setText(R.string.text_error);
            }
            return view;
        }
    }
}
