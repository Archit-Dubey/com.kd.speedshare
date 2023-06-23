package com.genonbeta.TrebleShot.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.android.database.DatabaseObject;
import com.kd.speedshare.R;

public class RemoveDeviceDialog extends AlertDialog.Builder {
    public RemoveDeviceDialog(final Activity activity, final NetworkDevice networkDevice) {
        super(activity);
        setTitle((int) R.string.ques_removeDevice);
        setMessage((int) R.string.text_removeDeviceNotice);
        setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null);
        setPositiveButton((int) R.string.butn_proceed, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                AppUtils.getDatabase(RemoveDeviceDialog.this.getContext()).removeAsynchronous(activity, (DatabaseObject) networkDevice);
            }
        });
    }
}
