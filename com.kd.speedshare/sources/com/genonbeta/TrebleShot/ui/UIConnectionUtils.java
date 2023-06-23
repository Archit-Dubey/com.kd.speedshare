package com.genonbeta.TrebleShot.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.net.wifi.WifiConfiguration;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentActivity;
import com.genonbeta.CoolSocket.CoolSocket;
import com.genonbeta.TrebleShot.adapter.NetworkDeviceListAdapter;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.CommunicationBridge;
import com.genonbeta.TrebleShot.util.ConnectionUtils;
import com.genonbeta.TrebleShot.util.HotspotUtils;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.framework.ui.callback.SnackbarSupport;
import com.kd.speedshare.R;
import org.json.JSONException;
import org.json.JSONObject;

public class UIConnectionUtils {
    public static final String TAG = "UIConnectionUtils";
    private ConnectionUtils mConnectionUtils;
    private SnackbarSupport mSnackbarSupport;
    /* access modifiers changed from: private */
    public boolean mWirelessEnableRequested = false;

    public interface RequestWatcher {
        void onResultReturned(boolean z, boolean z2);
    }

    public UIConnectionUtils(ConnectionUtils connectionUtils, SnackbarSupport snackbarSupport) {
        this.mConnectionUtils = connectionUtils;
        this.mSnackbarSupport = snackbarSupport;
    }

    public static void showConnectionRejectionInformation(final Activity activity, final NetworkDevice networkDevice, JSONObject jSONObject, final DialogInterface.OnClickListener onClickListener) {
        try {
            if (!jSONObject.has(Keyword.ERROR)) {
                showUnknownError(activity, onClickListener);
            } else if (jSONObject.getString(Keyword.ERROR).equals(Keyword.ERROR_NOT_ALLOWED)) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public void run() {
                        if (!activity.isFinishing()) {
                            new AlertDialog.Builder(activity).setTitle((int) R.string.mesg_notAllowed).setMessage((CharSequence) activity.getString(R.string.text_notAllowedHelp, new Object[]{networkDevice.nickname, AppUtils.getLocalDeviceName(activity)})).setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_retry, onClickListener).show();
                        }
                    }
                });
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void showUnknownError(final Activity activity, final DialogInterface.OnClickListener onClickListener) {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                if (!activity.isFinishing()) {
                    new AlertDialog.Builder(activity).setMessage((int) R.string.mesg_somethingWentWrong).setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_retry, onClickListener).show();
                }
            }
        });
    }

    public ConnectionUtils getConnectionUtils() {
        return this.mConnectionUtils;
    }

    public SnackbarSupport getSnackbarSupport() {
        return this.mSnackbarSupport;
    }

    public void makeAcquaintance(Activity activity, UITask uITask, Object obj, int i, NetworkDeviceLoader.OnDeviceRegisteredListener onDeviceRegisteredListener) {
        final Activity activity2 = activity;
        final UITask uITask2 = uITask;
        final Object obj2 = obj;
        final int i2 = i;
        final NetworkDeviceLoader.OnDeviceRegisteredListener onDeviceRegisteredListener2 = onDeviceRegisteredListener;
        WorkerService.RunningTask iconRes = new WorkerService.RunningTask() {
            private boolean mConnected = false;
            private String mRemoteAddress;

            public void onRun() {
                AnonymousClass5 r1;
                Handler handler;
                final AnonymousClass1 r6 = new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        UIConnectionUtils.this.makeAcquaintance(activity2, uITask2, obj2, i2, onDeviceRegisteredListener2);
                    }
                };
                try {
                    if (obj2 instanceof NetworkDeviceListAdapter.HotspotNetwork) {
                        this.mRemoteAddress = UIConnectionUtils.this.getConnectionUtils().establishHotspotConnection(getInterrupter(), (NetworkDeviceListAdapter.HotspotNetwork) obj2, new ConnectionUtils.ConnectionCallback() {
                            public boolean onTimePassed(int i, long j) {
                                return j >= 30000;
                            }
                        });
                    } else if (obj2 instanceof String) {
                        this.mRemoteAddress = (String) obj2;
                    }
                    if (this.mRemoteAddress != null) {
                        this.mConnected = UIConnectionUtils.this.setupConnection(activity2, this.mRemoteAddress, i2, new NetworkDeviceLoader.OnDeviceRegisteredListener() {
                            public void onDeviceRegistered(final AccessDatabase accessDatabase, final NetworkDevice networkDevice, final NetworkDevice.Connection connection) {
                                new Handler(Looper.getMainLooper()).post(new Runnable() {
                                    public void run() {
                                        if (onDeviceRegisteredListener2 != null) {
                                            onDeviceRegisteredListener2.onDeviceRegistered(accessDatabase, networkDevice, connection);
                                        }
                                    }
                                });
                            }
                        }, r6) != null;
                    }
                    if (!this.mConnected && !getInterrupter().interruptedByUser()) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() {
                            public void run() {
                                if (!activity2.isFinishing()) {
                                    AlertDialog.Builder positiveButton = new AlertDialog.Builder(activity2).setMessage((int) R.string.mesg_connectionFailure).setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_retry, r6);
                                    if (obj2 instanceof NetworkDevice) {
                                        positiveButton.setTitle((CharSequence) ((NetworkDevice) obj2).nickname);
                                    }
                                    positiveButton.show();
                                }
                            }
                        });
                    }
                    handler = new Handler(Looper.getMainLooper());
                    r1 = new Runnable() {
                        public void run() {
                            if (uITask2 != null && !activity2.isFinishing()) {
                                uITask2.updateTaskStopped();
                            }
                        }
                    };
                } catch (Exception unused) {
                    handler = new Handler(Looper.getMainLooper());
                    r1 = new Runnable() {
                        public void run() {
                            if (uITask2 != null && !activity2.isFinishing()) {
                                uITask2.updateTaskStopped();
                            }
                        }
                    };
                } catch (Throwable th) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        public void run() {
                            if (uITask2 != null && !activity2.isFinishing()) {
                                uITask2.updateTaskStopped();
                            }
                        }
                    });
                    throw th;
                }
                handler.post(r1);
            }
        }.setTitle(activity.getString(R.string.mesg_completing)).setIconRes(com.genonbeta.TrebleShot.R.drawable.ic_compare_arrows_white_24dp_static);
        iconRes.run(activity);
        if (uITask != null) {
            uITask.updateTaskStarted(iconRes.getInterrupter());
        }
    }

    public boolean notifyWirelessRequestHandled() {
        boolean z = this.mWirelessEnableRequested;
        this.mWirelessEnableRequested = false;
        return z;
    }

    public NetworkDevice setupConnection(Activity activity, String str, int i, NetworkDeviceLoader.OnDeviceRegisteredListener onDeviceRegisteredListener, DialogInterface.OnClickListener onClickListener) {
        final int i2 = i;
        final String str2 = str;
        final Activity activity2 = activity;
        final NetworkDeviceLoader.OnDeviceRegisteredListener onDeviceRegisteredListener2 = onDeviceRegisteredListener;
        final DialogInterface.OnClickListener onClickListener2 = onClickListener;
        return (NetworkDevice) CommunicationBridge.connect(AppUtils.getDatabase(activity), NetworkDevice.class, (CommunicationBridge.Client.ConnectionHandler) new CommunicationBridge.Client.ConnectionHandler() {
            public void onConnect(CommunicationBridge.Client client) {
                try {
                    client.setSecureKey(i2);
                    CoolSocket.ActiveConnection connectWithHandshake = client.connectWithHandshake(str2, false);
                    NetworkDevice loadDevice = client.loadDevice(connectWithHandshake);
                    connectWithHandshake.reply(new JSONObject().put(Keyword.REQUEST, (Object) Keyword.REQUEST_ACQUAINTANCE).toString());
                    JSONObject jSONObject = new JSONObject(connectWithHandshake.receive().response);
                    if (!jSONObject.has(Keyword.RESULT) || !jSONObject.getBoolean(Keyword.RESULT) || loadDevice.deviceId == null) {
                        UIConnectionUtils.showConnectionRejectionInformation(activity2, loadDevice, jSONObject, onClickListener2);
                    } else {
                        NetworkDevice.Connection processConnection = NetworkDeviceLoader.processConnection(AppUtils.getDatabase(activity2), loadDevice, str2);
                        loadDevice.lastUsageTime = System.currentTimeMillis();
                        loadDevice.tmpSecureKey = i2;
                        loadDevice.isRestricted = false;
                        loadDevice.isTrusted = true;
                        AppUtils.getDatabase(activity2).publish((DatabaseObject) loadDevice);
                        if (onDeviceRegisteredListener2 != null) {
                            onDeviceRegisteredListener2.onDeviceRegistered(AppUtils.getDatabase(activity2), loadDevice, processConnection);
                        }
                    }
                    client.setReturn(loadDevice);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public void showConnectionOptions(final Activity activity, final int i, final RequestWatcher requestWatcher) {
        if (!getConnectionUtils().getWifiManager().isWifiEnabled()) {
            getSnackbarSupport().createSnackbar(R.string.mesg_suggestSelfHotspot, new Object[0]).setAction((int) R.string.butn_enable, (View.OnClickListener) new View.OnClickListener() {
                public void onClick(View view) {
                    boolean unused = UIConnectionUtils.this.mWirelessEnableRequested = true;
                    UIConnectionUtils.this.turnOnWiFi(activity, i, requestWatcher);
                }
            }).show();
        } else if (validateLocationPermission(activity, i, requestWatcher)) {
            requestWatcher.onResultReturned(true, false);
            getSnackbarSupport().createSnackbar(R.string.mesg_scanningSelfHotspot, new Object[0]).setAction((int) R.string.butn_wifiSettings, (View.OnClickListener) new View.OnClickListener() {
                public void onClick(View view) {
                    activity.startActivity(new Intent("android.settings.WIFI_SETTINGS").addFlags(268435456));
                }
            }).show();
        }
        requestWatcher.onResultReturned(true, false);
    }

    public boolean toggleHotspot(boolean z, final FragmentActivity fragmentActivity, final int i, final RequestWatcher requestWatcher) {
        if (!HotspotUtils.isSupported()) {
            return false;
        }
        AnonymousClass7 r0 = new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                requestWatcher.onResultReturned(false, false);
            }
        };
        if (z) {
            if (Build.VERSION.SDK_INT >= 26 && !validateLocationPermission(fragmentActivity, i, requestWatcher)) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 23 && !Settings.System.canWrite(getConnectionUtils().getContext())) {
                new AlertDialog.Builder(getConnectionUtils().getContext()).setMessage((int) R.string.mesg_errorHotspotPermission).setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) r0).setPositiveButton((int) R.string.butn_settings, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        FragmentActivity fragmentActivity = fragmentActivity;
                        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
                        fragmentActivity.startActivity(intent.setData(Uri.parse("package:" + UIConnectionUtils.this.getConnectionUtils().getContext().getPackageName())).addFlags(268435456));
                        requestWatcher.onResultReturned(false, true);
                    }
                }).show();
                return false;
            } else if (Build.VERSION.SDK_INT < 26 && !getConnectionUtils().getHotspotUtils().isEnabled() && getConnectionUtils().isMobileDataActive()) {
                new AlertDialog.Builder(getConnectionUtils().getContext()).setMessage((int) R.string.mesg_warningHotspotMobileActive).setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) r0).setPositiveButton((int) R.string.butn_skip, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        UIConnectionUtils.this.toggleHotspot(false, fragmentActivity, i, requestWatcher);
                    }
                }).show();
                return false;
            }
        }
        WifiConfiguration configuration = getConnectionUtils().getHotspotUtils().getConfiguration();
        if (!getConnectionUtils().getHotspotUtils().isEnabled() || (configuration != null && AppUtils.getHotspotName(getConnectionUtils().getContext()).equals(configuration.SSID))) {
            getSnackbarSupport().createSnackbar(getConnectionUtils().getHotspotUtils().isEnabled() ? R.string.mesg_stoppingSelfHotspot : R.string.mesg_startingSelfHotspot, new Object[0]).show();
        }
        AppUtils.startForegroundService(getConnectionUtils().getContext(), new Intent(getConnectionUtils().getContext(), CommunicationService.class).setAction(CommunicationService.ACTION_TOGGLE_HOTSPOT));
        requestWatcher.onResultReturned(true, false);
        return true;
    }

    public boolean turnOnWiFi(final Activity activity, int i, final RequestWatcher requestWatcher) {
        if (getConnectionUtils().getWifiManager().setWifiEnabled(true)) {
            getSnackbarSupport().createSnackbar(R.string.mesg_turningWiFiOn, new Object[0]).show();
            requestWatcher.onResultReturned(true, false);
            return true;
        }
        new AlertDialog.Builder(getConnectionUtils().getContext()).setMessage((int) R.string.mesg_wifiEnableFailed).setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                requestWatcher.onResultReturned(false, false);
            }
        }).setPositiveButton((int) R.string.butn_settings, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                activity.startActivity(new Intent("android.settings.WIFI_SETTINGS").addFlags(268435456));
                requestWatcher.onResultReturned(false, true);
            }
        }).show();
        return false;
    }

    public boolean validateLocationPermission(final Activity activity, final int i, final RequestWatcher requestWatcher) {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        AnonymousClass12 r0 = new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                requestWatcher.onResultReturned(false, false);
            }
        };
        if (!getConnectionUtils().hasLocationPermission(getConnectionUtils().getContext())) {
            new AlertDialog.Builder(getConnectionUtils().getContext()).setMessage((int) R.string.mesg_locationPermissionRequiredSelfHotspot).setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) r0).setPositiveButton((int) R.string.butn_ask, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    requestWatcher.onResultReturned(false, true);
                    activity.requestPermissions(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, i);
                }
            }).show();
            return false;
        } else if (!getConnectionUtils().isLocationServiceEnabled()) {
            new AlertDialog.Builder(getConnectionUtils().getContext()).setMessage((int) R.string.mesg_locationDisabledSelfHotspot).setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) r0).setPositiveButton((int) R.string.butn_locationSettings, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    requestWatcher.onResultReturned(false, true);
                    activity.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS").addFlags(268435456));
                }
            }).show();
            return false;
        } else {
            requestWatcher.onResultReturned(true, false);
            return true;
        }
    }

    public static boolean isOSAbove(int i) {
        return Build.VERSION.SDK_INT >= i;
    }
}
