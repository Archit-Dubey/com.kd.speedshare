package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.widget.EditText;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.adapter.FileListAdapter;
import com.genonbeta.TrebleShot.adapter.FileListAdapter.GenericFileHolder;
import com.genonbeta.TrebleShot.dialog.AbstractFailureAwareDialog;
import com.genonbeta.TrebleShot.object.FileShortcutObject;
import com.genonbeta.TrebleShot.object.WritablePathObject;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.framework.io.DocumentFile;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;

public class FileRenameDialog<T extends FileListAdapter.GenericFileHolder> extends AbstractSingleTextInputDialog {
    public static final int JOB_RENAME_FILES = 0;
    public static final String TAG = FileRenameDialog.class.getSimpleName();
    private List<T> mItemList;

    public interface OnFileRenameListener {
        void onFileRename(DocumentFile documentFile, String str);

        void onFileRenameCompleted(Context context);
    }

    public FileRenameDialog(final Context context, List<T> list, final OnFileRenameListener onFileRenameListener) {
        super(context);
        String str;
        ArrayList arrayList = new ArrayList();
        this.mItemList = arrayList;
        arrayList.addAll(list);
        setTitle(this.mItemList.size() > 1 ? R.string.text_renameMultipleItems : R.string.text_rename);
        EditText editText = getEditText();
        if (this.mItemList.size() > 1) {
            str = "%d";
        } else {
            str = ((FileListAdapter.GenericFileHolder) this.mItemList.get(0)).fileName;
        }
        editText.setText(str);
        setOnProceedClickListener((int) R.string.butn_rename, (AbstractFailureAwareDialog.OnProceedClickListener) new AbstractFailureAwareDialog.OnProceedClickListener() {
            public boolean onProceedClick(AlertDialog alertDialog) {
                final String obj = FileRenameDialog.this.getEditText().getText().toString();
                if (FileRenameDialog.this.getItemList().size() == 1) {
                    FileRenameDialog fileRenameDialog = FileRenameDialog.this;
                    if (fileRenameDialog.renameFile((FileListAdapter.GenericFileHolder) fileRenameDialog.getItemList().get(0), obj, onFileRenameListener)) {
                        OnFileRenameListener onFileRenameListener = onFileRenameListener;
                        if (onFileRenameListener != null) {
                            onFileRenameListener.onFileRenameCompleted(FileRenameDialog.this.getContext());
                        }
                        return true;
                    }
                }
                try {
                    String.format(obj, new Object[]{Integer.valueOf(FileRenameDialog.this.getItemList().size())});
                    new WorkerService.RunningTask() {
                        /* access modifiers changed from: protected */
                        public void onRun() {
                            String str;
                            int i = 0;
                            for (FileListAdapter.GenericFileHolder genericFileHolder : FileRenameDialog.this.getItemList()) {
                                publishStatusText(genericFileHolder.friendlyName);
                                String fileFormat = FileUtils.getFileFormat(genericFileHolder.file.getName());
                                if (fileFormat != null) {
                                    str = String.format(".%s", new Object[]{fileFormat});
                                } else {
                                    str = "";
                                }
                                FileRenameDialog.this.renameFile(genericFileHolder, String.format("%s%s", new Object[]{String.format(obj, new Object[]{Integer.valueOf(i)}), str}), onFileRenameListener);
                                i++;
                            }
                            if (onFileRenameListener != null) {
                                onFileRenameListener.onFileRenameCompleted(getService());
                            }
                        }
                    }.setTitle(context.getString(R.string.text_renameMultipleItems)).setIconRes(com.genonbeta.TrebleShot.R.drawable.ic_compare_arrows_white_24dp_static).run(context);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
    }

    public List<T> getItemList() {
        return this.mItemList;
    }

    public boolean renameFile(T t, String str, OnFileRenameListener onFileRenameListener) {
        try {
            if (t instanceof FileListAdapter.ShortcutDirectoryHolder) {
                FileShortcutObject shortcutObject = ((FileListAdapter.ShortcutDirectoryHolder) t).getShortcutObject();
                if (shortcutObject == null) {
                    return false;
                }
                shortcutObject.title = str;
                AppUtils.getDatabase(getContext()).publish((DatabaseObject) shortcutObject);
                return false;
            } else if (t instanceof FileListAdapter.WritablePathHolder) {
                WritablePathObject writablePathObject = ((FileListAdapter.WritablePathHolder) t).pathObject;
                if (writablePathObject == null) {
                    return false;
                }
                writablePathObject.title = str;
                AppUtils.getDatabase(getContext()).publish((DatabaseObject) writablePathObject);
                return false;
            } else if (!t.file.canWrite() || !t.file.renameTo(str)) {
                return false;
            } else {
                if (onFileRenameListener == null) {
                    return true;
                }
                onFileRenameListener.onFileRename(t.file, str);
                return true;
            }
        } catch (Exception unused) {
            return false;
        }
    }
}
