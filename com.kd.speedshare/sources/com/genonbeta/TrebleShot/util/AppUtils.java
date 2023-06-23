package com.genonbeta.TrebleShot.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.preference.PreferenceManager;
import android.util.Base64;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.genonbeta.TrebleShot.App;
import com.genonbeta.TrebleShot.BuildConfig;
import com.genonbeta.TrebleShot.activity.WebShareActivity;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.dialog.RationalePermissionRequest;
import com.genonbeta.TrebleShot.graphics.drawable.TextDrawable;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.service.DeviceScannerService;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.preference.DbSharablePreferences;
import com.genonbeta.android.framework.preference.SuperPreferences;
import com.kd.speedshare.R;
import fi.iki.elonen.NanoHTTPD;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class AppUtils {
    public static final String TAG = AppUtils.class.getSimpleName();
    private static AccessDatabase mDatabase;
    private static SuperPreferences mDefaultLocalPreferences;
    private static SuperPreferences mDefaultPreferences;
    private static int mUniqueNumber = 0;
    private static SuperPreferences mViewingPreferences;

    public interface QuickActions<T> {
        void onQuickActions(T t);
    }

    public static void applyAdapterName(NetworkDevice.Connection connection) {
        if (connection.ipAddress == null) {
            Log.e(AppUtils.class.getSimpleName(), "Connection should be provided with IP address");
            return;
        }
        for (AddressedInterface next : NetworkUtils.getInterfaces(true, AppConfig.DEFAULT_DISABLED_INTERFACES)) {
            if (NetworkUtils.getAddressPrefix(next.getAssociatedAddress()).equals(NetworkUtils.getAddressPrefix(connection.ipAddress))) {
                connection.adapterName = next.getNetworkInterface().getDisplayName();
                return;
            }
        }
        connection.adapterName = Keyword.Local.NETWORK_INTERFACE_UNKNOWN;
    }

    public static void applyDeviceToJSON(Context context, JSONObject jSONObject) throws JSONException {
        NetworkDevice localDevice = getLocalDevice(context);
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("deviceId", (Object) localDevice.deviceId);
        jSONObject2.put("brand", (Object) localDevice.brand);
        jSONObject2.put("model", (Object) localDevice.model);
        jSONObject2.put("user", (Object) localDevice.nickname);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            BitmapFactory.decodeStream(context.openFileInput("profilePicture")).compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            jSONObject2.put(Keyword.DEVICE_INFO_PICTURE, (Object) Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0));
        } catch (Exception unused) {
        }
        jSONObject3.put(Keyword.APP_INFO_VERSION_CODE, localDevice.versionNumber);
        jSONObject3.put(Keyword.APP_INFO_VERSION_NAME, (Object) localDevice.versionName);
        jSONObject.put(Keyword.APP_INFO, (Object) jSONObject3);
        jSONObject.put(Keyword.DEVICE_INFO, (Object) jSONObject2);
    }

    public static void createFeedbackIntent(Activity activity) {
        Intent putExtra = new Intent("android.intent.action.SEND").setType(NanoHTTPD.MIME_PLAINTEXT).putExtra("android.intent.extra.EMAIL", new String[]{AppConfig.EMAIL_DEVELOPER}).putExtra("android.intent.extra.SUBJECT", activity.getString(R.string.text_appName));
        DocumentFile createLog = createLog(activity);
        if (createLog != null) {
            try {
                putExtra.addFlags(1).putExtra("android.intent.extra.STREAM", FileUtils.getSecureUri((Context) activity, createLog));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        activity.startActivity(Intent.createChooser(putExtra, activity.getString(R.string.butn_feedbackContact)));
    }

    public static boolean checkRunningConditions(Context context) {
        for (RationalePermissionRequest.PermissionRequest permissionRequest : getRequiredPermissions(context)) {
            if (ActivityCompat.checkSelfPermission(context, permissionRequest.permission) != 0) {
                return false;
            }
        }
        return true;
    }

    public static DocumentFile createLog(Context context) {
        DocumentFile applicationDirectory = FileUtils.getApplicationDirectory(context);
        String uniqueFileName = FileUtils.getUniqueFileName(applicationDirectory, "trebleshot_log.txt", true);
        DocumentFile createFile = applicationDirectory.createFile((String) null, uniqueFileName);
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("logcat -d -v threadtime *:*").getInputStream()));
            OutputStream openOutputStream = context.getContentResolver().openOutputStream(createFile.getUri(), "w");
            if (openOutputStream != null) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (readLine.contains(String.valueOf(it.next().pid))) {
                                    openOutputStream.write((readLine + "\n").getBytes());
                                    openOutputStream.flush();
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    } else {
                        openOutputStream.close();
                        bufferedReader.close();
                        return createFile;
                    }
                }
            } else {
                throw new IOException(String.format("Could not open %s", new Object[]{uniqueFileName}));
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public static TextDrawable.IShapeBuilder getDefaultIconBuilder(Context context) {
        TextDrawable.IShapeBuilder builder = TextDrawable.builder();
        builder.beginConfig().firstLettersOnly(true).textMaxLength(1).textColor(ContextCompat.getColor(context, getReference(context, R.attr.colorControlNormal))).shapeColor(ContextCompat.getColor(context, getReference(context, R.attr.colorPassive)));
        return builder;
    }

    public static AccessDatabase getDatabase(Context context) {
        if (mDatabase == null) {
            mDatabase = new AccessDatabase(context);
        }
        return mDatabase;
    }

    public static Keyword.Flavor getBuildFlavor() {
        try {
            return Keyword.Flavor.valueOf(BuildConfig.FLAVOR);
        } catch (Exception unused) {
            Log.e(TAG, "Current build flavor googlePlay is not specified in the vocab. Is this a custom build?");
            return Keyword.Flavor.unknown;
        }
    }

    public static SuperPreferences getDefaultPreferences(final Context context) {
        if (mDefaultPreferences == null) {
            SuperPreferences superPreferences = new SuperPreferences(new DbSharablePreferences(context, "__default", true).setUpdateListener(new DbSharablePreferences.AsynchronousUpdateListener() {
                public void onCommitComplete() {
                    context.sendBroadcast(new Intent(App.ACTION_REQUEST_PREFERENCES_SYNC));
                }
            }));
            mDefaultPreferences = superPreferences;
            superPreferences.setOnPreferenceUpdateListener(new SuperPreferences.OnPreferenceUpdateListener() {
                public void onPreferenceUpdate(SuperPreferences superPreferences, boolean z) {
                    PreferenceUtils.syncPreferences((SharedPreferences) superPreferences, AppUtils.getDefaultLocalPreferences(context).getWeakManager());
                }
            });
        }
        return mDefaultPreferences;
    }

    public static SuperPreferences getDefaultLocalPreferences(final Context context) {
        if (mDefaultLocalPreferences == null) {
            SuperPreferences superPreferences = new SuperPreferences(PreferenceManager.getDefaultSharedPreferences(context));
            mDefaultLocalPreferences = superPreferences;
            superPreferences.setOnPreferenceUpdateListener(new SuperPreferences.OnPreferenceUpdateListener() {
                public void onPreferenceUpdate(SuperPreferences superPreferences, boolean z) {
                    PreferenceUtils.syncPreferences((SharedPreferences) superPreferences, AppUtils.getDefaultPreferences(context).getWeakManager());
                }
            });
        }
        return mDefaultLocalPreferences;
    }

    public static String getDeviceSerial(Context context) {
        if (Build.VERSION.SDK_INT < 26) {
            return Build.SERIAL;
        }
        if (ActivityCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0) {
            return Build.getSerial();
        }
        return null;
    }

    public static String getFriendlySSID(String str) {
        return str.replace("\"", "").substring(3).replace("_", " ");
    }

    public static String getHotspotName(Context context) {
        return AppConfig.PREFIX_ACCESS_POINT + getLocalDeviceName(context).replaceAll(" ", "_");
    }

    public static String getLocalDeviceName(Context context) {
        String string = getDefaultPreferences(context).getString("device_name", (String) null);
        return (string == null || string.length() == 0) ? Build.MODEL.toUpperCase() : string;
    }

    public static NetworkDevice getLocalDevice(Context context) {
        NetworkDevice networkDevice = new NetworkDevice(getDeviceSerial(context));
        networkDevice.brand = Build.BRAND;
        networkDevice.model = Build.MODEL;
        networkDevice.nickname = getLocalDeviceName(context);
        networkDevice.isRestricted = false;
        networkDevice.isLocalAddress = true;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getApplicationInfo().packageName, 0);
            networkDevice.versionNumber = packageInfo.versionCode;
            networkDevice.versionName = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return networkDevice;
    }

    public static int getReference(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue.resourceId;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(context.getApplicationInfo().theme, new int[]{i});
        if (obtainStyledAttributes.length() > 0) {
            return obtainStyledAttributes.getResourceId(0, 0);
        }
        return 0;
    }

    public static List<RationalePermissionRequest.PermissionRequest> getRequiredPermissions(Context context) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 16) {
            arrayList.add(new RationalePermissionRequest.PermissionRequest(context, "android.permission.WRITE_EXTERNAL_STORAGE", (int) R.string.text_requestPermissionStorage, (int) R.string.text_requestPermissionStorageSummary));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            arrayList.add(new RationalePermissionRequest.PermissionRequest(context, "android.permission.READ_PHONE_STATE", (int) R.string.text_requestPermissionReadPhoneState, (int) R.string.text_requestPermissionReadPhoneStateSummary));
        }
        return arrayList;
    }

    public static int getUniqueNumber() {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int i = mUniqueNumber + 1;
        mUniqueNumber = i;
        return currentTimeMillis + i;
    }

    public static SuperPreferences getViewingPreferences(Context context) {
        if (mViewingPreferences == null) {
            mViewingPreferences = new SuperPreferences(context.getSharedPreferences(Keyword.Local.SETTINGS_VIEWING, 0));
        }
        return mViewingPreferences;
    }

    public static boolean isLatestChangeLogSeen(Context context) {
        SuperPreferences defaultPreferences = getDefaultPreferences(context);
        NetworkDevice localDevice = getLocalDevice(context);
        int i = defaultPreferences.getInt("changelog_seen_version", -1);
        boolean z = defaultPreferences.getBoolean("show_changelog_dialog", true);
        if (!defaultPreferences.contains("previously_migrated_version") || localDevice.versionNumber == i || !z) {
            return true;
        }
        return false;
    }

    public static void publishLatestChangelogSeen(Context context) {
        getDefaultPreferences(context).edit().putInt("changelog_seen_version", getLocalDevice(context).versionNumber).apply();
    }

    public static <T> T quickAction(T t, QuickActions<T> quickActions) {
        quickActions.onQuickActions(t);
        return t;
    }

    public static boolean toggleDeviceScanning(Context context) {
        if (DeviceScannerService.getDeviceScanner().isScannerAvailable()) {
            context.startService(new Intent(context, DeviceScannerService.class).setAction(DeviceScannerService.ACTION_SCAN_DEVICES));
            return true;
        }
        DeviceScannerService.getDeviceScanner().interrupt();
        return false;
    }

    public static void startWebShareActivity(Context context, boolean z) {
        Intent intent = new Intent(context, WebShareActivity.class);
        if (z) {
            intent.putExtra(WebShareActivity.EXTRA_WEBSERVER_START_REQUIRED, true);
        }
        context.startActivity(intent);
    }

    public static void startForegroundService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }
}
