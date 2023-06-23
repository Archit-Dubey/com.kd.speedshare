package com.genonbeta.TrebleShot.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.PreferenceUtils;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.kd.speedshare.R;

public class PreferencesActivity extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_preferences);
        MobileAds.initialize((Context) this, (OnInitializationCompleteListener) new OnInitializationCompleteListener() {
            public void onInitializationComplete(InitializationStatus initializationStatus) {
            }
        });
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            onBackPressed();
            return true;
        } else if (itemId != R.id.actions_preference_main_reset_to_defaults) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            new AlertDialog.Builder(this).setTitle((int) R.string.ques_resetToDefault).setMessage((int) R.string.text_resetPreferencesToDefaultSummary).setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_proceed, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    AppUtils.getDefaultPreferences(PreferencesActivity.this.getApplicationContext()).edit().clear().apply();
                    AppUtils.getDefaultLocalPreferences(PreferencesActivity.this.getApplicationContext()).edit().clear().apply();
                    PreferencesActivity.this.finish();
                }
            }).show();
            return true;
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.actions_preferences_main, menu);
        return super.onCreateOptionsMenu(menu);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        PreferenceUtils.syncPreferences((SharedPreferences) AppUtils.getDefaultLocalPreferences(this), AppUtils.getDefaultPreferences(this).getWeakManager());
    }
}
