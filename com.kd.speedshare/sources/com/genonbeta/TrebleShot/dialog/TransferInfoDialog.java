package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.framework.io.DocumentFile;
import com.kd.speedshare.R;
import java.io.IOException;

public class TransferInfoDialog extends AlertDialog.Builder {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public TransferInfoDialog(Context context, TransferObject transferObject) {
        super(context);
        final DocumentFile documentFile;
        String str;
        String str2;
        final Context context2 = context;
        final TransferObject transferObject2 = transferObject;
        TransferGroup transferGroup = new TransferGroup(transferObject2.groupId);
        try {
            AppUtils.getDatabase(context).reconstruct(transferGroup);
            AppUtils.getDatabase(context).reconstruct(transferObject2);
            boolean equals = TransferObject.Type.INCOMING.equals(transferObject2.type);
            if (equals) {
                try {
                    documentFile = FileUtils.getIncomingPseudoFile(getContext(), transferObject2, transferGroup, false);
                } catch (Exception e) {
                    e.printStackTrace();
                    documentFile = null;
                }
            } else {
                documentFile = FileUtils.fromUri(getContext(), Uri.parse(transferObject2.file));
            }
            boolean z = documentFile != null && documentFile.canRead();
            View inflate = LayoutInflater.from(context).inflate(R.layout.layout_transfer_info, (ViewGroup) null);
            View findViewById = inflate.findViewById(R.id.transfer_info_incoming_details_layout);
            TextView textView = (TextView) inflate.findViewById(R.id.transfer_info_received_size);
            TextView textView2 = (TextView) inflate.findViewById(R.id.transfer_info_pseudo_location);
            setTitle((int) R.string.text_transactionDetails);
            setView(inflate);
            ((TextView) inflate.findViewById(R.id.transfer_info_file_name)).setText(transferObject2.friendlyName);
            ((TextView) inflate.findViewById(R.id.transfer_info_file_size)).setText(FileUtils.sizeExpression(transferObject2.fileSize, false));
            ((TextView) inflate.findViewById(R.id.transfer_info_file_mime)).setText(transferObject2.fileMimeType);
            ((TextView) inflate.findViewById(R.id.transfer_info_file_status)).setText(TextUtils.getTransactionFlagString(transferObject2.flag));
            if (z) {
                str = FileUtils.sizeExpression(documentFile.length(), false);
            } else {
                str = getContext().getString(R.string.text_unknown);
            }
            textView.setText(str);
            if (z) {
                str2 = FileUtils.getReadableUri(documentFile.getUri());
            } else {
                str2 = getContext().getString(R.string.text_unknown);
            }
            textView2.setText(str2);
            setPositiveButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
            setNegativeButton((int) R.string.butn_remove, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(TransferInfoDialog.this.getContext());
                    builder.setTitle((int) R.string.ques_removeQueue);
                    builder.setMessage((CharSequence) TransferInfoDialog.this.getContext().getString(R.string.text_removePendingTransferSummary, new Object[]{transferObject2.friendlyName}));
                    builder.setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
                    builder.setPositiveButton((int) R.string.butn_proceed, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            AppUtils.getDatabase(context2).remove((DatabaseObject) transferObject2);
                        }
                    }).show();
                }
            });
            if (equals) {
                findViewById.setVisibility(0);
                if (!TransferObject.Flag.INTERRUPTED.equals(transferObject2.flag)) {
                    if (!TransferObject.Flag.IN_PROGRESS.equals(transferObject2.flag)) {
                        if (!z) {
                            return;
                        }
                        if (TransferObject.Flag.REMOVED.equals(transferObject2.flag) && documentFile.getParentFile() != null) {
                            setNeutralButton((int) R.string.butn_saveAnyway, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    AlertDialog.Builder builder = new AlertDialog.Builder(TransferInfoDialog.this.getContext());
                                    builder.setTitle((int) R.string.ques_saveAnyway);
                                    builder.setMessage((int) R.string.text_saveAnywaySummary);
                                    builder.setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null);
                                    builder.setPositiveButton((int) R.string.butn_proceed, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                        public void onClick(DialogInterface dialogInterface, int i) {
                                            try {
                                                DocumentFile saveReceivedFile = FileUtils.saveReceivedFile(documentFile.getParentFile(), documentFile, transferObject2);
                                                transferObject2.file = saveReceivedFile.getName();
                                                transferObject2.flag = TransferObject.Flag.DONE;
                                                AppUtils.getDatabase(context2).update((DatabaseObject) transferObject2);
                                                Toast.makeText(TransferInfoDialog.this.getContext(), R.string.mesg_fileSaved, 0).show();
                                            } catch (IOException e) {
                                                e.printStackTrace();
                                                Toast.makeText(TransferInfoDialog.this.getContext(), R.string.mesg_somethingWentWrong, 0).show();
                                            }
                                        }
                                    });
                                    builder.show();
                                }
                            });
                            return;
                        } else if (TransferObject.Flag.DONE.equals(transferObject2.flag)) {
                            setNeutralButton((int) R.string.butn_open, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    try {
                                        FileUtils.openUri(TransferInfoDialog.this.getContext(), documentFile);
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                }
                            });
                            return;
                        } else {
                            return;
                        }
                    }
                }
                setNeutralButton((int) R.string.butn_retry, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        transferObject2.flag = TransferObject.Flag.PENDING;
                        AppUtils.getDatabase(context2).publish((DatabaseObject) transferObject2);
                    }
                });
            } else if (TransferObject.Type.OUTGOING.equals(transferObject2.type) && z) {
                try {
                    final Intent openIntent = FileUtils.getOpenIntent(getContext(), documentFile);
                    setNeutralButton((int) R.string.butn_open, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            try {
                                TransferInfoDialog.this.getContext().startActivity(openIntent);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    });
                } catch (Exception unused) {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
