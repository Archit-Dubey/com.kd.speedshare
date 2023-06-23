package com.genonbeta.TrebleShot.activity;

import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.fragment.TextStreamListFragment;
import com.genonbeta.TrebleShot.ui.callback.PowerfulActionModeSupport;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.kd.speedshare.R;

public class TextStreamActivity extends Activity implements PowerfulActionModeSupport {
    private PowerfulActionMode mActionMode;
    private TextStreamListFragment mStreamListFragment;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_text_stream);
        final Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        this.mActionMode = (PowerfulActionMode) findViewById(R.id.action_mode);
        this.mStreamListFragment = (TextStreamListFragment) getSupportFragmentManager().findFragmentById(R.id.activity_text_stream_fragment);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setHomeAsUpIndicator((int) R.drawable.ic_close_white_24dp);
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        this.mActionMode.setOnSelectionTaskListener(new PowerfulActionMode.OnSelectionTaskListener() {
            public void onSelectionTask(boolean z, PowerfulActionMode powerfulActionMode) {
                toolbar.setVisibility(!z ? 0 : 8);
            }
        });
    }

    public void onBackPressed() {
        if (this.mActionMode.hasActive((PowerfulActionMode.Callback) this.mStreamListFragment.getSelectionCallback())) {
            this.mActionMode.finish((PowerfulActionMode.Callback) this.mStreamListFragment.getSelectionCallback());
        } else {
            super.onBackPressed();
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    public PowerfulActionMode getPowerfulActionMode() {
        return this.mActionMode;
    }
}
