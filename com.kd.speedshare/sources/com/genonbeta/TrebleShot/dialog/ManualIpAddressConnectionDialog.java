package com.genonbeta.TrebleShot.dialog;

import android.app.Activity;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.dialog.AbstractFailureAwareDialog;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.ui.UIConnectionUtils;
import com.genonbeta.TrebleShot.ui.UITask;
import com.genonbeta.TrebleShot.ui.callback.NetworkDeviceSelectedListener;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.kd.speedshare.R;

public class ManualIpAddressConnectionDialog extends AbstractSingleTextInputDialog {
    /* access modifiers changed from: private */
    public AlertDialog mDialog;
    /* access modifiers changed from: private */
    public NetworkDeviceSelectedListener mListener;
    private NetworkDeviceLoader.OnDeviceRegisteredListener mSelfListener = new NetworkDeviceLoader.OnDeviceRegisteredListener() {
        public void onDeviceRegistered(AccessDatabase accessDatabase, NetworkDevice networkDevice, NetworkDevice.Connection connection) {
            if (ManualIpAddressConnectionDialog.this.mDialog != null && ManualIpAddressConnectionDialog.this.mDialog.isShowing()) {
                ManualIpAddressConnectionDialog.this.mDialog.dismiss();
            }
            if (ManualIpAddressConnectionDialog.this.mListener != null) {
                ManualIpAddressConnectionDialog.this.mListener.onNetworkDeviceSelected(networkDevice, connection);
            }
        }
    };

    public ManualIpAddressConnectionDialog(final Activity activity, final UIConnectionUtils uIConnectionUtils, NetworkDeviceSelectedListener networkDeviceSelectedListener) {
        super(activity);
        this.mListener = networkDeviceSelectedListener;
        setTitle((int) R.string.butn_enterIpAddress);
        setOnProceedClickListener((int) R.string.butn_connect, (AbstractFailureAwareDialog.OnProceedClickListener) new AbstractFailureAwareDialog.OnProceedClickListener() {
            public boolean onProceedClick(AlertDialog alertDialog) {
                ManualIpAddressConnectionDialog.this.doTask(activity, uIConnectionUtils);
                return false;
            }
        });
    }

    /* access modifiers changed from: private */
    public void doTask(Activity activity, UIConnectionUtils uIConnectionUtils) {
        String obj = getEditText().getText().toString();
        if (obj.matches("([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})")) {
            uIConnectionUtils.makeAcquaintance(activity, (UITask) null, obj, -1, this.mSelfListener);
            return;
        }
        getEditText().setError(getContext().getString(R.string.mesg_errorNotAnIpAddress));
    }

    public AlertDialog show() {
        AlertDialog show = super.show();
        this.mDialog = show;
        return show;
    }
}
