package com.genonbeta.CoolSocket;

import com.genonbeta.TrebleShot.config.AppConfig;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.lang.Thread;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class CoolSocket {
    public static final String HEADER_ITEM_LENGTH = "length";
    public static final String HEADER_SEPARATOR = "\nHEADER_END\n";
    public static final int NO_TIMEOUT = -1;
    public static final String TAG = CoolSocket.class.getSimpleName();
    private final ArrayList<ActiveConnection> mConnections = new ArrayList<>();
    private ExecutorService mExecutor;
    private int mMaxConnections = 10;
    private ServerSocket mServerSocket;
    private Thread mServerThread;
    private SocketAddress mSocketAddress = null;
    private ServerRunnable mSocketRunnable = new ServerRunnable();
    /* access modifiers changed from: private */
    public int mSocketTimeout = -1;

    /* access modifiers changed from: protected */
    public abstract void onConnected(ActiveConnection activeConnection);

    public void onInternalError(Exception exc) {
    }

    public void onServerStarted() {
    }

    public void onServerStopped() {
    }

    public CoolSocket() {
    }

    public CoolSocket(int i) {
        this.mSocketAddress = new InetSocketAddress(i);
    }

    public CoolSocket(String str, int i) {
        this.mSocketAddress = new InetSocketAddress(str, i);
    }

    public static <T> T connect(Client.ConnectionHandler connectionHandler, Class<T> cls) {
        Client client = new Client();
        connectionHandler.onConnect(client);
        if (client.getReturn() == null || cls == null) {
            return null;
        }
        return cls.cast(client.getReturn());
    }

    public static void connect(final Client.ConnectionHandler connectionHandler) {
        new Thread() {
            public void run() {
                super.run();
                CoolSocket.connect(Client.ConnectionHandler.this, (Class) null);
            }
        }.start();
    }

    public int getConnectionCountByAddress(InetAddress inetAddress) {
        int i = 0;
        for (ActiveConnection address : getConnections()) {
            if (address.getAddress().equals(inetAddress)) {
                i++;
            }
        }
        return i;
    }

    public synchronized List<ActiveConnection> getConnections() {
        return this.mConnections;
    }

    public ExecutorService getExecutor() {
        if (this.mExecutor == null) {
            this.mExecutor = Executors.newFixedThreadPool(this.mMaxConnections);
        }
        return this.mExecutor;
    }

    public int getLocalPort() {
        return getServerSocket().getLocalPort();
    }

    /* access modifiers changed from: protected */
    public ServerSocket getServerSocket() {
        return this.mServerSocket;
    }

    /* access modifiers changed from: protected */
    public Thread getServerThread() {
        return this.mServerThread;
    }

    public SocketAddress getSocketAddress() {
        return this.mSocketAddress;
    }

    /* access modifiers changed from: protected */
    public ServerRunnable getSocketRunnable() {
        return this.mSocketRunnable;
    }

    public int getSocketTimeout() {
        return this.mSocketTimeout;
    }

    public boolean isComponentsReady() {
        return (getServerSocket() == null || getServerThread() == null || getSocketAddress() == null) ? false : true;
    }

    public boolean isInterrupted() {
        return getServerThread() == null || getServerThread().isInterrupted();
    }

    public boolean isServerAlive() {
        return getServerThread() != null && getServerThread().isAlive();
    }

    /* access modifiers changed from: protected */
    public boolean respondRequest(final Socket socket) {
        int size = getConnections().size();
        int i = this.mMaxConnections;
        if (size > i && i != 0) {
            return false;
        }
        final ActiveConnection activeConnection = new ActiveConnection(socket, this.mSocketTimeout);
        synchronized (getConnections()) {
            getConnections().add(activeConnection);
        }
        getExecutor().submit(new Runnable() {
            /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r4 = this;
                    com.genonbeta.CoolSocket.CoolSocket r0 = com.genonbeta.CoolSocket.CoolSocket.this     // Catch:{ SocketException -> 0x0019 }
                    int r0 = r0.mSocketTimeout     // Catch:{ SocketException -> 0x0019 }
                    r1 = -1
                    if (r0 <= r1) goto L_0x001d
                    com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r0 = r0     // Catch:{ SocketException -> 0x0019 }
                    java.net.Socket r0 = r0.getSocket()     // Catch:{ SocketException -> 0x0019 }
                    com.genonbeta.CoolSocket.CoolSocket r1 = com.genonbeta.CoolSocket.CoolSocket.this     // Catch:{ SocketException -> 0x0019 }
                    int r1 = r1.mSocketTimeout     // Catch:{ SocketException -> 0x0019 }
                    r0.setSoTimeout(r1)     // Catch:{ SocketException -> 0x0019 }
                    goto L_0x001d
                L_0x0019:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x001d:
                    com.genonbeta.CoolSocket.CoolSocket r0 = com.genonbeta.CoolSocket.CoolSocket.this
                    com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r1 = r0
                    r0.onConnected(r1)
                    java.net.Socket r0 = r4     // Catch:{ IOException -> 0x0062 }
                    boolean r0 = r0.isClosed()     // Catch:{ IOException -> 0x0062 }
                    if (r0 != 0) goto L_0x0049
                    java.io.PrintStream r0 = java.lang.System.out     // Catch:{ IOException -> 0x0062 }
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0062 }
                    r1.<init>()     // Catch:{ IOException -> 0x0062 }
                    java.lang.String r2 = com.genonbeta.CoolSocket.CoolSocket.TAG     // Catch:{ IOException -> 0x0062 }
                    r1.append(r2)     // Catch:{ IOException -> 0x0062 }
                    java.lang.String r2 = ": You should close connections in the end of onConnected(ActiveConnection) method"
                    r1.append(r2)     // Catch:{ IOException -> 0x0062 }
                    java.lang.String r1 = r1.toString()     // Catch:{ IOException -> 0x0062 }
                    r0.println(r1)     // Catch:{ IOException -> 0x0062 }
                    java.net.Socket r0 = r4     // Catch:{ IOException -> 0x0062 }
                    r0.close()     // Catch:{ IOException -> 0x0062 }
                L_0x0049:
                    com.genonbeta.CoolSocket.CoolSocket r0 = com.genonbeta.CoolSocket.CoolSocket.this
                    java.util.List r0 = r0.getConnections()
                    monitor-enter(r0)
                    com.genonbeta.CoolSocket.CoolSocket r1 = com.genonbeta.CoolSocket.CoolSocket.this     // Catch:{ all -> 0x005d }
                    java.util.List r1 = r1.getConnections()     // Catch:{ all -> 0x005d }
                    com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r2 = r0     // Catch:{ all -> 0x005d }
                    r1.remove(r2)     // Catch:{ all -> 0x005d }
                    monitor-exit(r0)     // Catch:{ all -> 0x005d }
                    goto L_0x0079
                L_0x005d:
                    r1 = move-exception
                    monitor-exit(r0)     // Catch:{ all -> 0x005d }
                    throw r1
                L_0x0060:
                    r0 = move-exception
                    goto L_0x007d
                L_0x0062:
                    r0 = move-exception
                    r0.printStackTrace()     // Catch:{ all -> 0x0060 }
                    com.genonbeta.CoolSocket.CoolSocket r0 = com.genonbeta.CoolSocket.CoolSocket.this
                    java.util.List r0 = r0.getConnections()
                    monitor-enter(r0)
                    com.genonbeta.CoolSocket.CoolSocket r1 = com.genonbeta.CoolSocket.CoolSocket.this     // Catch:{ all -> 0x007a }
                    java.util.List r1 = r1.getConnections()     // Catch:{ all -> 0x007a }
                    com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r2 = r0     // Catch:{ all -> 0x007a }
                    r1.remove(r2)     // Catch:{ all -> 0x007a }
                    monitor-exit(r0)     // Catch:{ all -> 0x007a }
                L_0x0079:
                    return
                L_0x007a:
                    r1 = move-exception
                    monitor-exit(r0)     // Catch:{ all -> 0x007a }
                    throw r1
                L_0x007d:
                    com.genonbeta.CoolSocket.CoolSocket r1 = com.genonbeta.CoolSocket.CoolSocket.this
                    java.util.List r1 = r1.getConnections()
                    monitor-enter(r1)
                    com.genonbeta.CoolSocket.CoolSocket r2 = com.genonbeta.CoolSocket.CoolSocket.this     // Catch:{ all -> 0x0091 }
                    java.util.List r2 = r2.getConnections()     // Catch:{ all -> 0x0091 }
                    com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r3 = r0     // Catch:{ all -> 0x0091 }
                    r2.remove(r3)     // Catch:{ all -> 0x0091 }
                    monitor-exit(r1)     // Catch:{ all -> 0x0091 }
                    throw r0
                L_0x0091:
                    r0 = move-exception
                    monitor-exit(r1)     // Catch:{ all -> 0x0091 }
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.CoolSocket.CoolSocket.AnonymousClass2.run():void");
            }
        });
        return true;
    }

    public void setExecutor(ExecutorService executorService) {
        this.mExecutor = executorService;
    }

    public void setMaxConnections(int i) {
        this.mMaxConnections = i;
    }

    public void setSocketAddress(SocketAddress socketAddress) {
        this.mSocketAddress = socketAddress;
    }

    public void setSocketTimeout(int i) {
        this.mSocketTimeout = i;
    }

    public boolean start() {
        if (getServerSocket() == null || getServerSocket().isClosed()) {
            try {
                this.mServerSocket = new ServerSocket();
                getServerSocket().bind(this.mSocketAddress);
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            }
        }
        if (getServerThread() == null || Thread.State.TERMINATED.equals(getServerThread().getState())) {
            this.mServerThread = new Thread(getSocketRunnable());
            getServerThread().setDaemon(true);
            Thread serverThread = getServerThread();
            serverThread.setName(TAG + " Main Thread");
        } else if (getServerThread().isAlive()) {
            return false;
        }
        getServerThread().start();
        return true;
    }

    public boolean startDelayed(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        while (isServerAlive()) {
            if (System.currentTimeMillis() - currentTimeMillis > ((long) i)) {
                return false;
            }
        }
        return start();
    }

    public boolean startEnsured(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        if (!startDelayed(i)) {
            return false;
        }
        while (!isServerAlive()) {
            if (System.currentTimeMillis() - currentTimeMillis > ((long) i)) {
                return false;
            }
        }
        return true;
    }

    public boolean stop() {
        if (isInterrupted()) {
            return false;
        }
        getServerThread().interrupt();
        if (getServerSocket().isClosed()) {
            return true;
        }
        try {
            getServerSocket().close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return true;
        }
    }

    public static class ActiveConnection {
        private int mId;
        private Socket mSocket;
        private int mTimeout;

        public ActiveConnection() {
            this(new Socket());
        }

        public ActiveConnection(int i) {
            this(new Socket(), i);
        }

        public ActiveConnection(Socket socket) {
            this.mTimeout = -1;
            this.mId = getClass().hashCode();
            this.mSocket = socket;
        }

        public ActiveConnection(Socket socket, int i) {
            this(socket);
            setTimeout(i);
        }

        public ActiveConnection connect(SocketAddress socketAddress) throws IOException {
            if (getTimeout() != -1) {
                getSocket().setSoTimeout(getTimeout());
            }
            getSocket().bind((SocketAddress) null);
            getSocket().connect(socketAddress);
            return this;
        }

        /* access modifiers changed from: protected */
        @Deprecated
        public void finalize() throws Throwable {
            super.finalize();
            if (getSocket() != null && !getSocket().isClosed()) {
                PrintStream printStream = System.out;
                printStream.println(CoolSocket.TAG + ": Connections should be closed before their references are being destroyed");
                getSocket().close();
            }
        }

        public InetAddress getAddress() {
            return getSocket().getInetAddress();
        }

        public String getClientAddress() {
            return getAddress().getHostAddress();
        }

        public int getId() {
            return this.mId;
        }

        public Socket getSocket() {
            return this.mSocket;
        }

        public int getTimeout() {
            return this.mTimeout;
        }

        public boolean equals(Object obj) {
            return obj instanceof ActiveConnection ? obj.toString().equals(toString()) : super.equals(obj);
        }

        /* JADX WARNING: Removed duplicated region for block: B:21:0x00a3  */
        /* JADX WARNING: Removed duplicated region for block: B:29:0x009b A[SYNTHETIC] */
        /* JADX WARNING: Removed duplicated region for block: B:7:0x0040  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.genonbeta.CoolSocket.CoolSocket.ActiveConnection.Response receive() throws java.io.IOException, java.util.concurrent.TimeoutException, org.json.JSONException {
            /*
                r14 = this;
                r0 = 8096(0x1fa0, float:1.1345E-41)
                byte[] r0 = new byte[r0]
                int r1 = r14.getTimeout()
                r2 = -1
                r4 = -1
                if (r1 == r4) goto L_0x0018
                long r4 = java.lang.System.currentTimeMillis()
                int r1 = r14.getTimeout()
                long r6 = (long) r1
                long r4 = r4 + r6
                goto L_0x0019
            L_0x0018:
                r4 = r2
            L_0x0019:
                java.net.Socket r1 = r14.getSocket()
                java.io.InputStream r1 = r1.getInputStream()
                java.io.ByteArrayOutputStream r6 = new java.io.ByteArrayOutputStream
                r6.<init>()
                java.io.ByteArrayOutputStream r7 = new java.io.ByteArrayOutputStream
                r7.<init>()
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection$Response r8 = new com.genonbeta.CoolSocket.CoolSocket$ActiveConnection$Response
                r8.<init>()
                java.net.Socket r9 = r14.getSocket()
                java.net.SocketAddress r9 = r9.getRemoteSocketAddress()
                r8.remoteAddress = r9
            L_0x003a:
                int r9 = r1.read(r0)
                if (r9 <= 0) goto L_0x008e
                long r10 = r8.totalLength
                r12 = 0
                int r13 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
                if (r13 == 0) goto L_0x004e
                r7.write(r0, r12, r9)
                r7.flush()
                goto L_0x008e
            L_0x004e:
                r6.write(r0, r12, r9)
                r6.flush()
                java.lang.String r9 = r6.toString()
                java.lang.String r10 = "\nHEADER_END\n"
                boolean r9 = r9.contains(r10)
                if (r9 == 0) goto L_0x008e
                java.lang.String r9 = r6.toString()
                int r10 = r9.indexOf(r10)
                org.json.JSONObject r11 = new org.json.JSONObject
                java.lang.String r12 = r9.substring(r12, r10)
                r11.<init>((java.lang.String) r12)
                java.lang.String r12 = "length"
                long r12 = r11.getLong(r12)
                r8.totalLength = r12
                r8.headerIndex = r11
                int r11 = r6.size()
                if (r10 >= r11) goto L_0x008e
                int r10 = r10 + 12
                java.lang.String r9 = r9.substring(r10)
                byte[] r9 = r9.getBytes()
                r7.write(r9)
            L_0x008e:
                int r9 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
                if (r9 == 0) goto L_0x00a3
                long r9 = java.lang.System.currentTimeMillis()
                int r11 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
                if (r11 > 0) goto L_0x009b
                goto L_0x00a3
            L_0x009b:
                java.util.concurrent.TimeoutException r0 = new java.util.concurrent.TimeoutException
                java.lang.String r1 = "Read timed out!"
                r0.<init>(r1)
                throw r0
            L_0x00a3:
                long r9 = r8.totalLength
                int r11 = r7.size()
                long r11 = (long) r11
                int r13 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
                if (r13 == 0) goto L_0x00b6
                long r9 = r8.totalLength
                r11 = 0
                int r13 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
                if (r13 != 0) goto L_0x003a
            L_0x00b6:
                java.lang.String r0 = r7.toString()
                r8.response = r0
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.CoolSocket.CoolSocket.ActiveConnection.receive():com.genonbeta.CoolSocket.CoolSocket$ActiveConnection$Response");
        }

        public void reply(String str) throws TimeoutException, IOException, JSONException {
            int read;
            byte[] bytes = str == null ? new byte[0] : str.getBytes();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            PrintWriter printWriter = new PrintWriter(byteArrayOutputStream);
            JSONObject put = new JSONObject().put(CoolSocket.HEADER_ITEM_LENGTH, bytes.length);
            printWriter.write(put.toString() + CoolSocket.HEADER_SEPARATOR);
            printWriter.flush();
            byte[] bArr = new byte[AppConfig.BUFFER_LENGTH_DEFAULT];
            long currentTimeMillis = getTimeout() != -1 ? System.currentTimeMillis() + ((long) getTimeout()) : -1;
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
            DataOutputStream dataOutputStream = new DataOutputStream(getSocket().getOutputStream());
            dataOutputStream.write(byteArrayOutputStream.toByteArray());
            dataOutputStream.flush();
            do {
                read = byteArrayInputStream.read(bArr);
                if (read > 0) {
                    dataOutputStream.write(bArr, 0, read);
                }
                if (currentTimeMillis != -1 && System.currentTimeMillis() > currentTimeMillis) {
                    throw new TimeoutException("Read timed out!");
                }
            } while (read != -1);
        }

        public void setId(int i) {
            this.mId = i;
        }

        public void setTimeout(int i) {
            this.mTimeout = i;
        }

        public class Response {
            public JSONObject headerIndex;
            public SocketAddress remoteAddress;
            public String response;
            public long totalLength = -1;

            public Response() {
            }
        }
    }

    private class ServerRunnable implements Runnable {
        private ServerRunnable() {
        }

        public void run() {
            try {
                CoolSocket.this.onServerStarted();
                do {
                    Socket accept = CoolSocket.this.getServerSocket().accept();
                    if (CoolSocket.this.isInterrupted()) {
                        accept.close();
                    } else {
                        CoolSocket.this.respondRequest(accept);
                    }
                } while (!CoolSocket.this.isInterrupted());
            } catch (IOException e) {
                CoolSocket.this.onInternalError(e);
            } catch (Throwable th) {
                CoolSocket.this.onServerStopped();
                throw th;
            }
            CoolSocket.this.onServerStopped();
        }
    }

    public static class Client {
        private Object mReturn;

        public interface ConnectionHandler {
            void onConnect(Client client);
        }

        public ActiveConnection connect(SocketAddress socketAddress, int i) throws IOException {
            return new ActiveConnection(i).connect(socketAddress);
        }

        public void connect(ActiveConnection activeConnection, SocketAddress socketAddress) throws IOException {
            activeConnection.connect(socketAddress);
        }

        public Object getReturn() {
            return this.mReturn;
        }

        public void setReturn(Object obj) {
            this.mReturn = obj;
        }
    }
}
