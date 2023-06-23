package com.genonbeta.TrebleShot.activity;

import android.os.Bundle;
import android.view.MenuItem;
import com.genonbeta.TrebleShot.app.Activity;
import com.kd.speedshare.R;

public class ThirdPartyLibrariesActivity extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_third_party_libraries);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }
}
