package com.genonbeta.TrebleShot.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.adapter.FileListAdapter;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.exception.NotReadyException;
import com.genonbeta.TrebleShot.fragment.FileExplorerFragment;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.framework.io.DocumentFile;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import com.kd.speedshare.R;

public class FilePickerActivity extends Activity {
    public static final String ACTION_CHOOSE_DIRECTORY = "com.genonbeta.intent.action.CHOOSE_DIRECTORY";
    public static final String ACTION_CHOOSE_FILE = "com.genonbeta.intent.action.CHOOSE_FILE";
    public static final String EXTRA_ACTIVITY_TITLE = "activityTitle";
    public static final String EXTRA_CHOSEN_PATH = "chosenPath";
    public static final String EXTRA_START_PATH = "startPath";
    private FloatingActionButton mFAB;
    /* access modifiers changed from: private */
    public FileExplorerFragment mFileExplorerFragment;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_filepicker);
        this.mFileExplorerFragment = (FileExplorerFragment) getSupportFragmentManager().findFragmentById(R.id.activitiy_filepicker_fragment_files);
        this.mFAB = (FloatingActionButton) findViewById(R.id.content_fab);
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        boolean z;
        super.onStart();
        if (getIntent() != null) {
            if (getIntent() == null || getSupportActionBar() == null) {
                z = false;
            } else {
                getSupportActionBar().setHomeAsUpIndicator((int) R.drawable.ic_close_white_24dp);
                getSupportActionBar().setDisplayHomeAsUpEnabled(true);
                z = getIntent().hasExtra(EXTRA_ACTIVITY_TITLE);
                if (z) {
                    getSupportActionBar().setTitle((CharSequence) getIntent().getStringExtra(EXTRA_ACTIVITY_TITLE));
                }
            }
            if (ACTION_CHOOSE_DIRECTORY.equals(getIntent().getAction())) {
                if (getSupportActionBar() != null) {
                    if (!z) {
                        getSupportActionBar().setTitle((int) R.string.text_chooseFolder);
                    } else {
                        getSupportActionBar().setSubtitle((int) R.string.text_chooseFolder);
                    }
                }
                ((FileListAdapter) this.mFileExplorerFragment.getAdapter()).setConfiguration(true, false, (String) null);
                this.mFileExplorerFragment.refreshList();
                RecyclerView listView = this.mFileExplorerFragment.getListView();
                listView.setPadding(0, 0, 0, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                listView.setClipToPadding(false);
                this.mFAB.show();
                this.mFAB.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        DocumentFile path = ((FileListAdapter) FilePickerActivity.this.mFileExplorerFragment.getAdapter()).getPath();
                        if (path == null || !path.canWrite()) {
                            Snackbar.make(view, (int) R.string.mesg_currentPathUnavailable, -1).show();
                        } else {
                            FilePickerActivity.this.finishWithResult(path);
                        }
                    }
                });
            } else if (ACTION_CHOOSE_FILE.equals(getIntent().getAction())) {
                if (getSupportActionBar() != null) {
                    if (!z) {
                        getSupportActionBar().setTitle((int) R.string.text_chooseFile);
                    } else {
                        getSupportActionBar().setSubtitle((int) R.string.text_chooseFolder);
                    }
                }
                this.mFileExplorerFragment.setLayoutClickListener(new EditableListFragment.LayoutClickListener<GroupEditableListAdapter.GroupViewHolder>() {
                    public boolean onLayoutClick(EditableListFragment editableListFragment, GroupEditableListAdapter.GroupViewHolder groupViewHolder, boolean z) {
                        if (z) {
                            return false;
                        }
                        try {
                            FileListAdapter.GenericFileHolder genericFileHolder = (FileListAdapter.GenericFileHolder) ((FileListAdapter) FilePickerActivity.this.mFileExplorerFragment.getAdapter()).getItem(groupViewHolder.getAdapterPosition());
                            if (genericFileHolder instanceof FileListAdapter.FileHolder) {
                                FilePickerActivity.this.finishWithResult(((FileListAdapter.FileHolder) genericFileHolder).file);
                                return true;
                            }
                        } catch (NotReadyException e) {
                            e.printStackTrace();
                        }
                        return false;
                    }
                });
            } else {
                finish();
            }
            if (!isFinishing() && getIntent().hasExtra(EXTRA_START_PATH)) {
                try {
                    this.mFileExplorerFragment.goPath(FileUtils.fromUri(this, Uri.parse(getIntent().getStringExtra(EXTRA_START_PATH))));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } else {
            finish();
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    public void onBackPressed() {
        FileExplorerFragment fileExplorerFragment = this.mFileExplorerFragment;
        if (fileExplorerFragment == null || !fileExplorerFragment.onBackPressed()) {
            super.onBackPressed();
        }
    }

    /* access modifiers changed from: private */
    public void finishWithResult(DocumentFile documentFile) {
        setResult(-1, new Intent(ACTION_CHOOSE_DIRECTORY).putExtra(EXTRA_CHOSEN_PATH, documentFile.getUri()));
        finish();
    }
}
