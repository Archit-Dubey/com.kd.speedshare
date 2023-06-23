package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.adapter.FileListAdapter;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.android.framework.io.DocumentFile;
import com.kd.speedshare.R;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

public class FileDeletionDialog extends AlertDialog.Builder {

    public interface Listener {
        void onCompleted(WorkerService.RunningTask runningTask, Context context, int i);

        void onFileDeletion(WorkerService.RunningTask runningTask, Context context, DocumentFile documentFile);
    }

    public FileDeletionDialog(final Context context, List<FileListAdapter.GenericFileHolder> list, final Listener listener) {
        super(context);
        final ArrayList arrayList = new ArrayList();
        for (FileListAdapter.GenericFileHolder next : list) {
            if (next.file != null) {
                arrayList.add(next.file.getUri());
            }
        }
        setTitle((int) R.string.text_deleteConfirm);
        setMessage((CharSequence) getContext().getResources().getQuantityString(R.plurals.ques_deleteFile, arrayList.size(), new Object[]{Integer.valueOf(arrayList.size())}));
        setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null);
        setPositiveButton((int) R.string.butn_delete, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                new WorkerService.RunningTask() {
                    int mTotalDeletion = 0;

                    public void onRun() {
                        for (Uri fromUri : arrayList) {
                            try {
                                delete(FileUtils.fromUri(getService(), fromUri));
                            } catch (FileNotFoundException e) {
                                e.printStackTrace();
                            }
                        }
                        if (listener != null) {
                            listener.onCompleted(this, getService(), this.mTotalDeletion);
                        }
                    }

                    private void delete(DocumentFile documentFile) {
                        if (!getInterrupter().interrupted()) {
                            boolean isDirectory = documentFile.isDirectory();
                            boolean isFile = documentFile.isFile();
                            if (isDirectory) {
                                deleteDirectory(documentFile);
                            }
                            if (documentFile.delete()) {
                                if (isFile) {
                                    this.mTotalDeletion++;
                                }
                                listener.onFileDeletion(this, FileDeletionDialog.this.getContext(), documentFile);
                                publishStatusText(documentFile.getName());
                            }
                        }
                    }

                    private void deleteDirectory(DocumentFile documentFile) {
                        DocumentFile[] listFiles = documentFile.listFiles();
                        if (listFiles != null) {
                            for (DocumentFile delete : listFiles) {
                                delete(delete);
                            }
                        }
                    }
                }.setTitle(FileDeletionDialog.this.getContext().getString(R.string.text_deletingFilesOngoing)).setIconRes(com.genonbeta.TrebleShot.R.drawable.ic_folder_white_24dp_static).run(context);
            }
        });
    }
}
