package com.genonbeta.TrebleShot.util;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public class NetworkDeviceScanner {
    private ScannerExecutor mExecutor = new ScannerExecutor();
    /* access modifiers changed from: private */
    public ScannerHandler mHandler;
    /* access modifiers changed from: private */
    public List<AddressedInterface> mInterfaces = new ArrayList();
    /* access modifiers changed from: private */
    public boolean mIsBreakRequested = false;
    private boolean mIsLockRequested = false;
    /* access modifiers changed from: private */
    public int mNumberOfThreads = 6;
    private Scanner mScanner = new Scanner();

    public interface ScannerHandler {
        void onDeviceFound(InetAddress inetAddress, NetworkInterface networkInterface);

        void onThreadsCompleted();
    }

    public NetworkDeviceScanner() {
    }

    public NetworkDeviceScanner(int i) {
        this.mNumberOfThreads = i;
    }

    public boolean interrupt() {
        if (this.mIsBreakRequested) {
            return false;
        }
        this.mIsBreakRequested = true;
        return true;
    }

    public boolean isScannerAvailable() {
        return this.mInterfaces.size() == 0 && !this.mIsLockRequested;
    }

    /* access modifiers changed from: private */
    public void nextThread() {
        if (!this.mIsLockRequested) {
            if (isScannerAvailable()) {
                this.mIsBreakRequested = false;
                if (this.mHandler != null) {
                    setLock(true);
                    this.mHandler.onThreadsCompleted();
                    setLock(false);
                    return;
                }
                return;
            }
            this.mScanner.updateScanner();
            for (int i = this.mNumberOfThreads; i > 0; i--) {
                this.mExecutor.execute(this.mScanner);
            }
        }
    }

    public boolean scan(List<AddressedInterface> list, ScannerHandler scannerHandler) {
        if (!isScannerAvailable() || list.size() < 1) {
            return false;
        }
        this.mInterfaces.addAll(list);
        this.mHandler = scannerHandler;
        nextThread();
        return true;
    }

    public void setLock(boolean z) {
        this.mIsLockRequested = z;
    }

    protected class Scanner implements Runnable {
        private String mAddressPrefix = "192.168.0.";
        private boolean[] mDevices = new boolean[256];
        private int mThreadsExited = 0;

        public Scanner() {
        }

        public void updateScanner() {
            this.mAddressPrefix = NetworkUtils.getAddressPrefix(((AddressedInterface) NetworkDeviceScanner.this.mInterfaces.get(0)).getAssociatedAddress());
            this.mDevices = new boolean[256];
            this.mThreadsExited = NetworkDeviceScanner.this.mNumberOfThreads;
        }

        public void run() {
            int i = 0;
            while (true) {
                boolean[] zArr = this.mDevices;
                if (i < zArr.length) {
                    synchronized (zArr) {
                        if (!this.mDevices[i] && i != 0) {
                            if (!NetworkDeviceScanner.this.mIsBreakRequested) {
                                this.mDevices[i] = true;
                                try {
                                    InetAddress byName = InetAddress.getByName(this.mAddressPrefix + i);
                                    if (byName.isReachable(300) && NetworkDeviceScanner.this.mHandler != null) {
                                        NetworkDeviceScanner.this.mHandler.onDeviceFound(byName, ((AddressedInterface) NetworkDeviceScanner.this.mInterfaces.get(0)).getNetworkInterface());
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    }
                    i++;
                } else {
                    int i2 = this.mThreadsExited - 1;
                    this.mThreadsExited = i2;
                    if (i2 == 0) {
                        NetworkDeviceScanner.this.mInterfaces.remove(0);
                        NetworkDeviceScanner.this.nextThread();
                        return;
                    }
                    return;
                }
            }
        }
    }

    protected class ScannerExecutor implements Executor {
        protected ScannerExecutor() {
        }

        public void execute(Runnable runnable) {
            new Thread(runnable).start();
        }
    }
}
