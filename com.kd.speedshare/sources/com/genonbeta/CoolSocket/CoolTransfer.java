package com.genonbeta.CoolSocket;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class CoolTransfer<T> {
    public static final int DELAY_DISABLED = -1;
    private Object mBlockingObject = new Object();
    private ExecutorService mExecutor;
    private int mNotifyDelay = -1;
    private final ArrayList<TransferHandler<T>> mProcess = new ArrayList<>();

    public enum Flag {
        CONTINUE,
        CANCEL_ALL,
        CANCEL_CURRENT
    }

    public enum Status {
        INTERRUPTED,
        RUNNING,
        PENDING
    }

    public abstract void onDestroy(TransferHandler<T> transferHandler);

    public abstract Flag onError(TransferHandler<T> transferHandler, Exception exc);

    public abstract void onNotify(TransferHandler<T> transferHandler, int i);

    public abstract Flag onPrepare(TransferHandler<T> transferHandler);

    public void onPrepareNext(TransferHandler<T> transferHandler) {
    }

    public void onProcessListChanged(ArrayList<TransferHandler<T>> arrayList, TransferHandler<T> transferHandler, boolean z) {
    }

    public abstract void onTaskEnd(TransferHandler<T> transferHandler);

    public abstract Flag onTaskPrepareSocket(TransferHandler<T> transferHandler);

    public Flag onTaskOrientateStreams(TransferHandler<T> transferHandler, InputStream inputStream, OutputStream outputStream) {
        return Flag.CONTINUE;
    }

    /* access modifiers changed from: protected */
    public void addProcess(TransferHandler<T> transferHandler) {
        synchronized (getProcessList()) {
            getProcessList().add(transferHandler);
            onProcessListChanged(getProcessList(), transferHandler, true);
        }
    }

    public Object getBlockingObject() {
        return this.mBlockingObject;
    }

    public ExecutorService getExecutor() {
        if (this.mExecutor == null) {
            this.mExecutor = Executors.newFixedThreadPool(10);
        }
        return this.mExecutor;
    }

    public int getNotifyDelay() {
        return this.mNotifyDelay;
    }

    public ArrayList<TransferHandler<T>> getProcessList() {
        return this.mProcess;
    }

    public void setBlockingObject(Object obj) {
        this.mBlockingObject = obj;
    }

    public void setExecutor(ExecutorService executorService) {
        this.mExecutor = executorService;
    }

    public void setNotifyDelay(int i) {
        this.mNotifyDelay = i;
    }

    /* access modifiers changed from: protected */
    public void removeProcess(TransferHandler<T> transferHandler) {
        synchronized (getProcessList()) {
            getProcessList().remove(transferHandler);
            onProcessListChanged(getProcessList(), transferHandler, false);
        }
    }

    public static class ParentBuilder<T> {
        private byte[] mBuffer;
        private T mExtra;
        private long mFileSize;
        private Flag mFlag = Flag.CANCEL_ALL;
        private int mPort;
        private TransferProgress<T> mProgress;
        private long mSkippedBytes;
        private Socket mSocket;

        public ParentBuilder<T> setBuffer(byte[] bArr) {
            this.mBuffer = bArr;
            return this;
        }

        public byte[] getBuffer() {
            return this.mBuffer;
        }

        public T getExtra() {
            return this.mExtra;
        }

        public long getFileSize() {
            return this.mFileSize;
        }

        public Flag getFlag() {
            return this.mFlag;
        }

        public int getPort() {
            return this.mPort;
        }

        public Socket getSocket() {
            return this.mSocket;
        }

        public long getSkippedBytes() {
            return this.mSkippedBytes;
        }

        public TransferProgress<T> getTransferProgress() {
            if (this.mProgress == null) {
                setTransferProgress(new TransferProgress());
            }
            return this.mProgress;
        }

        public ParentBuilder<T> reset() {
            this.mPort = 0;
            this.mFileSize = 0;
            this.mSkippedBytes = 0;
            this.mBuffer = null;
            this.mSocket = null;
            getTransferProgress().resetCurrentTransferredByte();
            return this;
        }

        public ParentBuilder<T> setExtra(T t) {
            this.mExtra = t;
            return this;
        }

        public ParentBuilder<T> setFileSize(long j) {
            this.mFileSize = j;
            return this;
        }

        public void setFlag(Flag flag) {
            this.mFlag = flag;
        }

        public ParentBuilder<T> setPort(int i) {
            this.mPort = i;
            return this;
        }

        public ParentBuilder<T> setSkippedBytes(long j) {
            this.mSkippedBytes = j;
            return this;
        }

        public ParentBuilder<T> setSocket(Socket socket) {
            this.mSocket = socket;
            return this;
        }

        public ParentBuilder<T> setTransferProgress(TransferProgress<T> transferProgress) {
            this.mProgress = transferProgress;
            return this;
        }

        public ParentBuilder<T> skipBytes(long j) {
            if (getSkippedBytes() > 0) {
                getTransferProgress().decrementTransferredByte(getSkippedBytes());
            }
            setSkippedBytes(j);
            getTransferProgress().incrementTransferredByte(j);
            return this;
        }
    }

    public static abstract class TransferHandler<T> implements Runnable {
        private ParentBuilder<T> mParentBuilder;
        private Status mStatus = Status.PENDING;

        /* access modifiers changed from: protected */
        public abstract void onRun();

        public TransferHandler(ParentBuilder<T> parentBuilder) {
            this.mParentBuilder = parentBuilder;
        }

        public byte[] getBuffer() {
            return getParentBuilder().getBuffer();
        }

        public Flag getFlag() {
            return getParentBuilder().getFlag();
        }

        public long getFileSize() {
            return getParentBuilder().getFileSize();
        }

        public T getExtra() {
            return getParentBuilder().getExtra();
        }

        public int getPort() {
            return getParentBuilder().getPort();
        }

        public ParentBuilder<T> getParentBuilder() {
            return this.mParentBuilder;
        }

        public long getSkippedBytes() {
            return getParentBuilder().getSkippedBytes();
        }

        public Socket getSocket() {
            return getParentBuilder().getSocket();
        }

        public Status getStatus() {
            return this.mStatus;
        }

        public TransferProgress<T> getTransferProgress() {
            return getParentBuilder().getTransferProgress();
        }

        public void setFlag(Flag flag) {
            getParentBuilder().setFlag(flag);
        }

        /* access modifiers changed from: protected */
        public void setSocket(Socket socket) {
            getParentBuilder().setSocket(socket);
        }

        public void setStatus(Status status) {
            this.mStatus = status;
        }

        public void setTransferProgress(TransferProgress<T> transferProgress) {
            getParentBuilder().setTransferProgress(transferProgress);
        }

        public void skipBytes(long j) throws IOException {
            getParentBuilder().skipBytes(j);
        }

        public void run() {
            getTransferProgress().resetCurrentTransferredByte();
            setStatus(Status.RUNNING);
            onRun();
            setStatus(Status.INTERRUPTED);
        }
    }

    public static abstract class Receive<T> extends CoolTransfer<T> {
        public abstract Flag onTaskPrepareSocket(TransferHandler<T> transferHandler, ServerSocket serverSocket);

        public Receive<T>.Handler prepare(Builder<T> builder) {
            return new Handler(builder);
        }

        public Receive<T>.Handler receive(Builder<T> builder, boolean z) {
            return receive(prepare(builder), z);
        }

        public Receive<T>.Handler receive(Receive<T>.Handler handler, boolean z) {
            if (z) {
                handler.run();
            } else {
                getExecutor().submit(handler);
            }
            return handler;
        }

        public static class Builder<T> extends ParentBuilder<T> {
            private OutputStream mOutputStream;
            private ServerSocket mServerSocket;
            private int mTimeout = -1;

            public OutputStream getOutputStream() {
                return this.mOutputStream;
            }

            public ServerSocket getServerSocket() {
                return this.mServerSocket;
            }

            public int getTimeout() {
                return this.mTimeout;
            }

            public ParentBuilder<T> reset() {
                this.mOutputStream = null;
                this.mServerSocket = null;
                this.mTimeout = -1;
                return super.reset();
            }

            public Builder<T> setOutputStream(OutputStream outputStream) {
                this.mOutputStream = outputStream;
                return this;
            }

            public Builder<T> setOutputStream(File file) throws FileNotFoundException {
                return setOutputStream((OutputStream) new FileOutputStream(file));
            }

            public Builder<T> setServerSocket(ServerSocket serverSocket) {
                this.mServerSocket = serverSocket;
                return this;
            }

            public Builder<T> setTimeout(int i) {
                this.mTimeout = i;
                return this;
            }
        }

        public class Handler extends TransferHandler<T> {
            public Handler(Builder<T> builder) {
                super(builder);
            }

            /* access modifiers changed from: protected */
            /* JADX WARNING: Code restructure failed: missing block: B:66:0x0193, code lost:
                if (com.genonbeta.CoolSocket.CoolTransfer.Flag.CANCEL_ALL.equals(getFlag()) == false) goto L_0x0195;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:67:0x0195, code lost:
                r11.this$0.onPrepareNext(r11);
             */
            /* JADX WARNING: Code restructure failed: missing block: B:68:0x019a, code lost:
                r11.this$0.removeProcess(r11);
             */
            /* JADX WARNING: Code restructure failed: missing block: B:90:0x01f3, code lost:
                if (com.genonbeta.CoolSocket.CoolTransfer.Flag.CANCEL_ALL.equals(getFlag()) != false) goto L_0x019a;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:91:0x01f6, code lost:
                return;
             */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onRun() {
                /*
                    r11 = this;
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r0 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this
                    r0.addProcess(r11)
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r0 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = r0.onPrepare(r11)
                    r11.setFlag(r0)
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = r11.getFlag()     // Catch:{ Exception -> 0x01a2 }
                    boolean r0 = r0.equals(r1)     // Catch:{ Exception -> 0x01a2 }
                    if (r0 == 0) goto L_0x014c
                    java.net.ServerSocket r0 = r11.getServerSocket()     // Catch:{ Exception -> 0x01a2 }
                    if (r0 != 0) goto L_0x002c
                    java.net.ServerSocket r0 = new java.net.ServerSocket     // Catch:{ Exception -> 0x01a2 }
                    int r1 = r11.getPort()     // Catch:{ Exception -> 0x01a2 }
                    r0.<init>(r1)     // Catch:{ Exception -> 0x01a2 }
                    r11.setServerSocket(r0)     // Catch:{ Exception -> 0x01a2 }
                L_0x002c:
                    int r0 = r11.getTimeout()     // Catch:{ Exception -> 0x01a2 }
                    r1 = -1
                    if (r0 == r1) goto L_0x003e
                    java.net.ServerSocket r0 = r11.getServerSocket()     // Catch:{ Exception -> 0x01a2 }
                    int r2 = r11.getTimeout()     // Catch:{ Exception -> 0x01a2 }
                    r0.setSoTimeout(r2)     // Catch:{ Exception -> 0x01a2 }
                L_0x003e:
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r0 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this     // Catch:{ Exception -> 0x01a2 }
                    java.net.ServerSocket r2 = r11.getServerSocket()     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = r0.onTaskPrepareSocket(r11, r2)     // Catch:{ Exception -> 0x01a2 }
                    r11.setFlag(r0)     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = r11.getFlag()     // Catch:{ Exception -> 0x01a2 }
                    boolean r0 = r0.equals(r2)     // Catch:{ Exception -> 0x01a2 }
                    if (r0 == 0) goto L_0x014c
                    java.net.ServerSocket r0 = r11.getServerSocket()     // Catch:{ Exception -> 0x01a2 }
                    java.net.Socket r0 = r0.accept()     // Catch:{ Exception -> 0x01a2 }
                    r11.setSocket(r0)     // Catch:{ Exception -> 0x01a2 }
                    int r0 = r11.getTimeout()     // Catch:{ Exception -> 0x01a2 }
                    if (r0 == r1) goto L_0x0073
                    java.net.Socket r0 = r11.getSocket()     // Catch:{ Exception -> 0x01a2 }
                    int r2 = r11.getTimeout()     // Catch:{ Exception -> 0x01a2 }
                    r0.setSoTimeout(r2)     // Catch:{ Exception -> 0x01a2 }
                L_0x0073:
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r0 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = r0.onTaskPrepareSocket(r11)     // Catch:{ Exception -> 0x01a2 }
                    r11.setFlag(r0)     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = r11.getFlag()     // Catch:{ Exception -> 0x01a2 }
                    boolean r0 = r0.equals(r2)     // Catch:{ Exception -> 0x01a2 }
                    if (r0 == 0) goto L_0x014c
                    java.net.Socket r0 = r11.getSocket()     // Catch:{ Exception -> 0x01a2 }
                    java.io.InputStream r0 = r0.getInputStream()     // Catch:{ Exception -> 0x01a2 }
                    long r2 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r4 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this     // Catch:{ Exception -> 0x01a2 }
                    java.io.OutputStream r5 = r11.getOutputStream()     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = r4.onTaskOrientateStreams(r11, r0, r5)     // Catch:{ Exception -> 0x01a2 }
                    r11.setFlag(r4)     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r5 = r11.getFlag()     // Catch:{ Exception -> 0x01a2 }
                    boolean r4 = r4.equals(r5)     // Catch:{ Exception -> 0x01a2 }
                    if (r4 == 0) goto L_0x0142
                    r4 = 0
                    r5 = 0
                L_0x00af:
                    if (r5 == r1) goto L_0x012a
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r5 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this     // Catch:{ Exception -> 0x01a2 }
                    java.lang.Object r5 = r5.getBlockingObject()     // Catch:{ Exception -> 0x01a2 }
                    monitor-enter(r5)     // Catch:{ Exception -> 0x01a2 }
                    byte[] r6 = r11.getBuffer()     // Catch:{ all -> 0x0127 }
                    int r6 = r0.read(r6)     // Catch:{ all -> 0x0127 }
                    if (r6 <= 0) goto L_0x00e0
                    java.io.OutputStream r2 = r11.getOutputStream()     // Catch:{ all -> 0x0127 }
                    byte[] r3 = r11.getBuffer()     // Catch:{ all -> 0x0127 }
                    r2.write(r3, r4, r6)     // Catch:{ all -> 0x0127 }
                    java.io.OutputStream r2 = r11.getOutputStream()     // Catch:{ all -> 0x0127 }
                    r2.flush()     // Catch:{ all -> 0x0127 }
                    long r2 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x0127 }
                    com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r7 = r11.getTransferProgress()     // Catch:{ all -> 0x0127 }
                    long r8 = (long) r6     // Catch:{ all -> 0x0127 }
                    r7.incrementTransferredByte(r8)     // Catch:{ all -> 0x0127 }
                L_0x00e0:
                    monitor-exit(r5)     // Catch:{ all -> 0x0127 }
                    com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r5 = r11.getTransferProgress()     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r7 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this     // Catch:{ Exception -> 0x01a2 }
                    r5.doNotify(r7, r11)     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Receive$Builder r5 = r11.getBuilder()     // Catch:{ Exception -> 0x01a2 }
                    int r5 = r5.getTimeout()     // Catch:{ Exception -> 0x01a2 }
                    if (r5 <= 0) goto L_0x0106
                    long r7 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x01a2 }
                    long r7 = r7 - r2
                    com.genonbeta.CoolSocket.CoolTransfer$Receive$Builder r5 = r11.getBuilder()     // Catch:{ Exception -> 0x01a2 }
                    int r5 = r5.getTimeout()     // Catch:{ Exception -> 0x01a2 }
                    long r9 = (long) r5     // Catch:{ Exception -> 0x01a2 }
                    int r5 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                    if (r5 > 0) goto L_0x011f
                L_0x0106:
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r5 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r7 = r11.getFlag()     // Catch:{ Exception -> 0x01a2 }
                    boolean r5 = r5.equals(r7)     // Catch:{ Exception -> 0x01a2 }
                    if (r5 == 0) goto L_0x011f
                    com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r5 = r11.getTransferProgress()     // Catch:{ Exception -> 0x01a2 }
                    boolean r5 = r5.isInterrupted()     // Catch:{ Exception -> 0x01a2 }
                    if (r5 == 0) goto L_0x011d
                    goto L_0x011f
                L_0x011d:
                    r5 = r6
                    goto L_0x00af
                L_0x011f:
                    java.io.PrintStream r1 = java.lang.System.out     // Catch:{ Exception -> 0x01a2 }
                    java.lang.String r2 = "CoolTransfer: Timed out... Exiting."
                    r1.println(r2)     // Catch:{ Exception -> 0x01a2 }
                    goto L_0x012a
                L_0x0127:
                    r0 = move-exception
                    monitor-exit(r5)     // Catch:{ all -> 0x0127 }
                    throw r0     // Catch:{ Exception -> 0x01a2 }
                L_0x012a:
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = r11.getFlag()     // Catch:{ Exception -> 0x01a2 }
                    boolean r1 = r1.equals(r2)     // Catch:{ Exception -> 0x01a2 }
                    if (r1 == 0) goto L_0x0142
                    com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r1 = r11.getTransferProgress()     // Catch:{ Exception -> 0x01a2 }
                    r1.incrementTransferredFileCount()     // Catch:{ Exception -> 0x01a2 }
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r1 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this     // Catch:{ Exception -> 0x01a2 }
                    r1.onTaskEnd(r11)     // Catch:{ Exception -> 0x01a2 }
                L_0x0142:
                    java.io.OutputStream r1 = r11.getOutputStream()     // Catch:{ Exception -> 0x01a2 }
                    r1.close()     // Catch:{ Exception -> 0x01a2 }
                    r0.close()     // Catch:{ Exception -> 0x01a2 }
                L_0x014c:
                    java.net.Socket r0 = r11.getSocket()     // Catch:{ IOException -> 0x0164 }
                    if (r0 == 0) goto L_0x0168
                    java.net.Socket r0 = r11.getSocket()     // Catch:{ IOException -> 0x0164 }
                    boolean r0 = r0.isClosed()     // Catch:{ IOException -> 0x0164 }
                    if (r0 != 0) goto L_0x0168
                    java.net.Socket r0 = r11.getSocket()     // Catch:{ IOException -> 0x0164 }
                    r0.close()     // Catch:{ IOException -> 0x0164 }
                    goto L_0x0168
                L_0x0164:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x0168:
                    java.net.ServerSocket r0 = r11.getServerSocket()     // Catch:{ IOException -> 0x0180 }
                    if (r0 == 0) goto L_0x0184
                    java.net.ServerSocket r0 = r11.getServerSocket()     // Catch:{ IOException -> 0x0180 }
                    boolean r0 = r0.isClosed()     // Catch:{ IOException -> 0x0180 }
                    if (r0 != 0) goto L_0x0184
                    java.net.ServerSocket r0 = r11.getServerSocket()     // Catch:{ IOException -> 0x0180 }
                    r0.close()     // Catch:{ IOException -> 0x0180 }
                    goto L_0x0184
                L_0x0180:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x0184:
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r0 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this
                    r0.onDestroy(r11)
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CANCEL_ALL
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = r11.getFlag()
                    boolean r0 = r0.equals(r1)
                    if (r0 != 0) goto L_0x019a
                L_0x0195:
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r0 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this
                    r0.onPrepareNext(r11)
                L_0x019a:
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r0 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this
                    r0.removeProcess(r11)
                    goto L_0x01f6
                L_0x01a0:
                    r0 = move-exception
                    goto L_0x01f7
                L_0x01a2:
                    r0 = move-exception
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r1 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this     // Catch:{ all -> 0x01a0 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = r1.onError(r11, r0)     // Catch:{ all -> 0x01a0 }
                    r11.setFlag(r0)     // Catch:{ all -> 0x01a0 }
                    java.net.Socket r0 = r11.getSocket()     // Catch:{ IOException -> 0x01c4 }
                    if (r0 == 0) goto L_0x01c8
                    java.net.Socket r0 = r11.getSocket()     // Catch:{ IOException -> 0x01c4 }
                    boolean r0 = r0.isClosed()     // Catch:{ IOException -> 0x01c4 }
                    if (r0 != 0) goto L_0x01c8
                    java.net.Socket r0 = r11.getSocket()     // Catch:{ IOException -> 0x01c4 }
                    r0.close()     // Catch:{ IOException -> 0x01c4 }
                    goto L_0x01c8
                L_0x01c4:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x01c8:
                    java.net.ServerSocket r0 = r11.getServerSocket()     // Catch:{ IOException -> 0x01e0 }
                    if (r0 == 0) goto L_0x01e4
                    java.net.ServerSocket r0 = r11.getServerSocket()     // Catch:{ IOException -> 0x01e0 }
                    boolean r0 = r0.isClosed()     // Catch:{ IOException -> 0x01e0 }
                    if (r0 != 0) goto L_0x01e4
                    java.net.ServerSocket r0 = r11.getServerSocket()     // Catch:{ IOException -> 0x01e0 }
                    r0.close()     // Catch:{ IOException -> 0x01e0 }
                    goto L_0x01e4
                L_0x01e0:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x01e4:
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r0 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this
                    r0.onDestroy(r11)
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CANCEL_ALL
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = r11.getFlag()
                    boolean r0 = r0.equals(r1)
                    if (r0 != 0) goto L_0x019a
                    goto L_0x0195
                L_0x01f6:
                    return
                L_0x01f7:
                    java.net.Socket r1 = r11.getSocket()     // Catch:{ IOException -> 0x020f }
                    if (r1 == 0) goto L_0x0213
                    java.net.Socket r1 = r11.getSocket()     // Catch:{ IOException -> 0x020f }
                    boolean r1 = r1.isClosed()     // Catch:{ IOException -> 0x020f }
                    if (r1 != 0) goto L_0x0213
                    java.net.Socket r1 = r11.getSocket()     // Catch:{ IOException -> 0x020f }
                    r1.close()     // Catch:{ IOException -> 0x020f }
                    goto L_0x0213
                L_0x020f:
                    r1 = move-exception
                    r1.printStackTrace()
                L_0x0213:
                    java.net.ServerSocket r1 = r11.getServerSocket()     // Catch:{ IOException -> 0x022b }
                    if (r1 == 0) goto L_0x022f
                    java.net.ServerSocket r1 = r11.getServerSocket()     // Catch:{ IOException -> 0x022b }
                    boolean r1 = r1.isClosed()     // Catch:{ IOException -> 0x022b }
                    if (r1 != 0) goto L_0x022f
                    java.net.ServerSocket r1 = r11.getServerSocket()     // Catch:{ IOException -> 0x022b }
                    r1.close()     // Catch:{ IOException -> 0x022b }
                    goto L_0x022f
                L_0x022b:
                    r1 = move-exception
                    r1.printStackTrace()
                L_0x022f:
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r1 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this
                    r1.onDestroy(r11)
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CANCEL_ALL
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = r11.getFlag()
                    boolean r1 = r1.equals(r2)
                    if (r1 != 0) goto L_0x0245
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r1 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this
                    r1.onPrepareNext(r11)
                L_0x0245:
                    com.genonbeta.CoolSocket.CoolTransfer$Receive r1 = com.genonbeta.CoolSocket.CoolTransfer.Receive.this
                    r1.removeProcess(r11)
                    goto L_0x024c
                L_0x024b:
                    throw r0
                L_0x024c:
                    goto L_0x024b
                */
                throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.CoolSocket.CoolTransfer.Receive.Handler.onRun():void");
            }

            public Builder<T> getBuilder() {
                return (Builder) getParentBuilder();
            }

            public OutputStream getOutputStream() {
                return getBuilder().getOutputStream();
            }

            public ServerSocket getServerSocket() {
                return getBuilder().getServerSocket();
            }

            public int getTimeout() {
                return getBuilder().getTimeout();
            }

            public void setServerSocket(ServerSocket serverSocket) {
                getBuilder().setServerSocket(serverSocket);
            }

            public void skipBytes(long j) throws IOException {
                super.skipBytes(j);
            }
        }
    }

    public static abstract class Send<T> extends CoolTransfer<T> {
        public Send<T>.Handler prepare(Builder<T> builder) {
            return new Handler(builder);
        }

        public Send<T>.Handler send(Builder<T> builder, boolean z) {
            return send(prepare(builder), z);
        }

        public Send<T>.Handler send(Send<T>.Handler handler, boolean z) {
            if (z) {
                handler.run();
            } else {
                getExecutor().submit(handler);
            }
            return handler;
        }

        public static class Builder<T> extends ParentBuilder<T> {
            private InputStream mInputStream;
            private String mServerIp;

            public InputStream getInputStream() {
                return this.mInputStream;
            }

            public String getServerIp() {
                return this.mServerIp;
            }

            public ParentBuilder<T> reset() {
                this.mInputStream = null;
                this.mServerIp = null;
                return super.reset();
            }

            public Builder<T> setInputStream(InputStream inputStream) {
                this.mInputStream = inputStream;
                return this;
            }

            public Builder<T> setInputStream(File file) throws FileNotFoundException {
                return setInputStream((InputStream) new FileInputStream(file));
            }

            public Builder<T> setServerIp(String str) {
                this.mServerIp = str;
                return this;
            }
        }

        public class Handler extends TransferHandler<T> {
            public Handler(Builder<T> builder) {
                super(builder);
            }

            public Builder<T> getBuilder() {
                return (Builder) getParentBuilder();
            }

            /* access modifiers changed from: protected */
            /* JADX WARNING: Code restructure failed: missing block: B:45:0x0119, code lost:
                if (com.genonbeta.CoolSocket.CoolTransfer.Flag.CANCEL_ALL.equals(getFlag()) == false) goto L_0x011b;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:46:0x011b, code lost:
                r7.this$0.onPrepareNext(r7);
             */
            /* JADX WARNING: Code restructure failed: missing block: B:47:0x0120, code lost:
                r7.this$0.removeProcess(r7);
             */
            /* JADX WARNING: Code restructure failed: missing block: B:61:0x015d, code lost:
                if (com.genonbeta.CoolSocket.CoolTransfer.Flag.CANCEL_ALL.equals(getFlag()) != false) goto L_0x0120;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:62:0x0160, code lost:
                return;
             */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onRun() {
                /*
                    r7 = this;
                    com.genonbeta.CoolSocket.CoolTransfer$Send r0 = com.genonbeta.CoolSocket.CoolTransfer.Send.this
                    r0.addProcess(r7)
                    com.genonbeta.CoolSocket.CoolTransfer$Send r0 = com.genonbeta.CoolSocket.CoolTransfer.Send.this
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = r0.onPrepare(r7)
                    r7.setFlag(r0)
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = r7.getFlag()     // Catch:{ Exception -> 0x0128 }
                    boolean r0 = r0.equals(r1)     // Catch:{ Exception -> 0x0128 }
                    if (r0 == 0) goto L_0x00ee
                    java.net.Socket r0 = r7.getSocket()     // Catch:{ Exception -> 0x0128 }
                    if (r0 != 0) goto L_0x0030
                    java.net.Socket r0 = new java.net.Socket     // Catch:{ Exception -> 0x0128 }
                    r0.<init>()     // Catch:{ Exception -> 0x0128 }
                    r7.setSocket(r0)     // Catch:{ Exception -> 0x0128 }
                    java.net.Socket r0 = r7.getSocket()     // Catch:{ Exception -> 0x0128 }
                    r1 = 0
                    r0.bind(r1)     // Catch:{ Exception -> 0x0128 }
                L_0x0030:
                    java.net.Socket r0 = r7.getSocket()     // Catch:{ Exception -> 0x0128 }
                    java.net.InetSocketAddress r1 = new java.net.InetSocketAddress     // Catch:{ Exception -> 0x0128 }
                    java.lang.String r2 = r7.getServerIp()     // Catch:{ Exception -> 0x0128 }
                    int r3 = r7.getPort()     // Catch:{ Exception -> 0x0128 }
                    r1.<init>(r2, r3)     // Catch:{ Exception -> 0x0128 }
                    r0.connect(r1)     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Send r0 = com.genonbeta.CoolSocket.CoolTransfer.Send.this     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = r0.onTaskPrepareSocket(r7)     // Catch:{ Exception -> 0x0128 }
                    r7.setFlag(r0)     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = r7.getFlag()     // Catch:{ Exception -> 0x0128 }
                    boolean r0 = r0.equals(r1)     // Catch:{ Exception -> 0x0128 }
                    if (r0 == 0) goto L_0x00ee
                    java.net.Socket r0 = r7.getSocket()     // Catch:{ Exception -> 0x0128 }
                    java.io.OutputStream r0 = r0.getOutputStream()     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Send r1 = com.genonbeta.CoolSocket.CoolTransfer.Send.this     // Catch:{ Exception -> 0x0128 }
                    java.io.InputStream r2 = r7.getInputStream()     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = r1.onTaskOrientateStreams(r7, r2, r0)     // Catch:{ Exception -> 0x0128 }
                    r7.setFlag(r1)     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = r7.getFlag()     // Catch:{ Exception -> 0x0128 }
                    boolean r1 = r1.equals(r2)     // Catch:{ Exception -> 0x0128 }
                    if (r1 == 0) goto L_0x00e4
                    r1 = 0
                    r2 = 0
                L_0x007c:
                    r3 = -1
                    if (r2 == r3) goto L_0x00cc
                    com.genonbeta.CoolSocket.CoolTransfer$Send r2 = com.genonbeta.CoolSocket.CoolTransfer.Send.this     // Catch:{ Exception -> 0x0128 }
                    java.lang.Object r2 = r2.getBlockingObject()     // Catch:{ Exception -> 0x0128 }
                    monitor-enter(r2)     // Catch:{ Exception -> 0x0128 }
                    java.io.InputStream r3 = r7.getInputStream()     // Catch:{ all -> 0x00c9 }
                    byte[] r4 = r7.getBuffer()     // Catch:{ all -> 0x00c9 }
                    int r3 = r3.read(r4)     // Catch:{ all -> 0x00c9 }
                    if (r3 <= 0) goto L_0x00a6
                    byte[] r4 = r7.getBuffer()     // Catch:{ all -> 0x00c9 }
                    r0.write(r4, r1, r3)     // Catch:{ all -> 0x00c9 }
                    r0.flush()     // Catch:{ all -> 0x00c9 }
                    com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r4 = r7.getTransferProgress()     // Catch:{ all -> 0x00c9 }
                    long r5 = (long) r3     // Catch:{ all -> 0x00c9 }
                    r4.incrementTransferredByte(r5)     // Catch:{ all -> 0x00c9 }
                L_0x00a6:
                    monitor-exit(r2)     // Catch:{ all -> 0x00c9 }
                    com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r2 = r7.getTransferProgress()     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Send r4 = com.genonbeta.CoolSocket.CoolTransfer.Send.this     // Catch:{ Exception -> 0x0128 }
                    r2.doNotify(r4, r7)     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = r7.getFlag()     // Catch:{ Exception -> 0x0128 }
                    boolean r2 = r2.equals(r4)     // Catch:{ Exception -> 0x0128 }
                    if (r2 == 0) goto L_0x00cc
                    com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r2 = r7.getTransferProgress()     // Catch:{ Exception -> 0x0128 }
                    boolean r2 = r2.isInterrupted()     // Catch:{ Exception -> 0x0128 }
                    if (r2 == 0) goto L_0x00c7
                    goto L_0x00cc
                L_0x00c7:
                    r2 = r3
                    goto L_0x007c
                L_0x00c9:
                    r0 = move-exception
                    monitor-exit(r2)     // Catch:{ all -> 0x00c9 }
                    throw r0     // Catch:{ Exception -> 0x0128 }
                L_0x00cc:
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = r7.getFlag()     // Catch:{ Exception -> 0x0128 }
                    boolean r1 = r1.equals(r2)     // Catch:{ Exception -> 0x0128 }
                    if (r1 == 0) goto L_0x00e4
                    com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r1 = r7.getTransferProgress()     // Catch:{ Exception -> 0x0128 }
                    r1.incrementTransferredFileCount()     // Catch:{ Exception -> 0x0128 }
                    com.genonbeta.CoolSocket.CoolTransfer$Send r1 = com.genonbeta.CoolSocket.CoolTransfer.Send.this     // Catch:{ Exception -> 0x0128 }
                    r1.onTaskEnd(r7)     // Catch:{ Exception -> 0x0128 }
                L_0x00e4:
                    r0.close()     // Catch:{ Exception -> 0x0128 }
                    java.io.InputStream r0 = r7.getInputStream()     // Catch:{ Exception -> 0x0128 }
                    r0.close()     // Catch:{ Exception -> 0x0128 }
                L_0x00ee:
                    java.net.Socket r0 = r7.getSocket()     // Catch:{ IOException -> 0x0106 }
                    if (r0 == 0) goto L_0x010a
                    java.net.Socket r0 = r7.getSocket()     // Catch:{ IOException -> 0x0106 }
                    boolean r0 = r0.isClosed()     // Catch:{ IOException -> 0x0106 }
                    if (r0 != 0) goto L_0x010a
                    java.net.Socket r0 = r7.getSocket()     // Catch:{ IOException -> 0x0106 }
                    r0.close()     // Catch:{ IOException -> 0x0106 }
                    goto L_0x010a
                L_0x0106:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x010a:
                    com.genonbeta.CoolSocket.CoolTransfer$Send r0 = com.genonbeta.CoolSocket.CoolTransfer.Send.this
                    r0.onDestroy(r7)
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CANCEL_ALL
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = r7.getFlag()
                    boolean r0 = r0.equals(r1)
                    if (r0 != 0) goto L_0x0120
                L_0x011b:
                    com.genonbeta.CoolSocket.CoolTransfer$Send r0 = com.genonbeta.CoolSocket.CoolTransfer.Send.this
                    r0.onPrepareNext(r7)
                L_0x0120:
                    com.genonbeta.CoolSocket.CoolTransfer$Send r0 = com.genonbeta.CoolSocket.CoolTransfer.Send.this
                    r0.removeProcess(r7)
                    goto L_0x0160
                L_0x0126:
                    r0 = move-exception
                    goto L_0x0161
                L_0x0128:
                    r0 = move-exception
                    com.genonbeta.CoolSocket.CoolTransfer$Send r1 = com.genonbeta.CoolSocket.CoolTransfer.Send.this     // Catch:{ all -> 0x0126 }
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = r1.onError(r7, r0)     // Catch:{ all -> 0x0126 }
                    r7.setFlag(r0)     // Catch:{ all -> 0x0126 }
                    java.net.Socket r0 = r7.getSocket()     // Catch:{ IOException -> 0x014a }
                    if (r0 == 0) goto L_0x014e
                    java.net.Socket r0 = r7.getSocket()     // Catch:{ IOException -> 0x014a }
                    boolean r0 = r0.isClosed()     // Catch:{ IOException -> 0x014a }
                    if (r0 != 0) goto L_0x014e
                    java.net.Socket r0 = r7.getSocket()     // Catch:{ IOException -> 0x014a }
                    r0.close()     // Catch:{ IOException -> 0x014a }
                    goto L_0x014e
                L_0x014a:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x014e:
                    com.genonbeta.CoolSocket.CoolTransfer$Send r0 = com.genonbeta.CoolSocket.CoolTransfer.Send.this
                    r0.onDestroy(r7)
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r0 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CANCEL_ALL
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = r7.getFlag()
                    boolean r0 = r0.equals(r1)
                    if (r0 != 0) goto L_0x0120
                    goto L_0x011b
                L_0x0160:
                    return
                L_0x0161:
                    java.net.Socket r1 = r7.getSocket()     // Catch:{ IOException -> 0x0179 }
                    if (r1 == 0) goto L_0x017d
                    java.net.Socket r1 = r7.getSocket()     // Catch:{ IOException -> 0x0179 }
                    boolean r1 = r1.isClosed()     // Catch:{ IOException -> 0x0179 }
                    if (r1 != 0) goto L_0x017d
                    java.net.Socket r1 = r7.getSocket()     // Catch:{ IOException -> 0x0179 }
                    r1.close()     // Catch:{ IOException -> 0x0179 }
                    goto L_0x017d
                L_0x0179:
                    r1 = move-exception
                    r1.printStackTrace()
                L_0x017d:
                    com.genonbeta.CoolSocket.CoolTransfer$Send r1 = com.genonbeta.CoolSocket.CoolTransfer.Send.this
                    r1.onDestroy(r7)
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r1 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CANCEL_ALL
                    com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = r7.getFlag()
                    boolean r1 = r1.equals(r2)
                    if (r1 != 0) goto L_0x0193
                    com.genonbeta.CoolSocket.CoolTransfer$Send r1 = com.genonbeta.CoolSocket.CoolTransfer.Send.this
                    r1.onPrepareNext(r7)
                L_0x0193:
                    com.genonbeta.CoolSocket.CoolTransfer$Send r1 = com.genonbeta.CoolSocket.CoolTransfer.Send.this
                    r1.removeProcess(r7)
                    goto L_0x019a
                L_0x0199:
                    throw r0
                L_0x019a:
                    goto L_0x0199
                */
                throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.CoolSocket.CoolTransfer.Send.Handler.onRun():void");
            }

            public InputStream getInputStream() {
                return getBuilder().getInputStream();
            }

            public String getServerIp() {
                return getBuilder().getServerIp();
            }

            public void skipBytes(long j) throws IOException {
                super.skipBytes(j);
                getInputStream().skip(j);
            }
        }
    }

    public static class TransferProgress<T> {
        private long mCurrentTransferredByte;
        private boolean mInterrupted = false;
        private long mLastNotified;
        private long mStartTime = System.currentTimeMillis();
        private long mTimeElapsed;
        private long mTimePassed;
        private long mTimeRemaining;
        private long mTotalByte;
        private long mTransferredByte;
        private int mTransferredFileCount;

        public int calculatePercentage(long j, long j2) {
            return (int) ((100.0f / ((float) j)) * ((float) j2));
        }

        public long decrementTransferredByte(long j) {
            this.mCurrentTransferredByte -= j;
            long j2 = this.mTransferredByte - j;
            this.mTransferredByte = j2;
            return j2;
        }

        public int decrementTransferredFileCount() {
            int i = this.mTransferredFileCount - 1;
            this.mTransferredFileCount = i;
            return i;
        }

        public boolean doNotify(CoolTransfer<T> coolTransfer, TransferHandler<T> transferHandler) {
            if (coolTransfer.getNotifyDelay() != -1 && System.currentTimeMillis() - getLastNotified() < ((long) coolTransfer.getNotifyDelay())) {
                return false;
            }
            int calculatePercentage = calculatePercentage(getTotalByte(), getTransferredByte());
            setTimeElapsed(System.currentTimeMillis() - getStartTime());
            if (getTotalByte() > 0 && getTransferredByte() > 0) {
                setTimePassed((getTimeElapsed() * getTotalByte()) / getTransferredByte());
                setTimeRemaining(getTimePassed() - getTimeElapsed());
            }
            coolTransfer.onNotify(transferHandler, calculatePercentage);
            this.mLastNotified = System.currentTimeMillis();
            return true;
        }

        public long getCurrentTransferredByte() {
            return this.mCurrentTransferredByte;
        }

        public long getLastNotified() {
            return this.mLastNotified;
        }

        public long getStartTime() {
            return this.mStartTime;
        }

        public long getTimeElapsed() {
            return this.mTimeElapsed;
        }

        public long getTimePassed() {
            return this.mTimePassed;
        }

        public long getTimeRemaining() {
            return this.mTimeRemaining;
        }

        public long getTotalByte() {
            return this.mTotalByte;
        }

        public int getTransferredFileCount() {
            return this.mTransferredFileCount;
        }

        public long getTransferredByte() {
            return this.mTransferredByte;
        }

        public long incrementTransferredByte(long j) {
            this.mCurrentTransferredByte += j;
            long j2 = this.mTransferredByte + j;
            this.mTransferredByte = j2;
            return j2;
        }

        public int incrementTransferredFileCount() {
            int i = this.mTransferredFileCount + 1;
            this.mTransferredFileCount = i;
            return i;
        }

        public void interrupt() {
            this.mInterrupted = true;
        }

        public boolean isInterrupted() {
            return this.mInterrupted;
        }

        public void resetCurrentTransferredByte() {
            this.mCurrentTransferredByte = 0;
        }

        public void setTotalByte(long j) {
            this.mTotalByte = j;
        }

        public void setTransferredByte(long j) {
            this.mTransferredByte = j;
        }

        public void setTransferredFileCount(int i) {
            this.mTransferredFileCount = i;
        }

        public void setStartTime(long j) {
            this.mStartTime = j;
        }

        public void setTimeElapsed(long j) {
            this.mTimeElapsed = j;
        }

        public void setTimePassed(long j) {
            this.mTimePassed = j;
        }

        public void setTimeRemaining(long j) {
            this.mTimeRemaining = j;
        }
    }
}
