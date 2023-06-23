package com.genonbeta.TrebleShot;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.PreferenceUtils;
import com.genonbeta.TrebleShot.util.UpdateUtils;
import com.genonbeta.android.framework.preference.DbSharablePreferences;
import com.genonbeta.android.framework.preference.SuperPreferences;
import com.genonbeta.android.updatewithgithub.GitHubUpdater;
import com.kd.speedshare.R;

public class App extends Application {
    public static final String ACTION_REQUEST_PREFERENCES_SYNC = "com.genonbeta.intent.action.REQUEST_PREFERENCES_SYNC";
    public static final String TAG = App.class.getSimpleName();
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (intent != null && App.ACTION_REQUEST_PREFERENCES_SYNC.equals(intent.getAction())) {
                SharedPreferences weakManager = AppUtils.getDefaultPreferences(context).getWeakManager();
                if (weakManager instanceof DbSharablePreferences) {
                    ((DbSharablePreferences) weakManager).sync();
                }
            }
        }
    };

    public void onCreate() {
        super.onCreate();
        initializeSettings();
        getApplicationContext().registerReceiver(this.mReceiver, new IntentFilter(ACTION_REQUEST_PREFERENCES_SYNC));
        if (!Keyword.Flavor.googlePlay.equals(AppUtils.getBuildFlavor()) && !UpdateUtils.hasNewVersion(getApplicationContext()) && System.currentTimeMillis() - UpdateUtils.getLastTimeCheckedForUpdates(getApplicationContext()) >= 21600) {
            UpdateUtils.checkForUpdates(getApplicationContext(), UpdateUtils.getDefaultUpdater(getApplicationContext()), false, (GitHubUpdater.OnInfoAvailableListener) null);
        }
    }

    public void onTerminate() {
        super.onTerminate();
        getApplicationContext().unregisterReceiver(this.mReceiver);
    }

    private void initializeSettings() {
        SuperPreferences defaultLocalPreferences = AppUtils.getDefaultLocalPreferences(this);
        NetworkDevice localDevice = AppUtils.getLocalDevice(getApplicationContext());
        boolean contains = defaultLocalPreferences.contains("nsd_enabled");
        boolean contains2 = defaultLocalPreferences.contains("referral_version");
        boolean z = false;
        PreferenceManager.setDefaultValues(this, R.xml.preferences_defaults_main, false);
        if (!contains2) {
            defaultLocalPreferences.edit().putInt("referral_version", localDevice.versionNumber).apply();
        }
        if (!contains) {
            SharedPreferences.Editor edit = defaultLocalPreferences.edit();
            if (Build.VERSION.SDK_INT >= 19) {
                z = true;
            }
            edit.putBoolean("nsd_enabled", z).apply();
        }
        PreferenceUtils.syncDefaults(getApplicationContext());
        if (defaultLocalPreferences.contains("migrated_version")) {
            int i = defaultLocalPreferences.getInt("migrated_version", localDevice.versionNumber);
            if (i < localDevice.versionNumber) {
                if (i <= 67) {
                    AppUtils.getViewingPreferences(getApplicationContext()).edit().clear().apply();
                }
                defaultLocalPreferences.edit().putInt("migrated_version", localDevice.versionNumber).putInt("previously_migrated_version", i).apply();
                return;
            }
            return;
        }
        defaultLocalPreferences.edit().putInt("migrated_version", localDevice.versionNumber).apply();
    }
}
