package com.genonbeta.TrebleShot.util;

import android.content.Context;
import com.genonbeta.CoolSocket.CoolSocket;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.android.database.DatabaseObject;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class CommunicationBridge implements CoolSocket.Client.ConnectionHandler {
    public static Client connect(AccessDatabase accessDatabase, Client.ConnectionHandler connectionHandler) {
        return connect(accessDatabase, false, connectionHandler);
    }

    public static <T> T connect(AccessDatabase accessDatabase, Class<T> cls, Client.ConnectionHandler connectionHandler) {
        Client connect = connect(accessDatabase, true, connectionHandler);
        if (connect.getReturn() == null || cls == null) {
            return null;
        }
        return cls.cast(connect.getReturn());
    }

    public static Client connect(AccessDatabase accessDatabase, boolean z, final Client.ConnectionHandler connectionHandler) {
        final Client client = new Client(accessDatabase);
        if (z) {
            connectionHandler.onConnect(client);
        } else {
            new Thread() {
                public void run() {
                    super.run();
                    connectionHandler.onConnect(client);
                }
            }.start();
        }
        return client;
    }

    public static class Client extends CoolSocket.Client {
        private AccessDatabase mDatabase;
        private NetworkDevice mDevice;
        private int mSecureKey = -1;

        public interface ConnectionHandler {
            void onConnect(Client client);
        }

        public Client(AccessDatabase accessDatabase) {
            this.mDatabase = accessDatabase;
        }

        public CoolSocket.ActiveConnection communicate(NetworkDevice networkDevice, NetworkDevice.Connection connection) throws IOException, TimeoutException, DifferentClientException, CommunicationException {
            CoolSocket.ActiveConnection connectWithHandshake = connectWithHandshake(connection.ipAddress, false);
            communicate(connectWithHandshake, networkDevice);
            return connectWithHandshake;
        }

        public CoolSocket.ActiveConnection communicate(CoolSocket.ActiveConnection activeConnection, NetworkDevice networkDevice) throws IOException, TimeoutException, DifferentClientException, CommunicationException {
            updateDeviceIfOkay(activeConnection, networkDevice);
            return activeConnection;
        }

        public CoolSocket.ActiveConnection connect(String str) throws IOException {
            if (InetAddress.getByName(str).isReachable(1000)) {
                return connect((SocketAddress) new InetSocketAddress(str, AppConfig.SERVER_PORT_COMMUNICATION), 5000);
            }
            throw new IOException("Ping test before connection to the address has failed");
        }

        public CoolSocket.ActiveConnection connect(NetworkDevice.Connection connection) throws IOException {
            return connect(connection.ipAddress);
        }

        public CoolSocket.ActiveConnection connectWithHandshake(String str, boolean z) throws IOException, TimeoutException, CommunicationException {
            return handshake(connect(str), z);
        }

        public Context getContext() {
            return getDatabase().getContext();
        }

        public AccessDatabase getDatabase() {
            return this.mDatabase;
        }

        public NetworkDevice getDevice() {
            return this.mDevice;
        }

        public void setDevice(NetworkDevice networkDevice) {
            this.mDevice = networkDevice;
        }

        public CoolSocket.ActiveConnection handshake(CoolSocket.ActiveConnection activeConnection, boolean z) throws IOException, TimeoutException, CommunicationException {
            try {
                activeConnection.reply(new JSONObject().put(Keyword.HANDSHAKE_REQUIRED, true).put(Keyword.HANDSHAKE_ONLY, z).put("deviceId", (Object) AppUtils.getDeviceSerial(getContext())).put(Keyword.DEVICE_SECURE_KEY, this.mDevice == null ? this.mSecureKey : this.mDevice.tmpSecureKey).toString());
                return activeConnection;
            } catch (JSONException unused) {
                throw new CommunicationException("Failed to open connection between devices");
            }
        }

        public NetworkDevice loadDevice(String str) throws TimeoutException, IOException, CommunicationException {
            return loadDevice(connectWithHandshake(str, true));
        }

        public NetworkDevice loadDevice(CoolSocket.ActiveConnection activeConnection) throws TimeoutException, IOException, CommunicationException {
            try {
                return NetworkDeviceLoader.loadFrom(getDatabase(), new JSONObject(activeConnection.receive().response));
            } catch (JSONException unused) {
                throw new CommunicationException("Cannot read the device from JSON");
            }
        }

        public void setSecureKey(int i) {
            this.mSecureKey = i;
        }

        public NetworkDevice updateDeviceIfOkay(CoolSocket.ActiveConnection activeConnection, NetworkDevice networkDevice) throws IOException, TimeoutException, CommunicationException, DifferentClientException {
            NetworkDevice loadDevice = loadDevice(activeConnection);
            NetworkDeviceLoader.processConnection(getDatabase(), loadDevice, activeConnection.getClientAddress());
            if (networkDevice.deviceId.equals(loadDevice.deviceId)) {
                loadDevice.lastUsageTime = System.currentTimeMillis();
                this.mDatabase.publish((DatabaseObject) loadDevice);
                setDevice(loadDevice);
                return loadDevice;
            }
            throw new DifferentClientException("The target device did not match with the connected one");
        }
    }

    public static class DifferentClientException extends Exception {
        public DifferentClientException(String str) {
            super(str);
        }
    }

    public static class CommunicationException extends Exception {
        public CommunicationException(String str) {
            super(str);
        }
    }
}
