package com.genonbeta.TrebleShot.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import android.util.Log;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;

public class NsdDiscovery {
    public static final String TAG = NsdDiscovery.class.getSimpleName();
    private Context mContext;
    private AccessDatabase mDatabase;
    private NsdManager.DiscoveryListener mNsdDiscoveryListener;
    private NsdManager mNsdManager;
    private NsdManager.RegistrationListener mNsdRegistrationListener;
    private SharedPreferences mPreferences;

    public NsdDiscovery(Context context, AccessDatabase accessDatabase, SharedPreferences sharedPreferences) {
        this.mContext = context;
        this.mDatabase = accessDatabase;
        this.mPreferences = sharedPreferences;
    }

    public Context getContext() {
        return this.mContext;
    }

    public AccessDatabase getDatabase() {
        return this.mDatabase;
    }

    public NsdManager.DiscoveryListener getDiscoveryListener() {
        if (this.mNsdDiscoveryListener == null && Build.VERSION.SDK_INT >= 16) {
            this.mNsdDiscoveryListener = new NsdManager.DiscoveryListener() {
                public void onStartDiscoveryFailed(String str, int i) {
                    String str2 = NsdDiscovery.TAG;
                    Log.e(str2, "NSD discovery failed to start with error code " + i);
                }

                public void onStopDiscoveryFailed(String str, int i) {
                    String str2 = NsdDiscovery.TAG;
                    Log.e(str2, "NSD discovery failed to stop with error code " + i);
                }

                public void onDiscoveryStarted(String str) {
                    Log.v(NsdDiscovery.TAG, "NSD discovery started");
                }

                public void onDiscoveryStopped(String str) {
                    Log.v(NsdDiscovery.TAG, "NSD discovery stopped");
                }

                public void onServiceFound(NsdServiceInfo nsdServiceInfo) {
                    String str = NsdDiscovery.TAG;
                    Log.v(str, "NSD service is now found which is of " + nsdServiceInfo.getServiceName());
                    if (!nsdServiceInfo.getServiceType().equals(AppConfig.NDS_COMM_SERVICE_TYPE)) {
                        String str2 = NsdDiscovery.TAG;
                        Log.d(str2, "Unknown Service Type: " + nsdServiceInfo.getServiceType());
                    } else if (nsdServiceInfo.getServiceName().startsWith(AppConfig.NDS_COMM_SERVICE_NAME)) {
                        NsdDiscovery.this.getNsdManager().resolveService(nsdServiceInfo, new NsdManager.ResolveListener() {
                            public void onResolveFailed(NsdServiceInfo nsdServiceInfo, int i) {
                                String str = NsdDiscovery.TAG;
                                Log.e(str, "Resolve failed for " + nsdServiceInfo.getServiceName());
                            }

                            public void onServiceResolved(NsdServiceInfo nsdServiceInfo) {
                                String str = NsdDiscovery.TAG;
                                Log.v(str, "Resolved with success " + nsdServiceInfo.getServiceName() + " with IP address of " + nsdServiceInfo.getHost().getHostAddress());
                                NetworkDeviceLoader.load(NsdDiscovery.this.getDatabase(), nsdServiceInfo.getHost().getHostAddress(), (NetworkDeviceLoader.OnDeviceRegisteredListener) null);
                            }
                        });
                    }
                }

                public void onServiceLost(NsdServiceInfo nsdServiceInfo) {
                    String str = NsdDiscovery.TAG;
                    Log.i(str, "NSD service is now lost which is of " + nsdServiceInfo.getServiceName());
                }
            };
        }
        return this.mNsdDiscoveryListener;
    }

    public NsdManager getNsdManager() {
        if (this.mNsdManager == null && Build.VERSION.SDK_INT >= 16) {
            this.mNsdManager = (NsdManager) getContext().getSystemService("servicediscovery");
        }
        return this.mNsdManager;
    }

    public NsdManager.RegistrationListener getRegistrationListener() {
        if (isServiceEnabled() && this.mNsdRegistrationListener == null && Build.VERSION.SDK_INT >= 16) {
            this.mNsdRegistrationListener = new NsdManager.RegistrationListener() {
                public void onRegistrationFailed(NsdServiceInfo nsdServiceInfo, int i) {
                    String str = NsdDiscovery.TAG;
                    Log.e(str, "NDS registration failed with error code " + i);
                }

                public void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo, int i) {
                    String str = NsdDiscovery.TAG;
                    Log.e(str, "NDS failed to unregister with error code " + i);
                }

                public void onServiceRegistered(NsdServiceInfo nsdServiceInfo) {
                    String str = NsdDiscovery.TAG;
                    Log.v(str, "NDS registered with success " + nsdServiceInfo.getServiceName());
                }

                public void onServiceUnregistered(NsdServiceInfo nsdServiceInfo) {
                    String str = NsdDiscovery.TAG;
                    Log.i(str, "NDS unregistered with success " + nsdServiceInfo.getServiceName());
                }
            };
        }
        return this.mNsdRegistrationListener;
    }

    public boolean isServiceEnabled() {
        return this.mPreferences.getBoolean("nsd_enabled", false);
    }

    public void registerService() {
        if (isServiceEnabled() && Build.VERSION.SDK_INT >= 16) {
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceName("TSComm_" + AppUtils.getUniqueNumber());
            nsdServiceInfo.setServiceType(AppConfig.NDS_COMM_SERVICE_TYPE);
            nsdServiceInfo.setPort(AppConfig.SERVER_PORT_COMMUNICATION);
            try {
                getNsdManager().registerService(nsdServiceInfo, 1, getRegistrationListener());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void startDiscovering() {
        if (isServiceEnabled() && Build.VERSION.SDK_INT >= 16) {
            try {
                getNsdManager().discoverServices(AppConfig.NDS_COMM_SERVICE_TYPE, 1, getDiscoveryListener());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void stopDiscovering() {
        if (isServiceEnabled() && Build.VERSION.SDK_INT >= 16) {
            try {
                getNsdManager().stopServiceDiscovery(getDiscoveryListener());
            } catch (Exception unused) {
            }
        }
    }

    public void unregisterService() {
        if (isServiceEnabled() && Build.VERSION.SDK_INT >= 16) {
            try {
                getNsdManager().unregisterService(getRegistrationListener());
            } catch (Exception unused) {
            }
        }
    }
}
