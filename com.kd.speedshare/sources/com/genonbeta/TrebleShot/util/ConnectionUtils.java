package com.genonbeta.TrebleShot.util;

import android.content.Context;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.genonbeta.TrebleShot.adapter.NetworkDeviceListAdapter;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.ui.UIConnectionUtils;
import com.genonbeta.android.framework.util.Interrupter;
import com.google.firebase.analytics.FirebaseAnalytics;

public class ConnectionUtils {
    public static final String TAG = ConnectionUtils.class.getSimpleName();
    private ConnectivityManager mConnectivityManager = ((ConnectivityManager) getContext().getSystemService("connectivity"));
    private Context mContext;
    private HotspotUtils mHotspotUtils = HotspotUtils.getInstance(getContext());
    private LocationManager mLocationManager = ((LocationManager) getContext().getApplicationContext().getSystemService(FirebaseAnalytics.Param.LOCATION));
    private WifiManager mWifiManager = ((WifiManager) getContext().getApplicationContext().getSystemService("wifi"));

    public interface ConnectionCallback {
        boolean onTimePassed(int i, long j);
    }

    ConnectionUtils(Context context) {
        this.mContext = context;
    }

    public static ConnectionUtils getInstance(Context context) {
        return new ConnectionUtils(context);
    }

    public static String getCleanNetworkName(String str) {
        return str == null ? "" : str.replace("\"", "");
    }

    public boolean canAccessLocation() {
        return hasLocationPermission(getContext()) && isLocationServiceEnabled();
    }

    public boolean canReadScanResults() {
        return getWifiManager().isWifiEnabled() && (Build.VERSION.SDK_INT < 23 || canAccessLocation());
    }

    public boolean disableCurrentNetwork() {
        return isConnectedToAnyNetwork() && getWifiManager().disconnect() && getWifiManager().disableNetwork(getWifiManager().getConnectionInfo().getNetworkId());
    }

    public String establishHotspotConnection(Interrupter interrupter, NetworkDeviceListAdapter.HotspotNetwork hotspotNetwork, ConnectionCallback connectionCallback) {
        String convertInet4Address;
        NetworkDeviceListAdapter.HotspotNetwork hotspotNetwork2 = hotspotNetwork;
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            int currentTimeMillis2 = (int) (System.currentTimeMillis() - currentTimeMillis);
            if (currentTimeMillis2 >= 10000 && !z) {
                disableCurrentNetwork();
                z = true;
                z3 = false;
            }
            if (currentTimeMillis2 >= 20000 && !z2) {
                disableCurrentNetwork();
                z2 = true;
                z3 = false;
            }
            if (!getWifiManager().isWifiEnabled()) {
                Log.d(TAG, "establishHotspotConnection(): Wifi is off. Making a request to turn it on");
                if (!getWifiManager().setWifiEnabled(true)) {
                    Log.d(TAG, "establishHotspotConnection(): Wifi was off. The request has failed. Exiting.");
                    break;
                }
            } else if (isConnectedToNetwork(hotspotNetwork2) || z3) {
                Log.d(TAG, "establishHotspotConnection(): Waiting to connect to the server");
                DhcpInfo dhcpInfo = getWifiManager().getDhcpInfo();
                if (dhcpInfo == null || dhcpInfo.gateway == 0) {
                    Log.d(TAG, "establishHotspotConnection(): No DHCP provided. Looping...");
                } else {
                    convertInet4Address = NetworkUtils.convertInet4Address(dhcpInfo.gateway);
                    Log.d(TAG, String.format("establishHotspotConnection(): DhcpInfo: gateway: %s dns1: %s dns2: %s ipAddr: %s serverAddr: %s netMask: %s", new Object[]{convertInet4Address, NetworkUtils.convertInet4Address(dhcpInfo.dns1), NetworkUtils.convertInet4Address(dhcpInfo.dns2), NetworkUtils.convertInet4Address(dhcpInfo.ipAddress), NetworkUtils.convertInet4Address(dhcpInfo.serverAddress), NetworkUtils.convertInet4Address(dhcpInfo.netmask)}));
                    String str = TAG;
                    Log.d(str, "establishHotspotConnection(): There is DHCP info provided waiting to reach the address " + convertInet4Address);
                    if (UIConnectionUtils.isOSAbove(28)) {
                        if (NetworkUtils.ping(convertInet4Address, 1000)) {
                            break;
                        }
                        Log.d(TAG, "establishHotspotConnection(): Connection check ping failed");
                    } else {
                        if (NetworkUtils.ping(convertInet4Address)) {
                            break;
                        }
                        Log.d(TAG, "establishHotspotConnection(): Connection check ping failed");
                    }
                }
            } else {
                Log.d(TAG, "establishHotspotConnection(): Requested network toggle");
                toggleConnection(hotspotNetwork2);
                z3 = true;
            }
            if (connectionCallback.onTimePassed(1000, (long) currentTimeMillis2) || interrupter.interrupted()) {
                Log.d(TAG, "establishHotspotConnection(): Timed out or onTimePassed returned true. Exiting...");
            } else {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        Log.d(TAG, "establishHotspotConnection(): AP has been reached. Returning OK state.");
        return convertInet4Address;
        return null;
    }

    public boolean hasLocationPermission(Context context) {
        return ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    public Context getContext() {
        return this.mContext;
    }

    public ConnectivityManager getConnectivityManager() {
        return this.mConnectivityManager;
    }

    public HotspotUtils getHotspotUtils() {
        return this.mHotspotUtils;
    }

    public LocationManager getLocationManager() {
        return this.mLocationManager;
    }

    public WifiManager getWifiManager() {
        return this.mWifiManager;
    }

    public boolean isConnectionSelfNetwork() {
        WifiInfo connectionInfo = getWifiManager().getConnectionInfo();
        return connectionInfo != null && getCleanNetworkName(connectionInfo.getSSID()).startsWith(AppConfig.PREFIX_ACCESS_POINT);
    }

    public boolean isConnectedToAnyNetwork() {
        NetworkInfo activeNetworkInfo = getConnectivityManager().getActiveNetworkInfo();
        if (activeNetworkInfo == null || activeNetworkInfo.getType() != 1 || !activeNetworkInfo.isConnected()) {
            return false;
        }
        return true;
    }

    public boolean isConnectedToNetwork(NetworkDeviceListAdapter.HotspotNetwork hotspotNetwork) {
        if (!isConnectedToAnyNetwork()) {
            return false;
        }
        if (hotspotNetwork.BSSID != null) {
            return hotspotNetwork.BSSID.equals(getWifiManager().getConnectionInfo().getBSSID());
        }
        return hotspotNetwork.SSID.equals(getCleanNetworkName(getWifiManager().getConnectionInfo().getSSID()));
    }

    public boolean isLocationServiceEnabled() {
        return this.mLocationManager.isProviderEnabled("network");
    }

    public boolean isMobileDataActive() {
        return this.mConnectivityManager.getActiveNetworkInfo() != null && this.mConnectivityManager.getActiveNetworkInfo().getType() == 0;
    }

    public boolean toggleConnection(NetworkDeviceListAdapter.HotspotNetwork hotspotNetwork) {
        if (!isConnectedToNetwork(hotspotNetwork)) {
            if (isConnectedToAnyNetwork()) {
                disableCurrentNetwork();
            }
            WifiConfiguration wifiConfiguration = new WifiConfiguration();
            wifiConfiguration.SSID = String.format("\"%s\"", new Object[]{hotspotNetwork.SSID});
            int i = hotspotNetwork.keyManagement;
            if (i == 0) {
                wifiConfiguration.allowedKeyManagement.set(0);
            } else if (i == 1) {
                wifiConfiguration.allowedKeyManagement.set(0);
                wifiConfiguration.allowedAuthAlgorithms.set(0);
                wifiConfiguration.allowedAuthAlgorithms.set(1);
                wifiConfiguration.allowedGroupCiphers.set(0);
                if (hotspotNetwork.password != null && hotspotNetwork.password.matches("[0-9A-Fa-f]*")) {
                    wifiConfiguration.wepKeys[0] = hotspotNetwork.password;
                }
            } else if (i == 2) {
                wifiConfiguration.allowedKeyManagement.set(0);
                wifiConfiguration.allowedAuthAlgorithms.set(0);
                wifiConfiguration.allowedAuthAlgorithms.set(1);
                wifiConfiguration.allowedGroupCiphers.set(1);
                if (hotspotNetwork.password != null && hotspotNetwork.password.matches("[0-9A-Fa-f]*")) {
                    wifiConfiguration.wepKeys[0] = hotspotNetwork.password;
                }
            } else if (i == 3) {
                wifiConfiguration.allowedKeyManagement.set(1);
                wifiConfiguration.allowedAuthAlgorithms.set(0);
                wifiConfiguration.allowedProtocols.set(0);
                wifiConfiguration.allowedPairwiseCiphers.set(1);
                wifiConfiguration.allowedGroupCiphers.set(2);
                if (hotspotNetwork.password == null || !hotspotNetwork.password.matches("[0-9A-Fa-f]{64}")) {
                    wifiConfiguration.preSharedKey = '\"' + hotspotNetwork.password + '\"';
                } else {
                    wifiConfiguration.preSharedKey = hotspotNetwork.password;
                }
            } else if (i == 4) {
                wifiConfiguration.allowedKeyManagement.set(1);
                wifiConfiguration.allowedAuthAlgorithms.set(0);
                wifiConfiguration.allowedProtocols.set(1);
                wifiConfiguration.allowedPairwiseCiphers.set(2);
                wifiConfiguration.allowedGroupCiphers.set(3);
                wifiConfiguration.allowedProtocols.set(1);
                if (hotspotNetwork.password == null || !hotspotNetwork.password.matches("[0-9A-Fa-f]{64}")) {
                    wifiConfiguration.preSharedKey = '\"' + hotspotNetwork.password + '\"';
                } else {
                    wifiConfiguration.preSharedKey = hotspotNetwork.password;
                }
            }
            try {
                int addNetwork = getWifiManager().addNetwork(wifiConfiguration);
                if (UIConnectionUtils.isOSAbove(23)) {
                    for (WifiConfiguration next : getWifiManager().getConfiguredNetworks()) {
                        if (next.SSID != null && next.SSID.equalsIgnoreCase(wifiConfiguration.SSID)) {
                            getWifiManager().disconnect();
                            getWifiManager().enableNetwork(next.networkId, true);
                            return getWifiManager().reconnect();
                        }
                    }
                } else {
                    getWifiManager().disconnect();
                    getWifiManager().enableNetwork(addNetwork, true);
                    return getWifiManager().reconnect();
                }
            } catch (Exception unused) {
                disableCurrentNetwork();
                return false;
            }
        }
        disableCurrentNetwork();
        return false;
    }
}
