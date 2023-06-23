package com.genonbeta.TrebleShot.activity;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.task.OrganizeShareRunningTask;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.object.Selectable;
import com.genonbeta.android.framework.ui.callback.SnackbarSupport;
import com.google.android.material.snackbar.Snackbar;
import com.kd.speedshare.R;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

public class ShareActivity extends Activity implements SnackbarSupport, Activity.OnPreloadArgumentWatcher, WorkerService.OnAttachListener {
    public static final String ACTION_SEND = "genonbeta.intent.action.TREBLESHOT_SEND";
    public static final String ACTION_SEND_MULTIPLE = "genonbeta.intent.action.TREBLESHOT_SEND_MULTIPLE";
    public static final String EXTRA_DEVICE_ID = "extraDeviceId";
    public static final String EXTRA_FILENAME_LIST = "extraFileNames";
    public static final String EXTRA_GROUP_ID = "extraGroupId";
    public static final String TAG = "ShareActivity";
    private Button mCancelButton;
    private List<CharSequence> mFileNames;
    private List<Uri> mFileUris;
    private Bundle mPreLoadingBundle = new Bundle();
    private ProgressBar mProgressBar;
    /* access modifiers changed from: private */
    public TextView mProgressTextLeft;
    /* access modifiers changed from: private */
    public TextView mProgressTextRight;
    /* access modifiers changed from: private */
    public OrganizeShareRunningTask mTask;
    /* access modifiers changed from: private */
    public TextView mTextMain;

    public void onAttachedToTask(WorkerService.RunningTask runningTask) {
    }

    public static void createFolderStructure(DocumentFile documentFile, String str, List<SelectableStream> list, OrganizeShareRunningTask organizeShareRunningTask) {
        String str2;
        DocumentFile[] listFiles = documentFile.listFiles();
        if (listFiles != null) {
            if (organizeShareRunningTask.getAnchorListener() != null) {
                ((ShareActivity) organizeShareRunningTask.getAnchorListener()).getProgressBar().setMax(((ShareActivity) organizeShareRunningTask.getAnchorListener()).getProgressBar().getMax() + listFiles.length);
            }
            int length = listFiles.length;
            int i = 0;
            while (i < length) {
                DocumentFile documentFile2 = listFiles[i];
                if (organizeShareRunningTask.getAnchorListener() != null) {
                    ((ShareActivity) organizeShareRunningTask.getAnchorListener()).getProgressBar().setProgress(((ShareActivity) organizeShareRunningTask.getAnchorListener()).getProgressBar().getProgress() + 1);
                }
                if (!organizeShareRunningTask.getInterrupter().interrupted()) {
                    if (documentFile2.isDirectory()) {
                        StringBuilder sb = new StringBuilder();
                        if (str != null) {
                            str2 = str + File.separator;
                        } else {
                            str2 = null;
                        }
                        sb.append(str2);
                        sb.append(documentFile2.getName());
                        createFolderStructure(documentFile2, sb.toString(), list, organizeShareRunningTask);
                    } else {
                        try {
                            list.add(new SelectableStream(documentFile2, str));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_share);
        ArrayList<CharSequence> arrayList = null;
        String action = getIntent() != null ? getIntent().getAction() : null;
        if (!ACTION_SEND.equals(action) && !ACTION_SEND_MULTIPLE.equals(action) && !"android.intent.action.SEND".equals(action) && !"android.intent.action.SEND_MULTIPLE".equals(action)) {
            Toast.makeText(this, R.string.mesg_formatNotSupported, 0).show();
            finish();
        } else if (getIntent().hasExtra("android.intent.extra.TEXT")) {
            startActivity(new Intent(this, TextEditorActivity.class).setAction(TextEditorActivity.ACTION_EDIT_TEXT).putExtra(TextEditorActivity.EXTRA_TEXT_INDEX, getIntent().getStringExtra("android.intent.extra.TEXT")));
            finish();
        } else {
            ArrayList arrayList2 = new ArrayList();
            if (ACTION_SEND_MULTIPLE.equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("android.intent.extra.STREAM");
                if (getIntent().hasExtra(EXTRA_FILENAME_LIST)) {
                    arrayList = getIntent().getCharSequenceArrayListExtra(EXTRA_FILENAME_LIST);
                }
                arrayList2.addAll(parcelableArrayListExtra);
            } else {
                arrayList2.add((Uri) getIntent().getParcelableExtra("android.intent.extra.STREAM"));
                if (getIntent().hasExtra(EXTRA_FILENAME_LIST)) {
                    arrayList = new ArrayList<>();
                    arrayList.add(getIntent().getStringExtra(EXTRA_FILENAME_LIST));
                }
            }
            if (arrayList2.size() == 0) {
                Toast.makeText(this, R.string.text_listEmpty, 0).show();
                finish();
                return;
            }
            this.mProgressBar = (ProgressBar) findViewById(R.id.progressBar);
            this.mProgressTextLeft = (TextView) findViewById(R.id.text1);
            this.mProgressTextRight = (TextView) findViewById(R.id.text2);
            this.mTextMain = (TextView) findViewById(R.id.textMain);
            Button button = (Button) findViewById(R.id.cancelButton);
            this.mCancelButton = button;
            button.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    if (ShareActivity.this.mTask != null) {
                        ShareActivity.this.mTask.getInterrupter().interrupt(true);
                    }
                }
            });
            this.mFileUris = arrayList2;
            this.mFileNames = arrayList;
            checkForTasks();
        }
    }

    /* access modifiers changed from: protected */
    public void onPreviousRunningTask(WorkerService.RunningTask runningTask) {
        super.onPreviousRunningTask(runningTask);
        if (runningTask instanceof OrganizeShareRunningTask) {
            OrganizeShareRunningTask organizeShareRunningTask = (OrganizeShareRunningTask) runningTask;
            this.mTask = organizeShareRunningTask;
            organizeShareRunningTask.setAnchorListener(this);
            return;
        }
        OrganizeShareRunningTask organizeShareRunningTask2 = new OrganizeShareRunningTask(this.mFileUris, this.mFileNames);
        this.mTask = organizeShareRunningTask2;
        organizeShareRunningTask2.setTitle(getString(R.string.mesg_organizingFiles)).setAnchorListener(this).setContentIntent(this, getIntent()).run(this);
        attachRunningTask(this.mTask);
    }

    public Snackbar createSnackbar(int i, Object... objArr) {
        return Snackbar.make(getWindow().getDecorView(), (CharSequence) getString(i, objArr), 0);
    }

    public ProgressBar getProgressBar() {
        return this.mProgressBar;
    }

    public Bundle passPreLoadingArguments() {
        return this.mPreLoadingBundle;
    }

    public void updateProgress(final int i, final int i2) {
        if (!isFinishing()) {
            runOnUiThread(new Runnable() {
                public void run() {
                    ShareActivity.this.mProgressTextLeft.setText(String.valueOf(i2));
                    ShareActivity.this.mProgressTextRight.setText(String.valueOf(i));
                }
            });
            this.mProgressBar.setProgress(i2);
            this.mProgressBar.setMax(i);
        }
    }

    public void updateText(WorkerService.RunningTask runningTask, final String str) {
        if (!isFinishing()) {
            runningTask.publishStatusText(str);
            runOnUiThread(new Runnable() {
                public void run() {
                    ShareActivity.this.mTextMain.setText(str);
                }
            });
        }
    }

    public static class SelectableStream implements Selectable {
        private String mDirectory;
        private DocumentFile mFile;
        private String mFriendlyName;
        private boolean mSelected;

        public SelectableStream(DocumentFile documentFile, String str) {
            this.mSelected = true;
            this.mFile = documentFile;
            this.mDirectory = str;
            this.mFriendlyName = documentFile.getName();
        }

        public SelectableStream(Context context, Uri uri, String str) throws FileNotFoundException {
            this(FileUtils.fromUri(context, uri), str);
        }

        public String getDirectory() {
            return this.mDirectory;
        }

        public DocumentFile getDocumentFile() {
            return this.mFile;
        }

        public String getSelectableTitle() {
            return this.mFriendlyName;
        }

        public boolean isSelectableSelected() {
            return this.mSelected;
        }

        public void setFriendlyName(String str) {
            this.mFriendlyName = str;
        }

        public boolean setSelectableSelected(boolean z) {
            this.mSelected = z;
            return true;
        }
    }
}
