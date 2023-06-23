package com.genonbeta.TrebleShot.dialog;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.kd.speedshare.R;

public class ProfileEditorDialog extends AlertDialog.Builder {
    private AlertDialog mDialog;

    public ProfileEditorDialog(final Activity activity) {
        super(activity);
        View inflate = LayoutInflater.from(activity).inflate(R.layout.layout_profile_editor, (ViewGroup) null, false);
        final EditText editText = (EditText) inflate.findViewById(R.id.editText);
        String localDeviceName = AppUtils.getLocalDeviceName(getContext());
        editText.getText().clear();
        editText.getText().append(localDeviceName);
        activity.loadProfilePictureInto(localDeviceName, (ImageView) inflate.findViewById(R.id.layout_profile_picture_image_default));
        editText.requestFocus();
        ((ImageView) inflate.findViewById(R.id.layout_profile_picture_image_preferred)).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                activity.requestProfilePictureChange();
                ProfileEditorDialog.this.closeIfPossible();
            }
        });
        setView(inflate);
        setNegativeButton((int) R.string.butn_remove, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                activity.deleteFile("profilePicture");
                activity.notifyUserProfileChanged();
            }
        });
        setPositiveButton((int) R.string.butn_save, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                AppUtils.getDefaultPreferences(ProfileEditorDialog.this.getContext()).edit().putString("device_name", editText.getText().toString()).apply();
                activity.notifyUserProfileChanged();
            }
        });
        setNeutralButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
    }

    /* access modifiers changed from: protected */
    public void closeIfPossible() {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog == null) {
            return;
        }
        if (alertDialog.isShowing()) {
            this.mDialog.dismiss();
        } else {
            this.mDialog = null;
        }
    }

    public AlertDialog show() {
        AlertDialog show = super.show();
        this.mDialog = show;
        return show;
    }
}
