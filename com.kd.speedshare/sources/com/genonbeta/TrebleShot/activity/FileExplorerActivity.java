package com.genonbeta.TrebleShot.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.fragment.FileExplorerFragment;
import com.genonbeta.TrebleShot.ui.callback.PowerfulActionModeSupport;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.kd.speedshare.R;
import java.io.FileNotFoundException;

public class FileExplorerActivity extends Activity implements PowerfulActionModeSupport {
    public static final String EXTRA_FILE_PATH = "filePath";
    private PowerfulActionMode mActionMode;
    private FileExplorerFragment mFragmentFileExplorer;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_file_explorer);
        final Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        this.mActionMode = (PowerfulActionMode) findViewById(R.id.activity_file_explorer_action_mode);
        this.mFragmentFileExplorer = (FileExplorerFragment) getSupportFragmentManager().findFragmentById(R.id.activity_file_explorer_fragment_files);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setHomeAsUpIndicator((int) R.drawable.ic_close_white_24dp);
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        this.mActionMode.setOnSelectionTaskListener(new PowerfulActionMode.OnSelectionTaskListener() {
            public void onSelectionTask(boolean z, PowerfulActionMode powerfulActionMode) {
                toolbar.setVisibility(!z ? 0 : 8);
            }
        });
        checkRequestedPath(getIntent());
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    public void onBackPressed() {
        if (this.mFragmentFileExplorer.onBackPressed()) {
            return;
        }
        if (this.mActionMode.hasActive((PowerfulActionMode.Callback) this.mFragmentFileExplorer.getSelectionCallback())) {
            this.mActionMode.finish((PowerfulActionMode.Callback) this.mFragmentFileExplorer.getSelectionCallback());
        } else {
            super.onBackPressed();
        }
    }

    public void checkRequestedPath(Intent intent) {
        if (intent != null) {
            if (intent.hasExtra(EXTRA_FILE_PATH)) {
                try {
                    openFolder(FileUtils.fromUri(getApplicationContext(), (Uri) intent.getParcelableExtra(EXTRA_FILE_PATH)));
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                }
            } else {
                openFolder((DocumentFile) null);
            }
        }
    }

    public PowerfulActionMode getPowerfulActionMode() {
        return this.mActionMode;
    }

    private void openFolder(DocumentFile documentFile) {
        if (documentFile != null) {
            this.mFragmentFileExplorer.requestPath(documentFile);
        }
    }
}
