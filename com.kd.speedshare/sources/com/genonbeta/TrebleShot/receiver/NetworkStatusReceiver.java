package com.genonbeta.TrebleShot.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.NetworkInfo;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.service.DeviceScannerService;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.HotspotUtils;

public class NetworkStatusReceiver extends BroadcastReceiver {
    public static final String WIFI_AP_STATE_CHANGED = "android.net.wifi.WIFI_AP_STATE_CHANGED";

    public void onReceive(Context context, Intent intent) {
        SharedPreferences sharedPreferences = getSharedPreferences(context);
        if (WIFI_AP_STATE_CHANGED.equals(intent.getAction())) {
            HotspotUtils instance = HotspotUtils.getInstance(context);
            if (1 == intent.getIntExtra("wifi_state", -1) % 10) {
                instance.unloadPreviousConfig();
            }
        }
        if (intent.hasExtra("networkInfo")) {
            evaluateTheCondition((NetworkInfo) intent.getParcelableExtra("networkInfo"), context, sharedPreferences);
        }
    }

    /* access modifiers changed from: protected */
    public void evaluateTheCondition(NetworkInfo networkInfo, final Context context, SharedPreferences sharedPreferences) {
        if (sharedPreferences.getBoolean("allow_autoconnect", false) && networkInfo.isConnected()) {
            AppUtils.startForegroundService(context, new Intent(context, CommunicationService.class));
        }
        if (sharedPreferences.getBoolean("scan_devices_auto", false) && networkInfo.isConnected()) {
            new Thread() {
                public void run() {
                    super.run();
                    try {
                        Thread.sleep(1700);
                        context.startService(new Intent(context, DeviceScannerService.class).setAction(DeviceScannerService.ACTION_SCAN_DEVICES));
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }.start();
        }
    }

    /* access modifiers changed from: protected */
    public SharedPreferences getSharedPreferences(Context context) {
        return AppUtils.getDefaultPreferences(context);
    }
}
