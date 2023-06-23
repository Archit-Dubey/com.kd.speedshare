package com.genonbeta.TrebleShot.service;

import android.content.Intent;
import android.os.IBinder;
import com.genonbeta.TrebleShot.app.Service;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.util.AddressedInterface;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.genonbeta.TrebleShot.util.NetworkDeviceScanner;
import com.genonbeta.TrebleShot.util.NetworkUtils;
import com.genonbeta.android.database.DatabaseObject;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.List;

public class DeviceScannerService extends Service implements NetworkDeviceScanner.ScannerHandler {
    public static final String ACTION_DEVICE_SCAN_COMPLETED = "genonbeta.intent.action.DEVICE_SCAN_COMPLETED";
    public static final String ACTION_SCAN_DEVICES = "genonbeta.intent.action.SCAN_DEVICES";
    public static final String ACTION_SCAN_STARTED = "genonbeta.intent.action.SCAN_STARTED";
    public static final String EXTRA_SCAN_STATUS = "genonbeta.intent.extra.SCAN_STATUS";
    public static final String SCANNER_NOT_AVAILABLE = "genonbeta.intent.status.SCANNER_NOT_AVAILABLE";
    public static final String STATUS_NO_NETWORK_INTERFACE = "genonbeta.intent.status.NO_NETWORK_INTERFACE";
    public static final String STATUS_OK = "genonbeta.intent.status.OK";
    private static NetworkDeviceScanner mDeviceScanner = new NetworkDeviceScanner();

    public IBinder onBind(Intent intent) {
        return null;
    }

    public static NetworkDeviceScanner getDeviceScanner() {
        return mDeviceScanner;
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        String str;
        super.onStartCommand(intent, i, i2);
        if (intent == null || !AppUtils.checkRunningConditions(this) || !ACTION_SCAN_DEVICES.equals(intent.getAction())) {
            return 2;
        }
        if (mDeviceScanner.isScannerAvailable()) {
            List<AddressedInterface> interfaces = NetworkUtils.getInterfaces(true, AppConfig.DEFAULT_DISABLED_INTERFACES);
            NetworkDevice localDevice = AppUtils.getLocalDevice(getApplicationContext());
            getDatabase().publish((DatabaseObject) localDevice);
            for (AddressedInterface next : interfaces) {
                getDatabase().publish((DatabaseObject) new NetworkDevice.Connection(next.getNetworkInterface().getDisplayName(), next.getAssociatedAddress(), localDevice.deviceId, System.currentTimeMillis()));
            }
            str = mDeviceScanner.scan(interfaces, this) ? STATUS_OK : STATUS_NO_NETWORK_INTERFACE;
        } else {
            str = SCANNER_NOT_AVAILABLE;
        }
        getApplicationContext().sendBroadcast(new Intent(ACTION_SCAN_STARTED).putExtra(EXTRA_SCAN_STATUS, str));
        return 1;
    }

    public void onDeviceFound(InetAddress inetAddress, NetworkInterface networkInterface) {
        getDatabase().publish((DatabaseObject) new NetworkDevice.Connection(networkInterface.getDisplayName(), inetAddress.getHostAddress(), "-", System.currentTimeMillis()));
        NetworkDeviceLoader.load(getDatabase(), inetAddress.getHostAddress(), (NetworkDeviceLoader.OnDeviceRegisteredListener) null);
    }

    public void onThreadsCompleted() {
        getApplicationContext().sendBroadcast(new Intent(ACTION_DEVICE_SCAN_COMPLETED));
    }

    public void onDestroy() {
        super.onDestroy();
        getDeviceScanner().interrupt();
    }
}
