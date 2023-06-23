package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.dialog.AbstractFailureAwareDialog;
import com.genonbeta.android.framework.io.DocumentFile;
import com.kd.speedshare.R;

public class FolderCreationDialog extends AbstractSingleTextInputDialog {

    public interface OnFolderCreatedListener {
        void onFolderCreated(DocumentFile documentFile);
    }

    public FolderCreationDialog(Context context, final DocumentFile documentFile, final OnFolderCreatedListener onFolderCreatedListener) {
        super(context);
        setTitle((int) R.string.text_createFolder);
        setOnProceedClickListener((int) R.string.butn_create, (AbstractFailureAwareDialog.OnProceedClickListener) new AbstractFailureAwareDialog.OnProceedClickListener() {
            public boolean onProceedClick(AlertDialog alertDialog) {
                String obj = FolderCreationDialog.this.getEditText().getText().toString();
                if (obj.length() == 0) {
                    return false;
                }
                DocumentFile createDirectory = documentFile.createDirectory(obj);
                if (createDirectory == null) {
                    Toast.makeText(FolderCreationDialog.this.getContext(), R.string.mesg_folderCreateError, 0).show();
                    return false;
                }
                onFolderCreatedListener.onFolderCreated(createDirectory);
                alertDialog.dismiss();
                return true;
            }
        });
    }
}
