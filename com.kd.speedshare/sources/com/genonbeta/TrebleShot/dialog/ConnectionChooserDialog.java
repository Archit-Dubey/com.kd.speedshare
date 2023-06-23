package com.genonbeta.TrebleShot.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.genonbeta.TrebleShot.activity.ManageDevicesActivity;
import com.genonbeta.TrebleShot.callback.OnDeviceSelectedListener;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.util.AddressedInterface;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.NetworkUtils;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.TrebleShot.util.TimeUtils;
import com.genonbeta.android.database.SQLQuery;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ConnectionChooserDialog extends AlertDialog.Builder {
    /* access modifiers changed from: private */
    public int mActiveColor;
    /* access modifiers changed from: private */
    public final List<NetworkDevice.Connection> mConnections = new ArrayList();
    /* access modifiers changed from: private */
    public NetworkDevice mNetworkDevice;
    /* access modifiers changed from: private */
    public final List<AddressedInterface> mNetworkInterfaces = new ArrayList();
    /* access modifiers changed from: private */
    public int mPassiveColor;

    public ConnectionChooserDialog(final Activity activity, NetworkDevice networkDevice, final OnDeviceSelectedListener onDeviceSelectedListener) {
        super(activity);
        this.mNetworkDevice = networkDevice;
        this.mActiveColor = ContextCompat.getColor(activity, AppUtils.getReference(activity, R.attr.colorAccent));
        this.mPassiveColor = ContextCompat.getColor(activity, AppUtils.getReference(activity, R.attr.colorControlNormal));
        ConnectionListAdapter connectionListAdapter = new ConnectionListAdapter();
        if (this.mConnections.size() > 0) {
            setAdapter(connectionListAdapter, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    List<NetworkDevice.Connection> connections = ConnectionChooserDialog.this.getConnections();
                    onDeviceSelectedListener.onDeviceSelected(connections.get(i), connections);
                }
            });
        } else {
            setMessage((int) R.string.text_noNetworkAvailable);
        }
        setTitle((CharSequence) getContext().getString(R.string.text_availableNetworks, new Object[]{networkDevice.nickname}));
        setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null);
        setNeutralButton((int) R.string.text_manageDevices, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                activity.startActivity(new Intent(activity, ManageDevicesActivity.class));
            }
        });
    }

    public synchronized List<NetworkDevice.Connection> getConnections() {
        return new ArrayList(this.mConnections);
    }

    private class ConnectionListAdapter extends BaseAdapter {
        public long getItemId(int i) {
            return 0;
        }

        public ConnectionListAdapter() {
            ConnectionChooserDialog.this.mConnections.addAll(AppUtils.getDatabase(ConnectionChooserDialog.this.getContext()).castQuery(new SQLQuery.Select(AccessDatabase.TABLE_DEVICECONNECTION, new String[0]).setWhere("deviceId=?", ConnectionChooserDialog.this.mNetworkDevice.deviceId).setOrderBy("lastCheckedDate DESC"), NetworkDevice.Connection.class));
            ConnectionChooserDialog.this.mNetworkInterfaces.addAll(NetworkUtils.getInterfaces(true, AppConfig.DEFAULT_DISABLED_INTERFACES));
        }

        public int getCount() {
            return ConnectionChooserDialog.this.mConnections.size();
        }

        public Object getItem(int i) {
            return ConnectionChooserDialog.this.mConnections.get(i);
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            boolean z = false;
            if (view == null) {
                view = LayoutInflater.from(ConnectionChooserDialog.this.getContext()).inflate(R.layout.list_available_interface, viewGroup, false);
            }
            NetworkDevice.Connection connection = (NetworkDevice.Connection) getItem(i);
            TextView textView = (TextView) view.findViewById(R.id.pending_available_interface_text1);
            TextView textView2 = (TextView) view.findViewById(R.id.pending_available_interface_text2);
            TextView textView3 = (TextView) view.findViewById(R.id.pending_available_interface_text3);
            Iterator it = ConnectionChooserDialog.this.mNetworkInterfaces.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (connection.adapterName.equals(((AddressedInterface) it.next()).getNetworkInterface().getDisplayName())) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            textView.setTextColor(z ? ConnectionChooserDialog.this.mActiveColor : ConnectionChooserDialog.this.mPassiveColor);
            textView.setText(TextUtils.getAdapterName(ConnectionChooserDialog.this.getContext(), connection));
            textView2.setText(connection.ipAddress);
            textView3.setText(TimeUtils.getTimeAgo(ConnectionChooserDialog.this.getContext(), connection.lastCheckedDate));
            return view;
        }
    }
}
