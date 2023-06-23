package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import com.genonbeta.TrebleShot.app.Activity;
import com.kd.speedshare.R;

public class RationalePermissionRequest extends AlertDialog.Builder {
    public PermissionRequest mPermissionQueue;

    public RationalePermissionRequest(final Activity activity, PermissionRequest permissionRequest, boolean z) {
        super(activity);
        this.mPermissionQueue = permissionRequest;
        setCancelable(false);
        setTitle((CharSequence) permissionRequest.title);
        setMessage((CharSequence) permissionRequest.message);
        if (ActivityCompat.shouldShowRequestPermissionRationale(activity, this.mPermissionQueue.permission)) {
            setNeutralButton((int) R.string.butn_settings, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    activity.startActivity(new Intent().setAction("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", activity.getPackageName(), (String) null)));
                }
            });
        }
        setPositiveButton((int) R.string.butn_ask, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ActivityCompat.requestPermissions(activity, new String[]{RationalePermissionRequest.this.mPermissionQueue.permission}, 1);
            }
        });
        if (z) {
            setNegativeButton((int) R.string.butn_reject, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    activity.finish();
                }
            });
        } else {
            setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
        }
    }

    public static AlertDialog requestIfNecessary(Activity activity, PermissionRequest permissionRequest, boolean z) {
        if (ActivityCompat.checkSelfPermission(activity, permissionRequest.permission) == 0) {
            return null;
        }
        return new RationalePermissionRequest(activity, permissionRequest, z).show();
    }

    public static class PermissionRequest {
        public String message;
        public String permission;
        public boolean required;
        public String title;

        public PermissionRequest(String str, String str2, String str3) {
            this(str, str2, str3, true);
        }

        public PermissionRequest(String str, String str2, String str3, boolean z) {
            this.permission = str;
            this.title = str2;
            this.message = str3;
            this.required = z;
        }

        public PermissionRequest(Context context, String str, int i, int i2) {
            this(str, context.getString(i), context.getString(i2));
        }
    }
}
