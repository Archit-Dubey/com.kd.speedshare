package com.genonbeta.TrebleShot.util;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class HotspotUtils {
    private static final String TAG = "HotspotUtils";
    private static HotspotUtils mInstance;
    private WifiManager mWifiManager;

    public abstract boolean disable();

    public abstract boolean enable();

    public abstract boolean enableConfigured(String str, String str2);

    public abstract WifiConfiguration getConfiguration();

    public abstract WifiConfiguration getPreviousConfig();

    public abstract boolean isEnabled();

    public abstract boolean isStarted();

    public abstract boolean unloadPreviousConfig();

    private HotspotUtils(Context context) {
        this.mWifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    public static HotspotUtils getInstance(Context context) {
        if (mInstance == null) {
            mInstance = Build.VERSION.SDK_INT >= 26 ? new OreoAPI(context) : new HackAPI(context);
        }
        return mInstance;
    }

    /* access modifiers changed from: private */
    public static Object invokeSilently(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            Log.e(TAG, "exception in invoking methods: " + method.getName() + "(): " + e.getMessage());
            return null;
        }
    }

    public static boolean isSupported() {
        return Build.VERSION.SDK_INT >= 26 || HackAPI.supported();
    }

    public WifiManager getWifiManager() {
        return this.mWifiManager;
    }

    public static class OreoAPI extends HotspotUtils {
        /* access modifiers changed from: private */
        public WifiManager.LocalOnlyHotspotCallback mCallback;
        /* access modifiers changed from: private */
        public WifiManager.LocalOnlyHotspotReservation mHotspotReservation;

        private OreoAPI(Context context) {
            super(context);
        }

        public boolean disable() {
            WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation = this.mHotspotReservation;
            if (localOnlyHotspotReservation == null) {
                return false;
            }
            localOnlyHotspotReservation.close();
            this.mHotspotReservation = null;
            return true;
        }

        public boolean enable() {
            try {
                getWifiManager().startLocalOnlyHotspot(new WifiManager.LocalOnlyHotspotCallback() {
                    public void onStarted(WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation) {
                        super.onStarted(localOnlyHotspotReservation);
                        WifiManager.LocalOnlyHotspotReservation unused = OreoAPI.this.mHotspotReservation = localOnlyHotspotReservation;
                        if (OreoAPI.this.mCallback != null) {
                            OreoAPI.this.mCallback.onStarted(localOnlyHotspotReservation);
                        }
                    }

                    public void onStopped() {
                        super.onStopped();
                        WifiManager.LocalOnlyHotspotReservation unused = OreoAPI.this.mHotspotReservation = null;
                        if (OreoAPI.this.mCallback != null) {
                            OreoAPI.this.mCallback.onStopped();
                        }
                    }

                    public void onFailed(int i) {
                        super.onFailed(i);
                        WifiManager.LocalOnlyHotspotReservation unused = OreoAPI.this.mHotspotReservation = null;
                        if (OreoAPI.this.mCallback != null) {
                            OreoAPI.this.mCallback.onFailed(i);
                        }
                    }
                }, new Handler(Looper.myLooper()));
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }

        public WifiConfiguration getConfiguration() {
            WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation = this.mHotspotReservation;
            if (localOnlyHotspotReservation == null) {
                return null;
            }
            return localOnlyHotspotReservation.getWifiConfiguration();
        }

        public WifiConfiguration getPreviousConfig() {
            return getConfiguration();
        }

        public boolean enableConfigured(String str, String str2) {
            return enable();
        }

        public boolean isEnabled() {
            return HackAPI.enabled(getWifiManager());
        }

        public boolean isStarted() {
            return this.mHotspotReservation != null;
        }

        public void setSecondaryCallback(WifiManager.LocalOnlyHotspotCallback localOnlyHotspotCallback) {
            this.mCallback = localOnlyHotspotCallback;
        }

        public boolean unloadPreviousConfig() {
            return this.mHotspotReservation != null;
        }
    }

    public static class HackAPI extends HotspotUtils {
        private static Method getWifiApConfiguration;
        private static Method getWifiApState;
        private static Method isWifiApEnabled;
        private static Method setWifiApConfiguration;
        private static Method setWifiApEnabled;
        private WifiConfiguration mPreviousConfig;

        static {
            for (Method method : WifiManager.class.getDeclaredMethods()) {
                String name = method.getName();
                char c = 65535;
                switch (name.hashCode()) {
                    case -846129808:
                        if (name.equals("setWifiApConfiguration")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -144339141:
                        if (name.equals("setWifiApEnabled")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 591399831:
                        if (name.equals("getWifiApState")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 678347635:
                        if (name.equals("isWifiApEnabled")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 2135709180:
                        if (name.equals("getWifiApConfiguration")) {
                            c = 0;
                            break;
                        }
                        break;
                }
                if (c == 0) {
                    getWifiApConfiguration = method;
                } else if (c == 1) {
                    getWifiApState = method;
                } else if (c == 2) {
                    isWifiApEnabled = method;
                } else if (c == 3) {
                    setWifiApEnabled = method;
                } else if (c == 4) {
                    setWifiApConfiguration = method;
                }
            }
        }

        private HackAPI(Context context) {
            super(context);
        }

        public static boolean enabled(WifiManager wifiManager) {
            Object access$500 = HotspotUtils.invokeSilently(isWifiApEnabled, wifiManager, new Object[0]);
            if (access$500 == null) {
                return false;
            }
            return ((Boolean) access$500).booleanValue();
        }

        public static boolean supported() {
            return (getWifiApState == null || isWifiApEnabled == null || setWifiApEnabled == null || getWifiApConfiguration == null) ? false : true;
        }

        public boolean disable() {
            unloadPreviousConfig();
            return setHotspotEnabled(this.mPreviousConfig, false);
        }

        public boolean enable() {
            getWifiManager().setWifiEnabled(false);
            return setHotspotEnabled(getConfiguration(), true);
        }

        public boolean enableConfigured(String str, String str2) {
            getWifiManager().setWifiEnabled(false);
            if (this.mPreviousConfig == null) {
                this.mPreviousConfig = getConfiguration();
            }
            WifiConfiguration wifiConfiguration = new WifiConfiguration();
            wifiConfiguration.SSID = str;
            if (str2 == null || str2.length() < 8) {
                wifiConfiguration.allowedKeyManagement.set(0);
            } else {
                wifiConfiguration.allowedKeyManagement.set(1);
                wifiConfiguration.allowedAuthAlgorithms.set(0);
                wifiConfiguration.preSharedKey = str2;
            }
            return setHotspotEnabled(wifiConfiguration, true);
        }

        public boolean isEnabled() {
            return enabled(getWifiManager());
        }

        public boolean isStarted() {
            return getPreviousConfig() != null;
        }

        public WifiConfiguration getConfiguration() {
            return (WifiConfiguration) HotspotUtils.invokeSilently(getWifiApConfiguration, getWifiManager(), new Object[0]);
        }

        public WifiConfiguration getPreviousConfig() {
            return this.mPreviousConfig;
        }

        private boolean setHotspotConfig(WifiConfiguration wifiConfiguration) {
            Object access$500 = HotspotUtils.invokeSilently(setWifiApConfiguration, getWifiManager(), wifiConfiguration);
            if (access$500 == null) {
                return false;
            }
            return ((Boolean) access$500).booleanValue();
        }

        private boolean setHotspotEnabled(WifiConfiguration wifiConfiguration, boolean z) {
            Object access$500 = HotspotUtils.invokeSilently(setWifiApEnabled, getWifiManager(), wifiConfiguration, Boolean.valueOf(z));
            if (access$500 == null) {
                return false;
            }
            return ((Boolean) access$500).booleanValue();
        }

        public boolean unloadPreviousConfig() {
            WifiConfiguration wifiConfiguration = this.mPreviousConfig;
            if (wifiConfiguration == null) {
                return false;
            }
            setHotspotConfig(wifiConfiguration);
            this.mPreviousConfig = null;
            return true;
        }
    }
}
