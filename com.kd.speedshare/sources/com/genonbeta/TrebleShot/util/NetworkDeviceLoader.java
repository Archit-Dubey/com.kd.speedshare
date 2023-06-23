package com.genonbeta.TrebleShot.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.genonbeta.TrebleShot.GlideApp;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.graphics.drawable.TextDrawable;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.util.CommunicationBridge;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.ConnectException;
import org.json.JSONException;
import org.json.JSONObject;

public class NetworkDeviceLoader {

    public interface OnDeviceRegisteredErrorListener extends OnDeviceRegisteredListener {
        void onError(Exception exc);
    }

    public interface OnDeviceRegisteredListener {
        void onDeviceRegistered(AccessDatabase accessDatabase, NetworkDevice networkDevice, NetworkDevice.Connection connection);
    }

    public static NetworkDevice.Connection processConnection(AccessDatabase accessDatabase, NetworkDevice networkDevice, String str) {
        NetworkDevice.Connection connection = new NetworkDevice.Connection(str);
        processConnection(accessDatabase, networkDevice, connection);
        return connection;
    }

    public static void processConnection(AccessDatabase accessDatabase, NetworkDevice networkDevice, NetworkDevice.Connection connection) {
        try {
            accessDatabase.reconstruct(connection);
        } catch (Exception unused) {
            AppUtils.applyAdapterName(connection);
        }
        connection.lastCheckedDate = System.currentTimeMillis();
        connection.deviceId = networkDevice.deviceId;
        accessDatabase.remove(new SQLQuery.Select(AccessDatabase.TABLE_DEVICECONNECTION, new String[0]).setWhere("deviceId=? AND adapterName =? AND ipAddress != ?", connection.deviceId, connection.adapterName, connection.ipAddress));
        accessDatabase.publish((DatabaseObject) connection);
    }

    public static void load(AccessDatabase accessDatabase, String str, OnDeviceRegisteredListener onDeviceRegisteredListener) {
        try {
            load(false, accessDatabase, str, onDeviceRegisteredListener);
        } catch (ConnectException e) {
            e.printStackTrace();
        }
    }

    public static NetworkDevice load(boolean z, final AccessDatabase accessDatabase, final String str, final OnDeviceRegisteredListener onDeviceRegisteredListener) throws ConnectException {
        AnonymousClass1 r0 = new CommunicationBridge.Client.ConnectionHandler() {
            public void onConnect(CommunicationBridge.Client client) {
                try {
                    NetworkDevice loadDevice = client.loadDevice(str);
                    if (loadDevice.deviceId != null) {
                        NetworkDevice localDevice = AppUtils.getLocalDevice(accessDatabase.getContext());
                        NetworkDevice.Connection processConnection = NetworkDeviceLoader.processConnection(accessDatabase, loadDevice, str);
                        if (!localDevice.deviceId.equals(loadDevice.deviceId)) {
                            loadDevice.lastUsageTime = System.currentTimeMillis();
                            accessDatabase.publish((DatabaseObject) loadDevice);
                            if (onDeviceRegisteredListener != null) {
                                onDeviceRegisteredListener.onDeviceRegistered(accessDatabase, loadDevice, processConnection);
                            }
                        }
                    }
                    client.setReturn(loadDevice);
                } catch (Exception e) {
                    OnDeviceRegisteredListener onDeviceRegisteredListener = onDeviceRegisteredListener;
                    if (onDeviceRegisteredListener != null && (onDeviceRegisteredListener instanceof OnDeviceRegisteredErrorListener)) {
                        ((OnDeviceRegisteredErrorListener) onDeviceRegisteredListener).onError(e);
                    }
                }
            }
        };
        if (z) {
            return (NetworkDevice) CommunicationBridge.connect(accessDatabase, NetworkDevice.class, (CommunicationBridge.Client.ConnectionHandler) r0);
        }
        CommunicationBridge.connect(accessDatabase, r0);
        return null;
    }

    public static NetworkDevice loadFrom(AccessDatabase accessDatabase, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject(Keyword.DEVICE_INFO);
        JSONObject jSONObject3 = jSONObject.getJSONObject(Keyword.APP_INFO);
        NetworkDevice networkDevice = new NetworkDevice(jSONObject2.getString("deviceId"));
        try {
            accessDatabase.reconstruct(networkDevice);
        } catch (Exception unused) {
        }
        networkDevice.brand = jSONObject2.getString("brand");
        networkDevice.model = jSONObject2.getString("model");
        networkDevice.nickname = jSONObject2.getString("user");
        networkDevice.lastUsageTime = System.currentTimeMillis();
        networkDevice.versionNumber = jSONObject3.getInt(Keyword.APP_INFO_VERSION_CODE);
        networkDevice.versionName = jSONObject3.getString(Keyword.APP_INFO_VERSION_NAME);
        if (networkDevice.nickname.length() > 32) {
            networkDevice.nickname = networkDevice.nickname.substring(0, 31);
        }
        saveProfilePicture(accessDatabase.getContext(), networkDevice, jSONObject2);
        return networkDevice;
    }

    public static byte[] loadProfilePictureFrom(JSONObject jSONObject) throws Exception {
        if (jSONObject.has(Keyword.DEVICE_INFO_PICTURE)) {
            return loadProfilePictureFrom(jSONObject.getString(Keyword.DEVICE_INFO_PICTURE));
        }
        throw new Exception(jSONObject.toString());
    }

    public static byte[] loadProfilePictureFrom(String str) throws IllegalArgumentException {
        return Base64.decode(str, 0);
    }

    public static boolean saveProfilePicture(Context context, NetworkDevice networkDevice, JSONObject jSONObject) {
        try {
            return saveProfilePicture(context, networkDevice, loadProfilePictureFrom(jSONObject));
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean saveProfilePicture(Context context, NetworkDevice networkDevice, byte[] bArr) {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (decodeByteArray != null) {
            try {
                FileOutputStream openFileOutput = context.openFileOutput(networkDevice.generatePictureId(), 0);
                decodeByteArray.compress(Bitmap.CompressFormat.PNG, 100, openFileOutput);
                openFileOutput.close();
                return true;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } else {
            Log.d(NetworkDeviceLoader.class.getSimpleName(), "Bitmap was null");
            return false;
        }
    }

    public static void showPictureIntoView(NetworkDevice networkDevice, ImageView imageView, TextDrawable.IShapeBuilder iShapeBuilder) {
        Context context = imageView.getContext();
        if (context != null) {
            File fileStreamPath = context.getFileStreamPath(networkDevice.generatePictureId());
            if (fileStreamPath.isFile()) {
                GlideApp.with((View) imageView).asBitmap().load(fileStreamPath).circleCrop().into(imageView);
                return;
            }
        }
        imageView.setImageDrawable(iShapeBuilder.buildRound(networkDevice.nickname));
    }
}
