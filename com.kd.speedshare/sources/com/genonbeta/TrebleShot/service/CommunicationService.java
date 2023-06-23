package com.genonbeta.TrebleShot.service;

import android.content.ContentValues;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.genonbeta.CoolSocket.CoolSocket;
import com.genonbeta.CoolSocket.CoolTransfer;
import com.genonbeta.TrebleShot.app.Service;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.exception.AssigneeNotFoundException;
import com.genonbeta.TrebleShot.exception.ConnectionNotFoundException;
import com.genonbeta.TrebleShot.exception.DeviceNotFoundException;
import com.genonbeta.TrebleShot.exception.TransferGroupNotFoundException;
import com.genonbeta.TrebleShot.fragment.FileListFragment;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferInstance;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.service.WebShareServer;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.CommunicationNotificationHelper;
import com.genonbeta.TrebleShot.util.DynamicNotification;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.util.HotspotUtils;
import com.genonbeta.TrebleShot.util.NetworkUtils;
import com.genonbeta.TrebleShot.util.NsdDiscovery;
import com.genonbeta.TrebleShot.util.TimeUtils;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.io.LocalDocumentFile;
import com.genonbeta.android.framework.util.Interrupter;
import com.kd.speedshare.R;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public class CommunicationService extends Service {
    public static final String ACTION_CANCEL_INDEXING = "com.genonbeta.TrebleShot.action.CANCEL_INDEXING";
    public static final String ACTION_CANCEL_JOB = "com.genonbeta.TrebleShot.transaction.action.CANCEL_JOB";
    public static final String ACTION_CLIPBOARD = "com.genonbeta.TrebleShot.action.CLIPBOARD";
    public static final String ACTION_DEVICE_ACQUAINTANCE = "com.genonbeta.TrebleShot.transaction.action.DEVICE_ACQUAINTANCE";
    public static final String ACTION_END_SESSION = "com.genonbeta.TrebleShot.action.END_SESSION";
    public static final String ACTION_FILE_TRANSFER = "com.genonbeta.TrebleShot.action.FILE_TRANSFER";
    public static final String ACTION_HOTSPOT_STATUS = "com.genonbeta.TrebleShot.transaction.action.HOTSPOT_STATUS";
    public static final String ACTION_INCOMING_TRANSFER_READY = "com.genonbeta.TrebleShot.transaction.action.INCOMING_TRANSFER_READY";
    public static final String ACTION_IP = "com.genonbeta.TrebleShot.action.IP";
    public static final String ACTION_REQUEST_HOTSPOT_STATUS = "com.genonbeta.TrebleShot.transaction.action.REQUEST_HOTSPOT_STATUS";
    public static final String ACTION_REQUEST_TASK_RUNNING_LIST_CHANGE = "com.genonbeta.TrebleShot.transaction.action.REQUEST_TASK_RUNNING_LIST_CHANGE";
    public static final String ACTION_REQUEST_TASK_STATUS_CHANGE = "com.genonbeta.TrebleShot.transaction.action.REQUEST_TASK_STATUS_CHANGE";
    public static final String ACTION_REQUEST_TRUSTZONE_STATUS = "com.genonbeta.TrebleShot.transaction.action.REQUEST_TRUSTZONE_STATUS";
    public static final String ACTION_REQUEST_WEBSHARE_STATUS = "com.genonbeta.TrebleShot.transaction.action.REQUEST_WEBSHARE_STATUS";
    public static final String ACTION_REVOKE_ACCESS_PIN = "com.genonbeta.TrebleShot.transaction.action.REVOKE_ACCESS_PIN";
    public static final String ACTION_SEAMLESS_RECEIVE = "com.genonbeta.intent.action.SEAMLESS_START";
    public static final String ACTION_SERVICE_CONNECTION_TRANSFER_QUEUE = "com.genonbeta.TrebleShot.transaction.action.SERVICE_CONNECTION_TRANSFER_QUEUE";
    public static final String ACTION_SERVICE_STATUS = "com.genonbeta.TrebleShot.transaction.action.SERVICE_STATUS";
    public static final String ACTION_TASK_RUNNING_LIST_CHANGE = "com.genonbeta.TrebleShot.transaction.action.TASK_RUNNNIG_LIST_CHANGE";
    public static final String ACTION_TASK_STATUS_CHANGE = "com.genonbeta.TrebleShot.transaction.action.TASK_STATUS_CHANGE";
    public static final String ACTION_TOGGLE_HOTSPOT = "com.genonbeta.TrebleShot.transaction.action.TOGGLE_HOTSPOT";
    public static final String ACTION_TOGGLE_SEAMLESS_MODE = "com.genonbeta.TrebleShot.transaction.action.TOGGLE_SEAMLESS_MODE";
    public static final String ACTION_TOGGLE_WEBSHARE = "com.genonbeta.TrebleShot.transaction.action.TOGGLE_WEBSHARE";
    public static final String ACTION_TRUSTZONE_STATUS = "com.genonbeta.TrebleShot.transaction.action.TRUSTZONE_STATUS";
    public static final String ACTION_WEBSHARE_STATUS = "com.genonbeta.TrebleShot.transaction.action.WEBSHARE_STATUS";
    public static final String EXTRA_CLIPBOARD_ACCEPTED = "extraClipboardAccepted";
    public static final String EXTRA_CLIPBOARD_ID = "extraTextId";
    public static final String EXTRA_CONNECTION_ADAPTER_NAME = "extraConnectionAdapterName";
    public static final String EXTRA_DEVICE_ID = "extraDeviceId";
    public static final String EXTRA_DEVICE_LIST_RUNNING = "extraDeviceListRunning";
    public static final String EXTRA_GROUP_ID = "extraGroupId";
    public static final String EXTRA_HOTSPOT_DISABLING = "extraHotspotDisabling";
    public static final String EXTRA_HOTSPOT_ENABLED = "extraHotspotEnabled";
    public static final String EXTRA_HOTSPOT_KEY_MGMT = "extraHotspotKeyManagement";
    public static final String EXTRA_HOTSPOT_NAME = "extraHotspotName";
    public static final String EXTRA_HOTSPOT_PASSWORD = "extraHotspotPassword";
    public static final String EXTRA_IS_ACCEPTED = "extraAccepted";
    public static final String EXTRA_REQUEST_ID = "extraRequestId";
    public static final String EXTRA_STATUS_STARTED = "extraStatusStarted";
    public static final String EXTRA_TASK_CHANGE_TYPE = "extraTaskChangeType";
    public static final String EXTRA_TASK_LIST_RUNNING = "extraTaskListRunning";
    public static final String EXTRA_TOGGLE_WEBSHARE_START_ALWAYS = "extraToggleWebShareStartAlways";
    public static final String TAG = "CommunicationService";
    public static final int TASK_STATUS_ONGOING = 0;
    public static final int TASK_STATUS_STOPPED = 1;
    private List<ProcessHolder> mActiveProcessList = new ArrayList();
    private CommunicationServer mCommunicationServer = new CommunicationServer();
    /* access modifiers changed from: private */
    public boolean mDestroyApproved = false;
    private HotspotUtils mHotspotUtils;
    /* access modifiers changed from: private */
    public MediaScannerConnection mMediaScanner;
    /* access modifiers changed from: private */
    public CommunicationNotificationHelper mNotificationHelper;
    private NsdDiscovery mNsdDiscovery;
    private Map<Long, Interrupter> mOngoingIndexList = new ArrayMap();
    /* access modifiers changed from: private */
    public boolean mPinAccess = false;
    /* access modifiers changed from: private */
    public Receive mReceive = new Receive();
    /* access modifiers changed from: private */
    public boolean mSeamlessMode = false;
    private SeamlessServer mSeamlessServer = new SeamlessServer();
    private ExecutorService mSelfExecutor = Executors.newFixedThreadPool(10);
    /* access modifiers changed from: private */
    public Send mSend = new Send();
    private WebShareServer mWebShareServer = null;
    private WifiManager.WifiLock mWifiLock;

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        this.mNotificationHelper = new CommunicationNotificationHelper(getNotificationUtils());
        this.mNsdDiscovery = new NsdDiscovery(getApplicationContext(), getDatabase(), getDefaultPreferences());
        this.mMediaScanner = new MediaScannerConnection(this, (MediaScannerConnection.MediaScannerConnectionClient) null);
        this.mHotspotUtils = HotspotUtils.getInstance(this);
        this.mWifiLock = ((WifiManager) getApplicationContext().getSystemService("wifi")).createWifiLock(TAG);
        this.mReceive.setNotifyDelay(AppConfig.DEFAULT_NOTIFICATION_DELAY);
        this.mSend.setNotifyDelay(AppConfig.DEFAULT_NOTIFICATION_DELAY);
        this.mMediaScanner.connect();
        this.mNsdDiscovery.registerService();
        if (getWifiLock() != null) {
            getWifiLock().acquire();
        }
        updateServiceState(getDefaultPreferences().getBoolean("trust_always", false));
        if (!AppUtils.checkRunningConditions(this) || !this.mCommunicationServer.start() || !this.mSeamlessServer.start()) {
            stopSelf();
        }
        if ((getHotspotUtils() instanceof HotspotUtils.OreoAPI) && Build.VERSION.SDK_INT >= 26) {
            ((HotspotUtils.OreoAPI) getHotspotUtils()).setSecondaryCallback(new WifiManager.LocalOnlyHotspotCallback() {
                public void onStarted(WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation) {
                    super.onStarted(localOnlyHotspotReservation);
                    CommunicationService.this.sendHotspotStatus(localOnlyHotspotReservation.getWifiConfiguration());
                    if (CommunicationService.this.getDefaultPreferences().getBoolean("hotspot_trust", false)) {
                        CommunicationService.this.updateServiceState(true);
                    }
                }
            });
        }
        try {
            WebShareServer webShareServer = new WebShareServer(this, AppConfig.SERVER_PORT_WEBSHARE);
            this.mWebShareServer = webShareServer;
            webShareServer.setAsyncRunner(new WebShareServer.BoundRunner(Executors.newFixedThreadPool(20)));
        } catch (Throwable unused) {
            Log.e(TAG, "Failed to start Web Share Server");
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(9:75|76|(2:78|(1:80))|81|82|(1:86)|87|88|(1:90)) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:81:0x024a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:87:0x025f */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0267 A[Catch:{ IOException -> 0x038d }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int onStartCommand(android.content.Intent r19, int r20, int r21) {
        /*
            r18 = this;
            r7 = r18
            r0 = r19
            super.onStartCommand(r19, r20, r21)
            if (r0 == 0) goto L_0x0023
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "onStart() : action = "
            r1.append(r2)
            java.lang.String r2 = r19.getAction()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "CommunicationService"
            android.util.Log.d(r2, r1)
        L_0x0023:
            r8 = 1
            if (r0 == 0) goto L_0x038d
            boolean r1 = com.genonbeta.TrebleShot.util.AppUtils.checkRunningConditions(r18)
            if (r1 == 0) goto L_0x038d
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.action.FILE_TRANSFER"
            boolean r1 = r2.equals(r1)
            java.lang.String r2 = "extraAccepted"
            r3 = -1
            java.lang.String r4 = "notificationId"
            r5 = -1
            java.lang.String r9 = "extraGroupId"
            java.lang.String r10 = "extraDeviceId"
            r11 = 0
            if (r1 == 0) goto L_0x00a7
            java.lang.String r10 = r0.getStringExtra(r10)
            long r5 = r0.getLongExtra(r9, r5)
            int r1 = r0.getIntExtra(r4, r3)
            boolean r9 = r0.getBooleanExtra(r2, r11)
            com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r0 = r18.getNotificationHelper()
            com.genonbeta.TrebleShot.util.NotificationUtils r0 = r0.getUtils()
            r0.cancel(r1)
            com.genonbeta.TrebleShot.object.TransferInstance r0 = new com.genonbeta.TrebleShot.object.TransferInstance     // Catch:{ Exception -> 0x0095 }
            com.genonbeta.TrebleShot.database.AccessDatabase r13 = r18.getDatabase()     // Catch:{ Exception -> 0x0095 }
            r17 = 1
            r12 = r0
            r14 = r5
            r16 = r10
            r12.<init>(r13, r14, r16, r17)     // Catch:{ Exception -> 0x0095 }
            com.genonbeta.TrebleShot.database.AccessDatabase r11 = r18.getDatabase()     // Catch:{ Exception -> 0x0095 }
            com.genonbeta.TrebleShot.service.CommunicationService$2 r12 = new com.genonbeta.TrebleShot.service.CommunicationService$2     // Catch:{ Exception -> 0x0095 }
            r1 = r12
            r2 = r18
            r3 = r0
            r13 = r5
            r4 = r13
            r6 = r9
            r1.<init>(r3, r4, r6)     // Catch:{ Exception -> 0x0095 }
            com.genonbeta.TrebleShot.util.CommunicationBridge.connect(r11, r12)     // Catch:{ Exception -> 0x0095 }
            if (r9 == 0) goto L_0x0088
            r7.startFileReceiving(r13, r10)     // Catch:{ Exception -> 0x0095 }
            goto L_0x038d
        L_0x0088:
            com.genonbeta.TrebleShot.database.AccessDatabase r1 = r18.getDatabase()     // Catch:{ Exception -> 0x0095 }
            com.genonbeta.TrebleShot.object.TransferGroup r0 = r0.getGroup()     // Catch:{ Exception -> 0x0095 }
            r1.remove((com.genonbeta.android.database.DatabaseObject) r0)     // Catch:{ Exception -> 0x0095 }
            goto L_0x038d
        L_0x0095:
            r0 = move-exception
            r0.printStackTrace()
            if (r9 == 0) goto L_0x038d
            com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r0 = r18.getNotificationHelper()
            r1 = 2131820807(0x7f110107, float:1.927434E38)
            r0.showToast((int) r1)
            goto L_0x038d
        L_0x00a7:
            java.lang.String r1 = r19.getAction()
            java.lang.String r12 = "com.genonbeta.TrebleShot.action.IP"
            boolean r1 = r12.equals(r1)
            if (r1 == 0) goto L_0x00ea
            java.lang.String r1 = r0.getStringExtra(r10)
            boolean r2 = r0.getBooleanExtra(r2, r11)
            int r0 = r0.getIntExtra(r4, r3)
            com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r3 = r18.getNotificationHelper()
            com.genonbeta.TrebleShot.util.NotificationUtils r3 = r3.getUtils()
            r3.cancel(r0)
            com.genonbeta.TrebleShot.object.NetworkDevice r0 = new com.genonbeta.TrebleShot.object.NetworkDevice
            r0.<init>((java.lang.String) r1)
            com.genonbeta.TrebleShot.database.AccessDatabase r1 = r18.getDatabase()     // Catch:{ Exception -> 0x00e4 }
            r1.reconstruct(r0)     // Catch:{ Exception -> 0x00e4 }
            if (r2 != 0) goto L_0x00d9
            r11 = 1
        L_0x00d9:
            r0.isRestricted = r11     // Catch:{ Exception -> 0x00e4 }
            com.genonbeta.TrebleShot.database.AccessDatabase r1 = r18.getDatabase()     // Catch:{ Exception -> 0x00e4 }
            r1.update((com.genonbeta.android.database.DatabaseObject) r0)     // Catch:{ Exception -> 0x00e4 }
            goto L_0x038d
        L_0x00e4:
            r0 = move-exception
            r0.printStackTrace()
            r0 = 2
            return r0
        L_0x00ea:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.action.CANCEL_INDEXING"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x011e
            int r1 = r0.getIntExtra(r4, r3)
            long r2 = r0.getLongExtra(r9, r5)
            com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r0 = r18.getNotificationHelper()
            com.genonbeta.TrebleShot.util.NotificationUtils r0 = r0.getUtils()
            r0.cancel(r1)
            java.util.Map r0 = r18.getOngoingIndexList()
            java.lang.Long r1 = java.lang.Long.valueOf(r2)
            java.lang.Object r0 = r0.get(r1)
            com.genonbeta.android.framework.util.Interrupter r0 = (com.genonbeta.android.framework.util.Interrupter) r0
            if (r0 == 0) goto L_0x038d
            r0.interrupt()
            goto L_0x038d
        L_0x011e:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.action.CLIPBOARD"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x017e
            java.lang.String r1 = "extraClipboardAccepted"
            boolean r2 = r0.hasExtra(r1)
            if (r2 == 0) goto L_0x017e
            int r2 = r0.getIntExtra(r4, r3)
            java.lang.String r3 = "extraTextId"
            long r3 = r0.getLongExtra(r3, r5)
            boolean r0 = r0.getBooleanExtra(r1, r11)
            com.genonbeta.TrebleShot.object.TextStreamObject r1 = new com.genonbeta.TrebleShot.object.TextStreamObject
            r1.<init>((long) r3)
            com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r3 = r18.getNotificationHelper()
            com.genonbeta.TrebleShot.util.NotificationUtils r3 = r3.getUtils()
            r3.cancel(r2)
            com.genonbeta.TrebleShot.database.AccessDatabase r2 = r18.getDatabase()     // Catch:{ Exception -> 0x0178 }
            r2.reconstruct(r1)     // Catch:{ Exception -> 0x0178 }
            if (r0 == 0) goto L_0x038d
            java.lang.String r0 = "clipboard"
            java.lang.Object r0 = r7.getSystemService(r0)     // Catch:{ Exception -> 0x0178 }
            android.content.ClipboardManager r0 = (android.content.ClipboardManager) r0     // Catch:{ Exception -> 0x0178 }
            java.lang.String r2 = "receivedText"
            java.lang.String r1 = r1.text     // Catch:{ Exception -> 0x0178 }
            android.content.ClipData r1 = android.content.ClipData.newPlainText(r2, r1)     // Catch:{ Exception -> 0x0178 }
            r0.setPrimaryClip(r1)     // Catch:{ Exception -> 0x0178 }
            r0 = 2131820814(0x7f11010e, float:1.9274354E38)
            android.widget.Toast r0 = android.widget.Toast.makeText(r7, r0, r11)     // Catch:{ Exception -> 0x0178 }
            r0.show()     // Catch:{ Exception -> 0x0178 }
            goto L_0x038d
        L_0x0178:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x038d
        L_0x017e:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.action.END_SESSION"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x018f
            r18.stopSelf()
            goto L_0x038d
        L_0x018f:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.intent.action.SEAMLESS_START"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x01d8
            boolean r1 = r0.hasExtra(r9)
            if (r1 == 0) goto L_0x01d8
            boolean r1 = r0.hasExtra(r10)
            if (r1 == 0) goto L_0x01d8
            long r1 = r0.getLongExtra(r9, r5)
            java.lang.String r0 = r0.getStringExtra(r10)
            com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r3 = r7.findProcessById(r1, r0)     // Catch:{ Exception -> 0x01d2 }
            if (r3 != 0) goto L_0x01ba
            r7.startFileReceiving(r1, r0)     // Catch:{ Exception -> 0x01d2 }
            goto L_0x038d
        L_0x01ba:
            r0 = 2131820770(0x7f1100e2, float:1.9274264E38)
            java.lang.Object[] r1 = new java.lang.Object[r8]     // Catch:{ Exception -> 0x01d2 }
            com.genonbeta.TrebleShot.object.TransferObject r2 = r3.transferObject     // Catch:{ Exception -> 0x01d2 }
            java.lang.String r2 = r2.friendlyName     // Catch:{ Exception -> 0x01d2 }
            r1[r11] = r2     // Catch:{ Exception -> 0x01d2 }
            java.lang.String r0 = r7.getString(r0, r1)     // Catch:{ Exception -> 0x01d2 }
            android.widget.Toast r0 = android.widget.Toast.makeText(r7, r0, r11)     // Catch:{ Exception -> 0x01d2 }
            r0.show()     // Catch:{ Exception -> 0x01d2 }
            goto L_0x038d
        L_0x01d2:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x038d
        L_0x01d8:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.CANCEL_JOB"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x0272
            boolean r1 = r0.hasExtra(r9)
            if (r1 == 0) goto L_0x0272
            boolean r1 = r0.hasExtra(r10)
            if (r1 == 0) goto L_0x0272
            int r1 = r0.getIntExtra(r4, r3)
            long r2 = r0.getLongExtra(r9, r5)
            java.lang.String r0 = r0.getStringExtra(r10)
            com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r4 = r7.findProcessById(r2, r0)
            if (r4 != 0) goto L_0x0212
            r7.notifyTaskStatusChange(r2, r0, r8)
            com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r0 = r18.getNotificationHelper()
            com.genonbeta.TrebleShot.util.NotificationUtils r0 = r0.getUtils()
            r0.cancel(r1)
            goto L_0x038d
        L_0x0212:
            com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r0 = r18.getNotificationHelper()
            com.genonbeta.TrebleShot.util.DynamicNotification r0 = r0.notifyStuckThread(r4)
            r4.notification = r0
            com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r0 = r4.builder
            com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r0 = r0.getTransferProgress()
            boolean r0 = r0.isInterrupted()
            if (r0 != 0) goto L_0x0233
            com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r0 = r4.builder
            com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r0 = r0.getTransferProgress()
            r0.interrupt()
            goto L_0x038d
        L_0x0233:
            com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r0 = r4.builder     // Catch:{ Exception -> 0x024a }
            boolean r0 = r0 instanceof com.genonbeta.CoolSocket.CoolTransfer.Receive.Builder     // Catch:{ Exception -> 0x024a }
            if (r0 == 0) goto L_0x024a
            com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r0 = r4.builder     // Catch:{ Exception -> 0x024a }
            com.genonbeta.CoolSocket.CoolTransfer$Receive$Builder r0 = (com.genonbeta.CoolSocket.CoolTransfer.Receive.Builder) r0     // Catch:{ Exception -> 0x024a }
            java.net.ServerSocket r1 = r0.getServerSocket()     // Catch:{ Exception -> 0x024a }
            if (r1 == 0) goto L_0x024a
            java.net.ServerSocket r0 = r0.getServerSocket()     // Catch:{ Exception -> 0x024a }
            r0.close()     // Catch:{ Exception -> 0x024a }
        L_0x024a:
            com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r0 = r4.activeConnection     // Catch:{ IOException -> 0x025f }
            if (r0 == 0) goto L_0x025f
            com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r0 = r4.activeConnection     // Catch:{ IOException -> 0x025f }
            java.net.Socket r0 = r0.getSocket()     // Catch:{ IOException -> 0x025f }
            if (r0 == 0) goto L_0x025f
            com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r0 = r4.activeConnection     // Catch:{ IOException -> 0x025f }
            java.net.Socket r0 = r0.getSocket()     // Catch:{ IOException -> 0x025f }
            r0.close()     // Catch:{ IOException -> 0x025f }
        L_0x025f:
            com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r0 = r4.builder     // Catch:{ IOException -> 0x038d }
            java.net.Socket r0 = r0.getSocket()     // Catch:{ IOException -> 0x038d }
            if (r0 == 0) goto L_0x038d
            com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r0 = r4.builder     // Catch:{ IOException -> 0x038d }
            java.net.Socket r0 = r0.getSocket()     // Catch:{ IOException -> 0x038d }
            r0.close()     // Catch:{ IOException -> 0x038d }
            goto L_0x038d
        L_0x0272:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.TOGGLE_SEAMLESS_MODE"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x0286
            boolean r0 = r7.mSeamlessMode
            r0 = r0 ^ r8
            r7.updateServiceState(r0)
            goto L_0x038d
        L_0x0286:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.TOGGLE_HOTSPOT"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x02a3
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 23
            if (r1 < r2) goto L_0x029e
            boolean r1 = android.provider.Settings.System.canWrite(r18)
            if (r1 == 0) goto L_0x02a3
        L_0x029e:
            r18.setupHotspot()
            goto L_0x038d
        L_0x02a3:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.REQUEST_HOTSPOT_STATUS"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x02bc
            com.genonbeta.TrebleShot.util.HotspotUtils r0 = r18.getHotspotUtils()
            android.net.wifi.WifiConfiguration r0 = r0.getConfiguration()
            r7.sendHotspotStatus(r0)
            goto L_0x038d
        L_0x02bc:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.SERVICE_STATUS"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x0300
            java.lang.String r1 = "extraStatusStarted"
            boolean r2 = r0.hasExtra(r1)
            if (r2 == 0) goto L_0x0300
            boolean r0 = r0.getBooleanExtra(r1, r11)
            if (r0 != 0) goto L_0x02e7
            boolean r0 = r18.hasOngoingTasks()
            if (r0 != 0) goto L_0x02e7
            com.genonbeta.TrebleShot.service.WebShareServer r0 = r7.mWebShareServer
            if (r0 == 0) goto L_0x02e6
            boolean r0 = r0.isAlive()
            if (r0 != 0) goto L_0x02e7
        L_0x02e6:
            r11 = 1
        L_0x02e7:
            r7.mDestroyApproved = r11
            if (r11 == 0) goto L_0x038d
            android.os.Handler r0 = new android.os.Handler
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            r0.<init>(r1)
            com.genonbeta.TrebleShot.service.CommunicationService$3 r1 = new com.genonbeta.TrebleShot.service.CommunicationService$3
            r1.<init>()
            r2 = 3000(0xbb8, double:1.482E-320)
            r0.postDelayed(r1, r2)
            goto L_0x038d
        L_0x0300:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.REQUEST_TASK_STATUS_CHANGE"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x032b
            boolean r1 = r0.hasExtra(r9)
            if (r1 == 0) goto L_0x032b
            boolean r1 = r0.hasExtra(r10)
            if (r1 == 0) goto L_0x032b
            long r1 = r0.getLongExtra(r9, r5)
            java.lang.String r0 = r0.getStringExtra(r10)
            com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r3 = r7.findProcessById(r1, r0)
            if (r3 != 0) goto L_0x0327
            r11 = 1
        L_0x0327:
            r7.notifyTaskStatusChange(r1, r0, r11)
            goto L_0x038d
        L_0x032b:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.REQUEST_TASK_RUNNING_LIST_CHANGE"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x033b
            r18.notifyTaskRunningListChange()
            goto L_0x038d
        L_0x033b:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.REVOKE_ACCESS_PIN"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x034e
            r18.revokePinAccess()
            r18.refreshServiceState()
            goto L_0x038d
        L_0x034e:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.REQUEST_TRUSTZONE_STATUS"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x035e
            r18.sendTrustZoneStatus()
            goto L_0x038d
        L_0x035e:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.REQUEST_WEBSHARE_STATUS"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x036e
            r18.sendWebShareStatus()
            goto L_0x038d
        L_0x036e:
            java.lang.String r1 = r19.getAction()
            java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.TOGGLE_WEBSHARE"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x038d
            java.lang.String r1 = "extraToggleWebShareStartAlways"
            boolean r2 = r0.hasExtra(r1)
            if (r2 == 0) goto L_0x038a
            boolean r0 = r0.getBooleanExtra(r1, r11)
            r7.setWebShareEnabled(r0, r8)
            goto L_0x038d
        L_0x038a:
            r18.toggleWebShare()
        L_0x038d:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.service.CommunicationService.onStartCommand(android.content.Intent, int, int):int");
    }

    public void onDestroy() {
        super.onDestroy();
        this.mCommunicationServer.stop();
        this.mSeamlessServer.stop();
        this.mMediaScanner.disconnect();
        this.mNsdDiscovery.unregisterService();
        ContentValues contentValues = new ContentValues();
        contentValues.put(AccessDatabase.FIELD_TRANSFERGROUP_ISSHAREDONWEB, 0);
        getDatabase().update(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERGROUP, new String[0]).setWhere(String.format("%s = ?", new Object[]{AccessDatabase.FIELD_TRANSFERGROUP_ISSHAREDONWEB}), String.valueOf(1)), contentValues);
        setWebShareEnabled(false, false);
        sendTrustZoneStatus();
        if (getHotspotUtils().unloadPreviousConfig()) {
            getHotspotUtils().disable();
            Log.d(TAG, "onDestroy(): Stopping hotspot (previously started)");
        }
        if (getWifiLock() != null && getWifiLock().isHeld()) {
            getWifiLock().release();
            Log.d(TAG, "onDestroy(): Releasing Wi-Fi lock");
        }
        revokePinAccess();
        stopForeground(true);
        synchronized (getOngoingIndexList()) {
            for (Interrupter next : getOngoingIndexList().values()) {
                next.interrupt(false);
                Log.d(TAG, "onDestroy(): Ongoing indexing stopped: " + next.toString());
            }
        }
        synchronized (getActiveProcessList()) {
            for (ProcessHolder next2 : getActiveProcessList()) {
                if (next2.builder != null) {
                    next2.builder.getTransferProgress().interrupt();
                    Log.d(TAG, "onDestroy(): Killing sending process: " + next2.builder.toString());
                }
            }
        }
    }

    public synchronized boolean addProcess(ProcessHolder processHolder) {
        return getActiveProcessList().add(processHolder);
    }

    public synchronized boolean removeProcess(ProcessHolder processHolder) {
        return getActiveProcessList().remove(processHolder);
    }

    public boolean hasOngoingTasks() {
        return this.mCommunicationServer.getConnections().size() > 0 || getOngoingIndexList().size() > 0 || getActiveProcessList().size() > 0 || this.mHotspotUtils.isStarted();
    }

    public ProcessHolder findProcessById(long j, String str) {
        synchronized (getActiveProcessList()) {
            for (ProcessHolder next : getActiveProcessList()) {
                if (next.groupId == j && str.equals(next.deviceId)) {
                    return next;
                }
            }
            return null;
        }
    }

    public synchronized List<ProcessHolder> getActiveProcessList() {
        return this.mActiveProcessList;
    }

    public HotspotUtils getHotspotUtils() {
        return this.mHotspotUtils;
    }

    public CommunicationNotificationHelper getNotificationHelper() {
        return this.mNotificationHelper;
    }

    public synchronized Map<Long, Interrupter> getOngoingIndexList() {
        return this.mOngoingIndexList;
    }

    public ExecutorService getSelfExecutor() {
        return this.mSelfExecutor;
    }

    public WifiManager.WifiLock getWifiLock() {
        return this.mWifiLock;
    }

    public boolean isProcessRunning(int i, String str) {
        return findProcessById((long) i, str) != null;
    }

    public void notifyTaskStatusChange(long j, String str, int i) {
        sendBroadcast(new Intent(ACTION_TASK_STATUS_CHANGE).putExtra(EXTRA_TASK_CHANGE_TYPE, i).putExtra("extraGroupId", j).putExtra("extraDeviceId", str));
    }

    public void notifyTaskRunningListChange() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        synchronized (getActiveProcessList()) {
            for (ProcessHolder next : getActiveProcessList()) {
                if (!(next.groupId == 0 || next.deviceId == null)) {
                    arrayList.add(Long.valueOf(next.groupId));
                    arrayList2.add(next.deviceId);
                }
            }
        }
        long[] jArr = new long[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            jArr[i] = ((Long) arrayList.get(i)).longValue();
        }
        sendBroadcast(new Intent(ACTION_TASK_RUNNING_LIST_CHANGE).putExtra(EXTRA_TASK_LIST_RUNNING, jArr).putStringArrayListExtra(EXTRA_DEVICE_LIST_RUNNING, arrayList2));
    }

    public void refreshServiceState() {
        updateServiceState(this.mSeamlessMode);
    }

    public void revokePinAccess() {
        getDefaultPreferences().edit().putInt(Keyword.NETWORK_PIN, -1).apply();
    }

    public void sendHotspotStatusDisabling() {
        sendBroadcast(new Intent(ACTION_HOTSPOT_STATUS).putExtra(EXTRA_HOTSPOT_ENABLED, false).putExtra(EXTRA_HOTSPOT_DISABLING, true));
    }

    public void sendHotspotStatus(WifiConfiguration wifiConfiguration) {
        Intent putExtra = new Intent(ACTION_HOTSPOT_STATUS).putExtra(EXTRA_HOTSPOT_ENABLED, wifiConfiguration != null).putExtra(EXTRA_HOTSPOT_DISABLING, false);
        if (wifiConfiguration != null) {
            putExtra.putExtra(EXTRA_HOTSPOT_NAME, wifiConfiguration.SSID).putExtra(EXTRA_HOTSPOT_PASSWORD, wifiConfiguration.preSharedKey).putExtra(EXTRA_HOTSPOT_KEY_MGMT, NetworkUtils.getAllowedKeyManagement(wifiConfiguration));
        }
        sendBroadcast(putExtra);
    }

    public void sendWebShareStatus() {
        sendBroadcast(new Intent(ACTION_WEBSHARE_STATUS).putExtra(EXTRA_STATUS_STARTED, this.mWebShareServer.isAlive()));
    }

    public void setupHotspot() {
        boolean z = !getHotspotUtils().isEnabled();
        if (getDefaultPreferences().getBoolean("hotspot_trust", false) && (!z || Build.VERSION.SDK_INT < 26)) {
            updateServiceState(z);
            Log.d(TAG, "setupHotspot(): Start with TrustZone");
        }
        if (z) {
            getHotspotUtils().enableConfigured(AppUtils.getHotspotName(this), (String) null);
            return;
        }
        getHotspotUtils().disable();
        if (Build.VERSION.SDK_INT >= 26) {
            sendHotspotStatusDisabling();
        }
    }

    public void sendTrustZoneStatus() {
        sendBroadcast(new Intent(ACTION_TRUSTZONE_STATUS).putExtra(EXTRA_STATUS_STARTED, this.mSeamlessMode));
    }

    public void startFileReceiving(long j, String str) throws TransferGroupNotFoundException, DeviceNotFoundException, ConnectionNotFoundException, AssigneeNotFoundException {
        startFileReceiving(new TransferInstance(getDatabase(), j, str, true));
    }

    public void startFileReceiving(TransferInstance transferInstance) {
        CoolSocket.connect(new SeamlessClientHandler(transferInstance));
    }

    public void updateServiceState(boolean z) {
        boolean z2 = false;
        boolean z3 = this.mSeamlessMode != z;
        this.mSeamlessMode = z;
        this.mPinAccess = getDefaultPreferences().getInt(Keyword.NETWORK_PIN, -1) != -1;
        if (z3) {
            sendTrustZoneStatus();
        }
        CommunicationNotificationHelper notificationHelper = getNotificationHelper();
        boolean z4 = this.mSeamlessMode;
        boolean z5 = this.mPinAccess;
        WebShareServer webShareServer = this.mWebShareServer;
        if (webShareServer != null && webShareServer.isAlive()) {
            z2 = true;
        }
        startForeground(1, notificationHelper.getCommunicationServiceNotification(z4, z5, z2).build());
    }

    public void setWebShareEnabled(boolean z, boolean z2) {
        boolean z3 = !this.mWebShareServer.isAlive();
        if (!z && !z3) {
            this.mWebShareServer.stop();
        } else if (z && z3) {
            try {
                this.mWebShareServer.start(5000, false);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (z2) {
            updateServiceState(this.mSeamlessMode);
        }
        sendWebShareStatus();
    }

    public void toggleWebShare() {
        setWebShareEnabled(!this.mWebShareServer.isAlive(), true);
    }

    public class CommunicationServer extends CoolSocket {
        public CommunicationServer() {
            super(AppConfig.SERVER_PORT_COMMUNICATION);
            setSocketTimeout(AppConfig.DEFAULT_SOCKET_TIMEOUT_LARGE);
        }

        /* access modifiers changed from: protected */
        /* JADX WARNING: Can't fix incorrect switch cases order */
        /* JADX WARNING: Code restructure failed: missing block: B:100:0x01a2, code lost:
            if (r0 == 4) goto L_0x02ad;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:101:0x01a4, code lost:
            if (r0 == 5) goto L_0x01a8;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:104:0x01aa, code lost:
            if (r12.isTrusted != false) goto L_0x01b3;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:105:0x01ac, code lost:
            r11.put(com.genonbeta.TrebleShot.config.Keyword.ERROR, (java.lang.Object) com.genonbeta.TrebleShot.config.Keyword.ERROR_REQUIRE_TRUSTZONE);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:107:0x01b7, code lost:
            if (r7.has("groupId") == false) goto L_0x02ac;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:110:?, code lost:
            r4 = (long) r7.getInt("groupId");
            r9.this$0.getDatabase().reconstruct(new com.genonbeta.TrebleShot.object.TransferGroup(r4));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:111:0x01d4, code lost:
            if (r9.this$0.findProcessById(r4, r12.deviceId) != null) goto L_0x01df;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:112:0x01d6, code lost:
            r9.this$0.startFileReceiving(r4, r12.deviceId);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:113:0x01df, code lost:
            r7.put(com.genonbeta.TrebleShot.config.Keyword.ERROR, (java.lang.Object) com.genonbeta.TrebleShot.config.Keyword.ERROR_NOT_ACCESSIBLE);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:117:?, code lost:
            r7.put(com.genonbeta.TrebleShot.config.Keyword.ERROR, (java.lang.Object) com.genonbeta.TrebleShot.config.Keyword.ERROR_NOT_FOUND);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:118:0x01ed, code lost:
            r9.this$0.sendBroadcast(new android.content.Intent(com.genonbeta.TrebleShot.service.CommunicationService.ACTION_DEVICE_ACQUAINTANCE).putExtra("extraDeviceId", r12.deviceId).putExtra(com.genonbeta.TrebleShot.service.CommunicationService.EXTRA_CONNECTION_ADAPTER_NAME, r15.adapterName));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:120:0x020f, code lost:
            if (r7.has(com.genonbeta.TrebleShot.config.Keyword.TRANSFER_CLIPBOARD_TEXT) == false) goto L_0x02ac;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:121:0x0211, code lost:
            r0 = new com.genonbeta.TrebleShot.object.TextStreamObject((long) com.genonbeta.TrebleShot.util.AppUtils.getUniqueNumber(), r7.getString(com.genonbeta.TrebleShot.config.Keyword.TRANSFER_CLIPBOARD_TEXT));
            r9.this$0.getDatabase().publish((com.genonbeta.android.database.DatabaseObject) r0);
            r9.this$0.getNotificationHelper().notifyClipboardRequest(r12, r0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:123:0x0237, code lost:
            if (r7.has("groupId") == false) goto L_0x02ac;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:124:0x0239, code lost:
            r0 = r7.getInt("groupId");
            r1 = r7.getBoolean(com.genonbeta.TrebleShot.config.Keyword.TRANSFER_IS_ACCEPTED);
            r2 = new com.genonbeta.TrebleShot.object.TransferGroup((long) r0);
            r0 = new com.genonbeta.TrebleShot.object.TransferGroup.Assignee(r2, r12);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:126:?, code lost:
            r9.this$0.getDatabase().reconstruct(r2);
            r9.this$0.getDatabase().reconstruct(r0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:127:0x0260, code lost:
            if (r1 != false) goto L_0x02ad;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:128:0x0262, code lost:
            r9.this$0.getDatabase().remove((com.genonbeta.android.database.DatabaseObject) r0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:131:0x0270, code lost:
            if (r7.has(com.genonbeta.TrebleShot.config.Keyword.FILES_INDEX) == false) goto L_0x02ac;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:133:0x0276, code lost:
            if (r7.has("groupId") == false) goto L_0x02ac;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:135:0x0282, code lost:
            if (r9.this$0.getOngoingIndexList().size() >= 1) goto L_0x02ac;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:136:0x0284, code lost:
            r0 = r7.getString(com.genonbeta.TrebleShot.config.Keyword.FILES_INDEX);
            r3 = r7.getLong("groupId");
            r14 = r9.this$0.getSelfExecutor();
            r5 = r12;
            r6 = r15;
            r7 = r0;
            r0 = r1;
            r8 = r17;
            r1 = new com.genonbeta.TrebleShot.service.CommunicationService.CommunicationServer.AnonymousClass2(r18);
            r14.submit(r0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:94:0x0197, code lost:
            r0 = 65535;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:96:0x019a, code lost:
            if (r0 == 0) goto L_0x026c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:97:0x019c, code lost:
            if (r0 == 1) goto L_0x0233;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:98:0x019e, code lost:
            if (r0 == 2) goto L_0x020b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:99:0x01a0, code lost:
            if (r0 == 3) goto L_0x01ed;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onConnected(com.genonbeta.CoolSocket.CoolSocket.ActiveConnection r19) {
            /*
                r18 = this;
                r9 = r18
                r10 = r19
                java.lang.String r1 = "clipboardText"
                java.lang.String r2 = "filesIndex"
                java.lang.String r0 = "deviceId"
                java.lang.String r3 = "handshakeOnly"
                java.lang.String r4 = "handshakeRequired"
                java.lang.String r5 = "secureKey"
                java.lang.String r6 = "request"
                java.net.InetAddress r7 = r19.getAddress()
                int r7 = r9.getConnectionCountByAddress(r7)
                r8 = 3
                if (r7 <= r8) goto L_0x001e
                return
            L_0x001e:
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection$Response r7 = r19.receive()     // Catch:{ Exception -> 0x02b1 }
                org.json.JSONObject r7 = r9.analyzeResponse(r7)     // Catch:{ Exception -> 0x02b1 }
                org.json.JSONObject r11 = new org.json.JSONObject     // Catch:{ Exception -> 0x02b1 }
                r11.<init>()     // Catch:{ Exception -> 0x02b1 }
                boolean r12 = r7.has(r6)     // Catch:{ Exception -> 0x02b1 }
                r13 = 1
                if (r12 == 0) goto L_0x005a
                java.lang.String r12 = "backCompRequestSendUpdate"
                java.lang.String r14 = r7.getString(r6)     // Catch:{ Exception -> 0x02b1 }
                boolean r12 = r12.equals(r14)     // Catch:{ Exception -> 0x02b1 }
                if (r12 == 0) goto L_0x005a
                java.lang.String r0 = "result"
                org.json.JSONObject r0 = r11.put((java.lang.String) r0, (boolean) r13)     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x02b1 }
                r10.reply(r0)     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.service.CommunicationService r0 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                java.util.concurrent.ExecutorService r0 = r0.getSelfExecutor()     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.service.CommunicationService$CommunicationServer$1 r1 = new com.genonbeta.TrebleShot.service.CommunicationService$CommunicationServer$1     // Catch:{ Exception -> 0x02b1 }
                r1.<init>(r10)     // Catch:{ Exception -> 0x02b1 }
                r0.submit(r1)     // Catch:{ Exception -> 0x02b1 }
                return
            L_0x005a:
                com.genonbeta.TrebleShot.service.CommunicationService r12 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                android.content.SharedPreferences r12 = r12.getDefaultPreferences()     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r14 = "pin"
                r15 = -1
                int r12 = r12.getInt(r14, r15)     // Catch:{ Exception -> 0x02b1 }
                r14 = 0
                if (r12 == r15) goto L_0x0078
                boolean r16 = r7.has(r5)     // Catch:{ Exception -> 0x02b1 }
                if (r16 == 0) goto L_0x0078
                int r5 = r7.getInt(r5)     // Catch:{ Exception -> 0x02b1 }
                if (r5 != r12) goto L_0x0078
                r5 = 1
                goto L_0x0079
            L_0x0078:
                r5 = 0
            L_0x0079:
                com.genonbeta.TrebleShot.service.CommunicationService r12 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.util.AppUtils.applyDeviceToJSON(r12, r11)     // Catch:{ Exception -> 0x02b1 }
                boolean r12 = r7.has(r4)     // Catch:{ Exception -> 0x02b1 }
                r15 = 0
                if (r12 == 0) goto L_0x00b1
                boolean r4 = r7.getBoolean(r4)     // Catch:{ Exception -> 0x02b1 }
                if (r4 == 0) goto L_0x00b1
                r9.pushReply(r10, r11, r13)     // Catch:{ Exception -> 0x02b1 }
                boolean r4 = r7.has(r3)     // Catch:{ Exception -> 0x02b1 }
                if (r4 == 0) goto L_0x009c
                boolean r3 = r7.getBoolean(r3)     // Catch:{ Exception -> 0x02b1 }
                if (r3 != 0) goto L_0x009b
                goto L_0x009c
            L_0x009b:
                return
            L_0x009c:
                boolean r3 = r7.has(r0)     // Catch:{ Exception -> 0x02b1 }
                if (r3 == 0) goto L_0x00a7
                java.lang.String r0 = r7.getString(r0)     // Catch:{ Exception -> 0x02b1 }
                goto L_0x00a8
            L_0x00a7:
                r0 = r15
            L_0x00a8:
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection$Response r3 = r19.receive()     // Catch:{ Exception -> 0x02b1 }
                org.json.JSONObject r7 = r9.analyzeResponse(r3)     // Catch:{ Exception -> 0x02b1 }
                goto L_0x00b2
            L_0x00b1:
                r0 = r15
            L_0x00b2:
                if (r0 == 0) goto L_0x02ac
                com.genonbeta.TrebleShot.object.NetworkDevice r3 = new com.genonbeta.TrebleShot.object.NetworkDevice     // Catch:{ Exception -> 0x02b1 }
                r3.<init>((java.lang.String) r0)     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.service.CommunicationService r0 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x00cb }
                com.genonbeta.TrebleShot.database.AccessDatabase r0 = r0.getDatabase()     // Catch:{ Exception -> 0x00cb }
                r0.reconstruct(r3)     // Catch:{ Exception -> 0x00cb }
                if (r5 == 0) goto L_0x00c6
                r3.isRestricted = r14     // Catch:{ Exception -> 0x00cb }
            L_0x00c6:
                boolean r0 = r3.isRestricted     // Catch:{ Exception -> 0x00cb }
                r0 = r0 ^ r13
                r12 = r3
                goto L_0x00fd
            L_0x00cb:
                r0 = move-exception
                r0.printStackTrace()     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.service.CommunicationService r0 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.database.AccessDatabase r0 = r0.getDatabase()     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r3 = r19.getClientAddress()     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.object.NetworkDevice r0 = com.genonbeta.TrebleShot.util.NetworkDeviceLoader.load(r13, r0, r3, r15)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x02a4
                r0.isTrusted = r14     // Catch:{ Exception -> 0x02b1 }
                if (r5 == 0) goto L_0x00e5
                r0.isRestricted = r14     // Catch:{ Exception -> 0x02b1 }
            L_0x00e5:
                com.genonbeta.TrebleShot.service.CommunicationService r3 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.database.AccessDatabase r3 = r3.getDatabase()     // Catch:{ Exception -> 0x02b1 }
                r3.publish((com.genonbeta.android.database.DatabaseObject) r0)     // Catch:{ Exception -> 0x02b1 }
                boolean r3 = r0.isRestricted     // Catch:{ Exception -> 0x02b1 }
                if (r3 == 0) goto L_0x00fb
                com.genonbeta.TrebleShot.service.CommunicationService r3 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r3 = r3.getNotificationHelper()     // Catch:{ Exception -> 0x02b1 }
                r3.notifyConnectionRequest(r0)     // Catch:{ Exception -> 0x02b1 }
            L_0x00fb:
                r12 = r0
                r0 = 1
            L_0x00fd:
                com.genonbeta.TrebleShot.service.CommunicationService r3 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.database.AccessDatabase r3 = r3.getDatabase()     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r4 = r19.getClientAddress()     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.object.NetworkDevice$Connection r15 = com.genonbeta.TrebleShot.util.NetworkDeviceLoader.processConnection((com.genonbeta.TrebleShot.database.AccessDatabase) r3, (com.genonbeta.TrebleShot.object.NetworkDevice) r12, (java.lang.String) r4)     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.service.CommunicationService r3 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                boolean r3 = r3.mSeamlessMode     // Catch:{ Exception -> 0x02b1 }
                if (r3 == 0) goto L_0x0117
                boolean r3 = r12.isTrusted     // Catch:{ Exception -> 0x02b1 }
                if (r3 != 0) goto L_0x0127
            L_0x0117:
                if (r5 == 0) goto L_0x012a
                com.genonbeta.TrebleShot.service.CommunicationService r3 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                android.content.SharedPreferences r3 = r3.getDefaultPreferences()     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r4 = "qr_trust"
                boolean r3 = r3.getBoolean(r4, r14)     // Catch:{ Exception -> 0x02b1 }
                if (r3 == 0) goto L_0x012a
            L_0x0127:
                r17 = 1
                goto L_0x012c
            L_0x012a:
                r17 = 0
            L_0x012c:
                java.lang.String r3 = "error"
                if (r0 != 0) goto L_0x0137
                java.lang.String r0 = "notAllowed"
                r11.put((java.lang.String) r3, (java.lang.Object) r0)     // Catch:{ Exception -> 0x02b1 }
                goto L_0x02ac
            L_0x0137:
                boolean r0 = r7.has(r6)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x02ac
                if (r5 == 0) goto L_0x014c
                com.genonbeta.TrebleShot.service.CommunicationService r0 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                boolean r0 = r0.mPinAccess     // Catch:{ Exception -> 0x02b1 }
                if (r0 != 0) goto L_0x014c
                com.genonbeta.TrebleShot.service.CommunicationService r0 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                r0.refreshServiceState()     // Catch:{ Exception -> 0x02b1 }
            L_0x014c:
                java.lang.String r0 = r7.getString(r6)     // Catch:{ Exception -> 0x02b1 }
                int r4 = r0.hashCode()     // Catch:{ Exception -> 0x02b1 }
                r5 = 5
                r6 = 4
                r14 = 2
                switch(r4) {
                    case -2046268432: goto L_0x018d;
                    case -1274013144: goto L_0x0183;
                    case -991418830: goto L_0x0179;
                    case -425062502: goto L_0x016f;
                    case 611941406: goto L_0x0165;
                    case 1349876679: goto L_0x015b;
                    default: goto L_0x015a;
                }     // Catch:{ Exception -> 0x02b1 }
            L_0x015a:
                goto L_0x0197
            L_0x015b:
                java.lang.String r4 = "requestClipboard"
                boolean r0 = r0.equals(r4)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x0197
                r0 = 2
                goto L_0x0198
            L_0x0165:
                java.lang.String r4 = "requestStartTransfer"
                boolean r0 = r0.equals(r4)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x0197
                r0 = 5
                goto L_0x0198
            L_0x016f:
                java.lang.String r4 = "requestTransfer"
                boolean r0 = r0.equals(r4)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x0197
                r0 = 0
                goto L_0x0198
            L_0x0179:
                java.lang.String r4 = "requestAcquaintance"
                boolean r0 = r0.equals(r4)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x0197
                r0 = 3
                goto L_0x0198
            L_0x0183:
                java.lang.String r4 = "requestHandshake"
                boolean r0 = r0.equals(r4)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x0197
                r0 = 4
                goto L_0x0198
            L_0x018d:
                java.lang.String r4 = "requestResponse"
                boolean r0 = r0.equals(r4)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x0197
                r0 = 1
                goto L_0x0198
            L_0x0197:
                r0 = -1
            L_0x0198:
                java.lang.String r4 = "groupId"
                if (r0 == 0) goto L_0x026c
                if (r0 == r13) goto L_0x0233
                if (r0 == r14) goto L_0x020b
                if (r0 == r8) goto L_0x01ed
                if (r0 == r6) goto L_0x02ad
                if (r0 == r5) goto L_0x01a8
                goto L_0x02ac
            L_0x01a8:
                boolean r0 = r12.isTrusted     // Catch:{ Exception -> 0x02b1 }
                if (r0 != 0) goto L_0x01b3
                java.lang.String r0 = "errorRequireTrustZone"
                r11.put((java.lang.String) r3, (java.lang.Object) r0)     // Catch:{ Exception -> 0x02b1 }
                goto L_0x02ac
            L_0x01b3:
                boolean r0 = r7.has(r4)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x02ac
                int r0 = r7.getInt(r4)     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.object.TransferGroup r1 = new com.genonbeta.TrebleShot.object.TransferGroup     // Catch:{ Exception -> 0x01e6 }
                long r4 = (long) r0     // Catch:{ Exception -> 0x01e6 }
                r1.<init>((long) r4)     // Catch:{ Exception -> 0x01e6 }
                com.genonbeta.TrebleShot.service.CommunicationService r0 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x01e6 }
                com.genonbeta.TrebleShot.database.AccessDatabase r0 = r0.getDatabase()     // Catch:{ Exception -> 0x01e6 }
                r0.reconstruct(r1)     // Catch:{ Exception -> 0x01e6 }
                com.genonbeta.TrebleShot.service.CommunicationService r0 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x01e6 }
                java.lang.String r1 = r12.deviceId     // Catch:{ Exception -> 0x01e6 }
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r0 = r0.findProcessById(r4, r1)     // Catch:{ Exception -> 0x01e6 }
                if (r0 != 0) goto L_0x01df
                com.genonbeta.TrebleShot.service.CommunicationService r0 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x01e6 }
                java.lang.String r1 = r12.deviceId     // Catch:{ Exception -> 0x01e6 }
                r0.startFileReceiving(r4, r1)     // Catch:{ Exception -> 0x01e6 }
                goto L_0x02ad
            L_0x01df:
                java.lang.String r0 = "notAccessible"
                r7.put((java.lang.String) r3, (java.lang.Object) r0)     // Catch:{ Exception -> 0x01e6 }
                goto L_0x02ac
            L_0x01e6:
                java.lang.String r0 = "notFound"
                r7.put((java.lang.String) r3, (java.lang.Object) r0)     // Catch:{ Exception -> 0x02b1 }
                goto L_0x02ac
            L_0x01ed:
                com.genonbeta.TrebleShot.service.CommunicationService r0 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                android.content.Intent r1 = new android.content.Intent     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r2 = "com.genonbeta.TrebleShot.transaction.action.DEVICE_ACQUAINTANCE"
                r1.<init>(r2)     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r2 = "extraDeviceId"
                java.lang.String r3 = r12.deviceId     // Catch:{ Exception -> 0x02b1 }
                android.content.Intent r1 = r1.putExtra(r2, r3)     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r2 = "extraConnectionAdapterName"
                java.lang.String r3 = r15.adapterName     // Catch:{ Exception -> 0x02b1 }
                android.content.Intent r1 = r1.putExtra(r2, r3)     // Catch:{ Exception -> 0x02b1 }
                r0.sendBroadcast(r1)     // Catch:{ Exception -> 0x02b1 }
                goto L_0x02ad
            L_0x020b:
                boolean r0 = r7.has(r1)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x02ac
                com.genonbeta.TrebleShot.object.TextStreamObject r0 = new com.genonbeta.TrebleShot.object.TextStreamObject     // Catch:{ Exception -> 0x02b1 }
                int r2 = com.genonbeta.TrebleShot.util.AppUtils.getUniqueNumber()     // Catch:{ Exception -> 0x02b1 }
                long r2 = (long) r2     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r1 = r7.getString(r1)     // Catch:{ Exception -> 0x02b1 }
                r0.<init>(r2, r1)     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.database.AccessDatabase r1 = r1.getDatabase()     // Catch:{ Exception -> 0x02b1 }
                r1.publish((com.genonbeta.android.database.DatabaseObject) r0)     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r1 = r1.getNotificationHelper()     // Catch:{ Exception -> 0x02b1 }
                r1.notifyClipboardRequest(r12, r0)     // Catch:{ Exception -> 0x02b1 }
                goto L_0x02ad
            L_0x0233:
                boolean r0 = r7.has(r4)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x02ac
                int r0 = r7.getInt(r4)     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r1 = "isAccepted"
                boolean r1 = r7.getBoolean(r1)     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.object.TransferGroup r2 = new com.genonbeta.TrebleShot.object.TransferGroup     // Catch:{ Exception -> 0x02b1 }
                long r3 = (long) r0     // Catch:{ Exception -> 0x02b1 }
                r2.<init>((long) r3)     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.object.TransferGroup$Assignee r0 = new com.genonbeta.TrebleShot.object.TransferGroup$Assignee     // Catch:{ Exception -> 0x02b1 }
                r0.<init>((com.genonbeta.TrebleShot.object.TransferGroup) r2, (com.genonbeta.TrebleShot.object.NetworkDevice) r12)     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.service.CommunicationService r3 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02ac }
                com.genonbeta.TrebleShot.database.AccessDatabase r3 = r3.getDatabase()     // Catch:{ Exception -> 0x02ac }
                r3.reconstruct(r2)     // Catch:{ Exception -> 0x02ac }
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02ac }
                com.genonbeta.TrebleShot.database.AccessDatabase r2 = r2.getDatabase()     // Catch:{ Exception -> 0x02ac }
                r2.reconstruct(r0)     // Catch:{ Exception -> 0x02ac }
                if (r1 != 0) goto L_0x02ad
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02ac }
                com.genonbeta.TrebleShot.database.AccessDatabase r1 = r1.getDatabase()     // Catch:{ Exception -> 0x02ac }
                r1.remove((com.genonbeta.android.database.DatabaseObject) r0)     // Catch:{ Exception -> 0x02ac }
                goto L_0x02ad
            L_0x026c:
                boolean r0 = r7.has(r2)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x02ac
                boolean r0 = r7.has(r4)     // Catch:{ Exception -> 0x02b1 }
                if (r0 == 0) goto L_0x02ac
                com.genonbeta.TrebleShot.service.CommunicationService r0 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                java.util.Map r0 = r0.getOngoingIndexList()     // Catch:{ Exception -> 0x02b1 }
                int r0 = r0.size()     // Catch:{ Exception -> 0x02b1 }
                if (r0 >= r13) goto L_0x02ac
                java.lang.String r0 = r7.getString(r2)     // Catch:{ Exception -> 0x02b1 }
                long r3 = r7.getLong(r4)     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x02b1 }
                java.util.concurrent.ExecutorService r14 = r1.getSelfExecutor()     // Catch:{ Exception -> 0x02b1 }
                com.genonbeta.TrebleShot.service.CommunicationService$CommunicationServer$2 r8 = new com.genonbeta.TrebleShot.service.CommunicationService$CommunicationServer$2     // Catch:{ Exception -> 0x02b1 }
                r1 = r8
                r2 = r18
                r5 = r12
                r6 = r15
                r7 = r0
                r0 = r8
                r8 = r17
                r1.<init>(r3, r5, r6, r7, r8)     // Catch:{ Exception -> 0x02b1 }
                r14.submit(r0)     // Catch:{ Exception -> 0x02b1 }
                goto L_0x02ad
            L_0x02a4:
                java.lang.Exception r0 = new java.lang.Exception     // Catch:{ Exception -> 0x02b1 }
                java.lang.String r1 = "Could not reach to the opposite server"
                r0.<init>(r1)     // Catch:{ Exception -> 0x02b1 }
                throw r0     // Catch:{ Exception -> 0x02b1 }
            L_0x02ac:
                r13 = 0
            L_0x02ad:
                r9.pushReply(r10, r11, r13)     // Catch:{ Exception -> 0x02b1 }
                goto L_0x02b5
            L_0x02b1:
                r0 = move-exception
                r0.printStackTrace()
            L_0x02b5:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.service.CommunicationService.CommunicationServer.onConnected(com.genonbeta.CoolSocket.CoolSocket$ActiveConnection):void");
        }

        public JSONObject analyzeResponse(CoolSocket.ActiveConnection.Response response) throws JSONException {
            JSONObject jSONObject;
            if (response.totalLength > 0) {
                String str = response.response;
            } else {
                jSONObject = new JSONObject();
            }
            return jSONObject;
        }

        public void pushReply(CoolSocket.ActiveConnection activeConnection, JSONObject jSONObject, boolean z) throws JSONException, TimeoutException, IOException {
            activeConnection.reply(jSONObject.put(Keyword.RESULT, z).toString());
        }
    }

    private class SeamlessServer extends CoolSocket {
        public SeamlessServer() {
            super(AppConfig.SERVER_PORT_SEAMLESS);
            setSocketTimeout(5000);
        }

        /* JADX INFO: finally extract failed */
        /*  JADX ERROR: IndexOutOfBoundsException in pass: RegionMakerVisitor
            java.lang.IndexOutOfBoundsException: Index: 0, Size: 0
            	at java.util.ArrayList.rangeCheck(ArrayList.java:659)
            	at java.util.ArrayList.get(ArrayList.java:435)
            	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:101)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:611)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.processMonitorEnter(RegionMaker.java:561)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:133)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
            	at jadx.core.dex.visitors.regions.RegionMaker.processExcHandler(RegionMaker.java:1043)
            	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:975)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
            */
        /* JADX WARNING: Removed duplicated region for block: B:282:0x0748 A[Catch:{ IOException -> 0x0750 }] */
        /* JADX WARNING: Removed duplicated region for block: B:290:0x0771  */
        /* JADX WARNING: Removed duplicated region for block: B:291:0x077d  */
        /* JADX WARNING: Unknown top exception splitter block from list: {B:311:0x07b8=Splitter:B:311:0x07b8, B:42:0x019b=Splitter:B:42:0x019b, B:125:0x03cb=Splitter:B:125:0x03cb} */
        protected void onConnected(com.genonbeta.CoolSocket.CoolSocket.ActiveConnection r17) {
            /*
                r16 = this;
                r1 = r16
                r2 = r17
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r3 = new com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder
                com.genonbeta.TrebleShot.service.CommunicationService r4 = com.genonbeta.TrebleShot.service.CommunicationService.this
                r3.<init>()
                r3.activeConnection = r2
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING
                r3.type = r4
                com.genonbeta.CoolSocket.CoolTransfer$Send$Builder r4 = new com.genonbeta.CoolSocket.CoolTransfer$Send$Builder
                r4.<init>()
                r3.builder = r4
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r4 = r3.builder
                r4.setExtra(r3)
                com.genonbeta.TrebleShot.service.CommunicationService r4 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r4 = r4.getActiveProcessList()
                monitor-enter(r4)
                com.genonbeta.TrebleShot.service.CommunicationService r5 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x08da }
                java.util.List r5 = r5.getActiveProcessList()     // Catch:{ all -> 0x08da }
                r5.add(r3)     // Catch:{ all -> 0x08da }
                monitor-exit(r4)     // Catch:{ all -> 0x08da }
                r6 = 0
                r7 = 1
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection$Response r8 = r17.receive()     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                java.lang.String r9 = TAG     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                r10.<init>()     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                java.lang.String r11 = "SeamlessServer.onConnected(): receive: "
                r10.append(r11)     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                java.lang.String r11 = r8.response     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                r10.append(r11)     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                java.lang.String r10 = r10.toString()     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                android.util.Log.d(r9, r10)     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                org.json.JSONObject r9 = new org.json.JSONObject     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                java.lang.String r8 = r8.response     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                r9.<init>((java.lang.String) r8)     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                java.lang.String r8 = "deviceId"
                boolean r8 = r9.has(r8)     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                if (r8 == 0) goto L_0x0063
                java.lang.String r8 = "deviceId"
                java.lang.String r8 = r9.getString(r8)     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                r14 = r8
                goto L_0x0064
            L_0x0063:
                r14 = r6
            L_0x0064:
                java.lang.String r8 = "groupId"
                int r8 = r9.getInt(r8)     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                r2.setId(r8)     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                org.json.JSONObject r9 = new org.json.JSONObject     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                r9.<init>()     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                java.lang.String r10 = "result"
                r15 = 0
                org.json.JSONObject r9 = r9.put((java.lang.String) r10, (boolean) r15)     // Catch:{ Exception -> 0x07e2, all -> 0x07dd }
                if (r14 == 0) goto L_0x00b3
                com.genonbeta.TrebleShot.object.NetworkDevice r10 = new com.genonbeta.TrebleShot.object.NetworkDevice     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                r10.<init>((java.lang.String) r14)     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.service.CommunicationService r11 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.database.AccessDatabase r11 = r11.getDatabase()     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                r11.reconstruct(r10)     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.service.CommunicationService r11 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.database.AccessDatabase r11 = r11.getDatabase()     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                java.lang.String r12 = r17.getClientAddress()     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.object.NetworkDevice$Connection r11 = com.genonbeta.TrebleShot.util.NetworkDeviceLoader.processConnection((com.genonbeta.TrebleShot.database.AccessDatabase) r11, (com.genonbeta.TrebleShot.object.NetworkDevice) r10, (java.lang.String) r12)     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.object.TransferInstance$Builder r12 = new com.genonbeta.TrebleShot.object.TransferInstance$Builder     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                r12.<init>()     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.object.TransferInstance$Builder r11 = r12.supply((com.genonbeta.TrebleShot.object.NetworkDevice.Connection) r11)     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.object.TransferInstance$Builder r10 = r11.supply((com.genonbeta.TrebleShot.object.NetworkDevice) r10)     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.service.CommunicationService r11 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.database.AccessDatabase r11 = r11.getDatabase()     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                long r12 = (long) r8     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                r8 = 1
                r4 = 0
                r15 = r8
                com.genonbeta.TrebleShot.object.TransferInstance r5 = r10.build(r11, r12, r14, r15)     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                goto L_0x00c6
            L_0x00b3:
                r4 = 0
                com.genonbeta.TrebleShot.object.TransferInstance r5 = new com.genonbeta.TrebleShot.object.TransferInstance     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.service.CommunicationService r10 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                com.genonbeta.TrebleShot.database.AccessDatabase r11 = r10.getDatabase()     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                long r12 = (long) r8     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                java.lang.String r14 = r17.getClientAddress()     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
                r15 = 0
                r10 = r5
                r10.<init>(r11, r12, r14, r15)     // Catch:{ TransferGroupNotFoundException -> 0x0710, DeviceNotFoundException -> 0x066a, all -> 0x0665 }
            L_0x00c6:
                com.genonbeta.TrebleShot.object.TransferGroup r8 = r5.getGroup()     // Catch:{ TransferGroupNotFoundException -> 0x0661, DeviceNotFoundException -> 0x065e }
                long r10 = r8.groupId     // Catch:{ TransferGroupNotFoundException -> 0x0661, DeviceNotFoundException -> 0x065e }
                r3.groupId = r10     // Catch:{ TransferGroupNotFoundException -> 0x0661, DeviceNotFoundException -> 0x065e }
                com.genonbeta.TrebleShot.object.TransferGroup$Assignee r8 = r5.getAssignee()     // Catch:{ TransferGroupNotFoundException -> 0x0661, DeviceNotFoundException -> 0x065e }
                java.lang.String r8 = r8.deviceId     // Catch:{ TransferGroupNotFoundException -> 0x0661, DeviceNotFoundException -> 0x065e }
                r3.deviceId = r8     // Catch:{ TransferGroupNotFoundException -> 0x0661, DeviceNotFoundException -> 0x065e }
                java.lang.String r8 = "result"
                r9.put((java.lang.String) r8, (boolean) r7)     // Catch:{ TransferGroupNotFoundException -> 0x0661, DeviceNotFoundException -> 0x065e }
                java.lang.String r8 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r8)     // Catch:{ Exception -> 0x07da }
                java.lang.String r8 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r10.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r11 = "SeamlessServer.onConnected(): reply: "
                r10.append(r11)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r10.append(r9)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r10.toString()     // Catch:{ Exception -> 0x07da }
                android.util.Log.d(r8, r9)     // Catch:{ Exception -> 0x07da }
                com.genonbeta.TrebleShot.service.CommunicationService r8 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x07da }
                long r9 = r3.groupId     // Catch:{ Exception -> 0x07da }
                java.lang.String r11 = r3.deviceId     // Catch:{ Exception -> 0x07da }
                r8.notifyTaskStatusChange(r9, r11, r4)     // Catch:{ Exception -> 0x07da }
                com.genonbeta.TrebleShot.service.CommunicationService r8 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x07da }
                r8.notifyTaskRunningListChange()     // Catch:{ Exception -> 0x07da }
            L_0x010a:
                java.net.Socket r8 = r17.getSocket()     // Catch:{ Exception -> 0x07da }
                if (r8 == 0) goto L_0x05e5
                java.net.Socket r8 = r17.getSocket()     // Catch:{ Exception -> 0x07da }
                boolean r8 = r8.isConnected()     // Catch:{ Exception -> 0x07da }
                if (r8 == 0) goto L_0x05e5
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r8 = r3.builder     // Catch:{ Exception -> 0x07da }
                r8.reset()     // Catch:{ Exception -> 0x07da }
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r8 = r3.builder     // Catch:{ Exception -> 0x07da }
                com.genonbeta.CoolSocket.CoolTransfer$Send$Builder r8 = (com.genonbeta.CoolSocket.CoolTransfer.Send.Builder) r8     // Catch:{ Exception -> 0x07da }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection$Response r9 = r17.receive()     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r11.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r12 = "SeamlessServer.onConnected(): receive: "
                r11.append(r12)     // Catch:{ Exception -> 0x07da }
                java.lang.String r12 = r9.response     // Catch:{ Exception -> 0x07da }
                r11.append(r12)     // Catch:{ Exception -> 0x07da }
                java.lang.String r11 = r11.toString()     // Catch:{ Exception -> 0x07da }
                android.util.Log.d(r10, r11)     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = r9.response     // Catch:{ Exception -> 0x07da }
                if (r10 == 0) goto L_0x0566
                long r10 = r9.totalLength     // Catch:{ Exception -> 0x07da }
                r12 = 1
                int r14 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
                if (r14 >= 0) goto L_0x014d
                goto L_0x0566
            L_0x014d:
                org.json.JSONObject r10 = new org.json.JSONObject     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r9.response     // Catch:{ Exception -> 0x07da }
                r10.<init>((java.lang.String) r9)     // Catch:{ Exception -> 0x07da }
                org.json.JSONObject r9 = new org.json.JSONObject     // Catch:{ Exception -> 0x07da }
                r9.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r11 = "result"
                boolean r11 = r10.has(r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                if (r11 == 0) goto L_0x023a
                java.lang.String r11 = "result"
                boolean r11 = r10.getBoolean(r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                if (r11 != 0) goto L_0x023a
                java.lang.String r11 = "jobDone"
                boolean r11 = r10.has(r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                if (r11 == 0) goto L_0x0192
                java.lang.String r11 = "jobDone"
                boolean r10 = r10.getBoolean(r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                if (r10 == 0) goto L_0x0192
                java.lang.String r10 = TAG     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11.<init>()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r12 = "SeamlessServer.onConnected(): Receiver notified us that it has received all the pending transfers: "
                r11.append(r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r12 = r3.deviceId     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11.append(r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r11 = r11.toString()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                android.util.Log.d(r10, r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                goto L_0x019b
            L_0x0192:
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r10 = r3.builder     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r10 = r10.getTransferProgress()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r10.interrupt()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
            L_0x019b:
                int r4 = r9.length()     // Catch:{ Exception -> 0x07da }
                if (r4 <= 0) goto L_0x01c2
                java.lang.String r4 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r4)     // Catch:{ Exception -> 0x07da }
                java.lang.String r4 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r8.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = "SeamlessServer.onConnected(): reply: "
                r8.append(r10)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r8.append(r9)     // Catch:{ Exception -> 0x07da }
                java.lang.String r8 = r8.toString()     // Catch:{ Exception -> 0x07da }
                android.util.Log.d(r4, r8)     // Catch:{ Exception -> 0x07da }
            L_0x01c2:
                java.net.Socket r4 = r17.getSocket()     // Catch:{ IOException -> 0x01d4 }
                boolean r4 = r4.isClosed()     // Catch:{ IOException -> 0x01d4 }
                if (r4 != 0) goto L_0x01d9
                java.net.Socket r2 = r17.getSocket()     // Catch:{ IOException -> 0x01d4 }
                r2.close()     // Catch:{ IOException -> 0x01d4 }
                goto L_0x01d9
            L_0x01d4:
                r0 = move-exception
                r2 = r0
                r2.printStackTrace()
            L_0x01d9:
                if (r5 == 0) goto L_0x0201
                com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r4 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = r4.getFlag()
                boolean r2 = r2.equals(r4)
                if (r2 != 0) goto L_0x0201
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r2 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r2 = r2.getTransferProgress()
                boolean r2 = r2.isInterrupted()
                if (r2 != 0) goto L_0x0201
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r2 = r2.mNotificationHelper
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING
                r2.notifyConnectionError(r5, r4, r6)
                goto L_0x020a
            L_0x0201:
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                if (r2 == 0) goto L_0x020a
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                r2.cancel()
            L_0x020a:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r4 = r2.getActiveProcessList()
                monitor-enter(r4)
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x0236 }
                java.util.List r2 = r2.getActiveProcessList()     // Catch:{ all -> 0x0236 }
                r2.remove(r3)     // Catch:{ all -> 0x0236 }
                long r5 = r3.groupId     // Catch:{ all -> 0x0236 }
                r8 = 0
                int r2 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
                if (r2 == 0) goto L_0x022f
                java.lang.String r2 = r3.deviceId     // Catch:{ all -> 0x0236 }
                if (r2 == 0) goto L_0x022f
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x0236 }
                long r5 = r3.groupId     // Catch:{ all -> 0x0236 }
                java.lang.String r3 = r3.deviceId     // Catch:{ all -> 0x0236 }
                r2.notifyTaskStatusChange(r5, r3, r7)     // Catch:{ all -> 0x0236 }
            L_0x022f:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x0236 }
                r2.notifyTaskRunningListChange()     // Catch:{ all -> 0x0236 }
                monitor-exit(r4)     // Catch:{ all -> 0x0236 }
                return
            L_0x0236:
                r0 = move-exception
                r2 = r0
                monitor-exit(r4)     // Catch:{ all -> 0x0236 }
                throw r2
            L_0x023a:
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r11 = r3.builder     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r11 = r11.getTransferProgress()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                boolean r11 = r11.isInterrupted()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                if (r11 != 0) goto L_0x0315
                com.genonbeta.TrebleShot.object.TransferObject r11 = new com.genonbeta.TrebleShot.object.TransferObject     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r12 = "requestId"
                int r12 = r10.getInt(r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                long r12 = (long) r12     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r14 = r3.deviceId     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.object.TransferObject$Type r15 = r3.type     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11.<init>(r12, r14, r15)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r3.transferObject = r11     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.service.CommunicationService r11 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.database.AccessDatabase r11 = r11.getDatabase()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.object.TransferObject r12 = r3.transferObject     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11.reconstruct(r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.object.TransferObject r11 = r3.transferObject     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r12 = "socketPort"
                int r12 = r10.getInt(r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11.accessPort = r12     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r11 = "skippedBytes"
                boolean r11 = r10.has(r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                if (r11 == 0) goto L_0x0299
                com.genonbeta.TrebleShot.object.TransferObject r11 = r3.transferObject     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r12 = "skippedBytes"
                long r12 = r10.getLong(r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11.skippedBytes = r12     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r10 = TAG     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11.<init>()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r12 = "SeamlessServes.onConnected(): Has skipped bytes: "
                r11.append(r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.object.TransferObject r12 = r3.transferObject     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                long r12 = r12.skippedBytes     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11.append(r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r11 = r11.toString()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                android.util.Log.d(r10, r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
            L_0x0299:
                com.genonbeta.TrebleShot.service.CommunicationService r10 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.database.AccessDatabase r10 = r10.getDatabase()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.object.TransferObject r11 = r3.transferObject     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r10.update((com.genonbeta.android.database.DatabaseObject) r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.service.CommunicationService r10 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                android.content.Context r10 = r10.getApplicationContext()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.object.TransferObject r11 = r3.transferObject     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r11 = r11.file     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                android.net.Uri r11 = android.net.Uri.parse(r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.android.framework.io.StreamInfo r10 = com.genonbeta.android.framework.io.StreamInfo.getStreamInfo(r10, r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r11 = "result"
                r9.put((java.lang.String) r11, (boolean) r7)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                long r11 = r10.size     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r13 = 0
                int r15 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
                if (r15 < 0) goto L_0x02da
                long r11 = r10.size     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.object.TransferObject r13 = r3.transferObject     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                long r13 = r13.fileSize     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                int r15 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
                if (r15 == 0) goto L_0x02da
                java.lang.String r11 = "sizeChanged"
                long r12 = r10.size     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r9.put((java.lang.String) r11, (long) r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.object.TransferObject r11 = r3.transferObject     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                long r12 = r10.size     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11.fileSize = r12     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
            L_0x02da:
                com.genonbeta.TrebleShot.service.CommunicationService r11 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r11 = r11.getNotificationHelper()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11.notifyFileTransaction(r3)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r11 = TAG     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r12 = "SeamlessServer.onConnected(): Proceeding to send"
                android.util.Log.d(r11, r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r11 = r17.getClientAddress()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.CoolSocket.CoolTransfer$Send$Builder r11 = r8.setServerIp(r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.io.InputStream r12 = r10.openInputStream()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.CoolSocket.CoolTransfer$Send$Builder r11 = r11.setInputStream((java.io.InputStream) r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.TrebleShot.object.TransferObject r12 = r3.transferObject     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                int r12 = r12.accessPort     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder r11 = r11.setPort(r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                long r12 = r10.size     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder r10 = r11.setFileSize(r12)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r11 = 8096(0x1fa0, float:1.1345E-41)
                byte[] r11 = new byte[r11]     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder r10 = r10.setBuffer(r11)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                r10.setExtra(r3)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                goto L_0x03cb
            L_0x0315:
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r10 = r3.builder     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r10 = r10.getTransferProgress()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                boolean r10 = r10.isInterrupted()     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                if (r10 == 0) goto L_0x03cb
                java.lang.String r10 = "result"
                org.json.JSONObject r10 = r9.put((java.lang.String) r10, (boolean) r4)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                java.lang.String r11 = "jobDone"
                r10.put((java.lang.String) r11, (boolean) r4)     // Catch:{ ReconstructionFailedException -> 0x04b7, FileNotFoundException -> 0x0459, StreamCorruptedException -> 0x0457, FolderStateException -> 0x0455, Exception -> 0x03f8 }
                int r4 = r9.length()     // Catch:{ Exception -> 0x07da }
                if (r4 <= 0) goto L_0x0353
                java.lang.String r4 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r4)     // Catch:{ Exception -> 0x07da }
                java.lang.String r4 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r8.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = "SeamlessServer.onConnected(): reply: "
                r8.append(r10)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r8.append(r9)     // Catch:{ Exception -> 0x07da }
                java.lang.String r8 = r8.toString()     // Catch:{ Exception -> 0x07da }
                android.util.Log.d(r4, r8)     // Catch:{ Exception -> 0x07da }
            L_0x0353:
                java.net.Socket r4 = r17.getSocket()     // Catch:{ IOException -> 0x0365 }
                boolean r4 = r4.isClosed()     // Catch:{ IOException -> 0x0365 }
                if (r4 != 0) goto L_0x036a
                java.net.Socket r2 = r17.getSocket()     // Catch:{ IOException -> 0x0365 }
                r2.close()     // Catch:{ IOException -> 0x0365 }
                goto L_0x036a
            L_0x0365:
                r0 = move-exception
                r2 = r0
                r2.printStackTrace()
            L_0x036a:
                if (r5 == 0) goto L_0x0392
                com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r4 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = r4.getFlag()
                boolean r2 = r2.equals(r4)
                if (r2 != 0) goto L_0x0392
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r2 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r2 = r2.getTransferProgress()
                boolean r2 = r2.isInterrupted()
                if (r2 != 0) goto L_0x0392
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r2 = r2.mNotificationHelper
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING
                r2.notifyConnectionError(r5, r4, r6)
                goto L_0x039b
            L_0x0392:
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                if (r2 == 0) goto L_0x039b
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                r2.cancel()
            L_0x039b:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r4 = r2.getActiveProcessList()
                monitor-enter(r4)
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x03c7 }
                java.util.List r2 = r2.getActiveProcessList()     // Catch:{ all -> 0x03c7 }
                r2.remove(r3)     // Catch:{ all -> 0x03c7 }
                long r5 = r3.groupId     // Catch:{ all -> 0x03c7 }
                r8 = 0
                int r2 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
                if (r2 == 0) goto L_0x03c0
                java.lang.String r2 = r3.deviceId     // Catch:{ all -> 0x03c7 }
                if (r2 == 0) goto L_0x03c0
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x03c7 }
                long r5 = r3.groupId     // Catch:{ all -> 0x03c7 }
                java.lang.String r3 = r3.deviceId     // Catch:{ all -> 0x03c7 }
                r2.notifyTaskStatusChange(r5, r3, r7)     // Catch:{ all -> 0x03c7 }
            L_0x03c0:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x03c7 }
                r2.notifyTaskRunningListChange()     // Catch:{ all -> 0x03c7 }
                monitor-exit(r4)     // Catch:{ all -> 0x03c7 }
                return
            L_0x03c7:
                r0 = move-exception
                r2 = r0
                monitor-exit(r4)     // Catch:{ all -> 0x03c7 }
                throw r2
            L_0x03cb:
                int r10 = r9.length()     // Catch:{ Exception -> 0x07da }
                if (r10 <= 0) goto L_0x04f6
                java.lang.String r10 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r10)     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r11.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r12 = "SeamlessServer.onConnected(): reply: "
                r11.append(r12)     // Catch:{ Exception -> 0x07da }
                java.lang.String r12 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r11.append(r12)     // Catch:{ Exception -> 0x07da }
                java.lang.String r11 = r11.toString()     // Catch:{ Exception -> 0x07da }
            L_0x03ef:
                android.util.Log.d(r10, r11)     // Catch:{ Exception -> 0x07da }
                goto L_0x04f6
            L_0x03f4:
                r0 = move-exception
                r4 = r0
                goto L_0x053e
            L_0x03f8:
                r0 = move-exception
                r10 = r0
                java.lang.String r11 = TAG     // Catch:{ all -> 0x03f4 }
                java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ all -> 0x03f4 }
                r12.<init>()     // Catch:{ all -> 0x03f4 }
                java.lang.String r13 = "SeamlessServer.onConnected(): Exception is handled: "
                r12.append(r13)     // Catch:{ all -> 0x03f4 }
                java.lang.String r13 = r10.toString()     // Catch:{ all -> 0x03f4 }
                r12.append(r13)     // Catch:{ all -> 0x03f4 }
                java.lang.String r12 = r12.toString()     // Catch:{ all -> 0x03f4 }
                android.util.Log.d(r11, r12)     // Catch:{ all -> 0x03f4 }
                java.lang.String r11 = "result"
                r9.put((java.lang.String) r11, (boolean) r4)     // Catch:{ all -> 0x03f4 }
                java.lang.String r11 = "error"
                java.lang.String r12 = "errorUnknown"
                r9.put((java.lang.String) r11, (java.lang.Object) r12)     // Catch:{ all -> 0x03f4 }
                java.lang.String r11 = "flag"
                java.lang.String r12 = "flagGroupExists"
                r9.put((java.lang.String) r11, (java.lang.Object) r12)     // Catch:{ all -> 0x03f4 }
                com.genonbeta.TrebleShot.object.TransferObject r11 = r3.transferObject     // Catch:{ all -> 0x03f4 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r12 = com.genonbeta.TrebleShot.object.TransferObject.Flag.INTERRUPTED     // Catch:{ all -> 0x03f4 }
                r11.flag = r12     // Catch:{ all -> 0x03f4 }
                r10.printStackTrace()     // Catch:{ all -> 0x03f4 }
                int r10 = r9.length()     // Catch:{ Exception -> 0x07da }
                if (r10 <= 0) goto L_0x04f6
                java.lang.String r10 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r10)     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r11.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r12 = "SeamlessServer.onConnected(): reply: "
                r11.append(r12)     // Catch:{ Exception -> 0x07da }
                java.lang.String r12 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r11.append(r12)     // Catch:{ Exception -> 0x07da }
                java.lang.String r11 = r11.toString()     // Catch:{ Exception -> 0x07da }
                goto L_0x03ef
            L_0x0455:
                r0 = move-exception
                goto L_0x045a
            L_0x0457:
                r0 = move-exception
                goto L_0x045a
            L_0x0459:
                r0 = move-exception
            L_0x045a:
                r10 = r0
                java.lang.String r11 = TAG     // Catch:{ all -> 0x03f4 }
                java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ all -> 0x03f4 }
                r12.<init>()     // Catch:{ all -> 0x03f4 }
                java.lang.String r13 = "SeamlessServer.onConnected(): File is not accessible ? "
                r12.append(r13)     // Catch:{ all -> 0x03f4 }
                com.genonbeta.TrebleShot.object.TransferObject r13 = r3.transferObject     // Catch:{ all -> 0x03f4 }
                java.lang.String r13 = r13.friendlyName     // Catch:{ all -> 0x03f4 }
                r12.append(r13)     // Catch:{ all -> 0x03f4 }
                java.lang.String r12 = r12.toString()     // Catch:{ all -> 0x03f4 }
                android.util.Log.d(r11, r12)     // Catch:{ all -> 0x03f4 }
                java.lang.String r11 = "result"
                r9.put((java.lang.String) r11, (boolean) r4)     // Catch:{ all -> 0x03f4 }
                java.lang.String r11 = "error"
                java.lang.String r12 = "notAccessible"
                r9.put((java.lang.String) r11, (java.lang.Object) r12)     // Catch:{ all -> 0x03f4 }
                java.lang.String r11 = "flag"
                java.lang.String r12 = "flagGroupExists"
                r9.put((java.lang.String) r11, (java.lang.Object) r12)     // Catch:{ all -> 0x03f4 }
                com.genonbeta.TrebleShot.object.TransferObject r11 = r3.transferObject     // Catch:{ all -> 0x03f4 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r12 = com.genonbeta.TrebleShot.object.TransferObject.Flag.INTERRUPTED     // Catch:{ all -> 0x03f4 }
                r11.flag = r12     // Catch:{ all -> 0x03f4 }
                r10.printStackTrace()     // Catch:{ all -> 0x03f4 }
                int r10 = r9.length()     // Catch:{ Exception -> 0x07da }
                if (r10 <= 0) goto L_0x04f6
                java.lang.String r10 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r10)     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r11.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r12 = "SeamlessServer.onConnected(): reply: "
                r11.append(r12)     // Catch:{ Exception -> 0x07da }
                java.lang.String r12 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r11.append(r12)     // Catch:{ Exception -> 0x07da }
                java.lang.String r11 = r11.toString()     // Catch:{ Exception -> 0x07da }
                goto L_0x03ef
            L_0x04b7:
                java.lang.String r10 = "result"
                r9.put((java.lang.String) r10, (boolean) r4)     // Catch:{ all -> 0x03f4 }
                java.lang.String r10 = "error"
                java.lang.String r11 = "notFound"
                r9.put((java.lang.String) r10, (java.lang.Object) r11)     // Catch:{ all -> 0x03f4 }
                java.lang.String r10 = "flag"
                java.lang.String r11 = "flagGroupExists"
                r9.put((java.lang.String) r10, (java.lang.Object) r11)     // Catch:{ all -> 0x03f4 }
                com.genonbeta.TrebleShot.object.TransferObject r10 = r3.transferObject     // Catch:{ all -> 0x03f4 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r11 = com.genonbeta.TrebleShot.object.TransferObject.Flag.REMOVED     // Catch:{ all -> 0x03f4 }
                r10.flag = r11     // Catch:{ all -> 0x03f4 }
                int r10 = r9.length()     // Catch:{ Exception -> 0x07da }
                if (r10 <= 0) goto L_0x04f6
                java.lang.String r10 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r10)     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r11.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r12 = "SeamlessServer.onConnected(): reply: "
                r11.append(r12)     // Catch:{ Exception -> 0x07da }
                java.lang.String r12 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r11.append(r12)     // Catch:{ Exception -> 0x07da }
                java.lang.String r11 = r11.toString()     // Catch:{ Exception -> 0x07da }
                goto L_0x03ef
            L_0x04f6:
                java.lang.String r10 = "result"
                boolean r10 = r9.has(r10)     // Catch:{ Exception -> 0x07da }
                if (r10 == 0) goto L_0x050f
                java.lang.String r10 = "result"
                boolean r9 = r9.getBoolean(r10)     // Catch:{ Exception -> 0x07da }
                if (r9 == 0) goto L_0x050f
                com.genonbeta.TrebleShot.service.CommunicationService r9 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x07da }
                com.genonbeta.TrebleShot.service.CommunicationService$Send r9 = r9.mSend     // Catch:{ Exception -> 0x07da }
                r9.send(r8, (boolean) r7)     // Catch:{ Exception -> 0x07da }
            L_0x050f:
                com.genonbeta.TrebleShot.object.TransferObject r8 = r3.transferObject     // Catch:{ Exception -> 0x07da }
                if (r8 == 0) goto L_0x010a
                java.lang.String r8 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r9.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = "SeamlessServer.onConnected(): Updating file instances to "
                r9.append(r10)     // Catch:{ Exception -> 0x07da }
                com.genonbeta.TrebleShot.object.TransferObject r10 = r3.transferObject     // Catch:{ Exception -> 0x07da }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r10 = r10.flag     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = r10.toString()     // Catch:{ Exception -> 0x07da }
                r9.append(r10)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r9.toString()     // Catch:{ Exception -> 0x07da }
                android.util.Log.d(r8, r9)     // Catch:{ Exception -> 0x07da }
                com.genonbeta.TrebleShot.service.CommunicationService r8 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x07da }
                com.genonbeta.TrebleShot.database.AccessDatabase r8 = r8.getDatabase()     // Catch:{ Exception -> 0x07da }
                com.genonbeta.TrebleShot.object.TransferObject r9 = r3.transferObject     // Catch:{ Exception -> 0x07da }
                r8.update((com.genonbeta.android.database.DatabaseObject) r9)     // Catch:{ Exception -> 0x07da }
                goto L_0x010a
            L_0x053e:
                int r8 = r9.length()     // Catch:{ Exception -> 0x07da }
                if (r8 <= 0) goto L_0x0565
                java.lang.String r8 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r8)     // Catch:{ Exception -> 0x07da }
                java.lang.String r8 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r10.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r11 = "SeamlessServer.onConnected(): reply: "
                r10.append(r11)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r10.append(r9)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r10.toString()     // Catch:{ Exception -> 0x07da }
                android.util.Log.d(r8, r9)     // Catch:{ Exception -> 0x07da }
            L_0x0565:
                throw r4     // Catch:{ Exception -> 0x07da }
            L_0x0566:
                java.lang.String r4 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.String r8 = "SeamlessServer.onConnected(): NULL response was received exiting loop"
                android.util.Log.d(r4, r8)     // Catch:{ Exception -> 0x07da }
                java.net.Socket r4 = r17.getSocket()     // Catch:{ IOException -> 0x057f }
                boolean r4 = r4.isClosed()     // Catch:{ IOException -> 0x057f }
                if (r4 != 0) goto L_0x0584
                java.net.Socket r2 = r17.getSocket()     // Catch:{ IOException -> 0x057f }
                r2.close()     // Catch:{ IOException -> 0x057f }
                goto L_0x0584
            L_0x057f:
                r0 = move-exception
                r2 = r0
                r2.printStackTrace()
            L_0x0584:
                if (r5 == 0) goto L_0x05ac
                com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r4 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = r4.getFlag()
                boolean r2 = r2.equals(r4)
                if (r2 != 0) goto L_0x05ac
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r2 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r2 = r2.getTransferProgress()
                boolean r2 = r2.isInterrupted()
                if (r2 != 0) goto L_0x05ac
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r2 = r2.mNotificationHelper
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING
                r2.notifyConnectionError(r5, r4, r6)
                goto L_0x05b5
            L_0x05ac:
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                if (r2 == 0) goto L_0x05b5
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                r2.cancel()
            L_0x05b5:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r4 = r2.getActiveProcessList()
                monitor-enter(r4)
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x05e1 }
                java.util.List r2 = r2.getActiveProcessList()     // Catch:{ all -> 0x05e1 }
                r2.remove(r3)     // Catch:{ all -> 0x05e1 }
                long r5 = r3.groupId     // Catch:{ all -> 0x05e1 }
                r8 = 0
                int r2 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
                if (r2 == 0) goto L_0x05da
                java.lang.String r2 = r3.deviceId     // Catch:{ all -> 0x05e1 }
                if (r2 == 0) goto L_0x05da
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x05e1 }
                long r5 = r3.groupId     // Catch:{ all -> 0x05e1 }
                java.lang.String r3 = r3.deviceId     // Catch:{ all -> 0x05e1 }
                r2.notifyTaskStatusChange(r5, r3, r7)     // Catch:{ all -> 0x05e1 }
            L_0x05da:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x05e1 }
                r2.notifyTaskRunningListChange()     // Catch:{ all -> 0x05e1 }
                monitor-exit(r4)     // Catch:{ all -> 0x05e1 }
                return
            L_0x05e1:
                r0 = move-exception
                r2 = r0
                monitor-exit(r4)     // Catch:{ all -> 0x05e1 }
                throw r2
            L_0x05e5:
                java.net.Socket r4 = r17.getSocket()     // Catch:{ IOException -> 0x05f7 }
                boolean r4 = r4.isClosed()     // Catch:{ IOException -> 0x05f7 }
                if (r4 != 0) goto L_0x05fc
                java.net.Socket r2 = r17.getSocket()     // Catch:{ IOException -> 0x05f7 }
                r2.close()     // Catch:{ IOException -> 0x05f7 }
                goto L_0x05fc
            L_0x05f7:
                r0 = move-exception
                r2 = r0
                r2.printStackTrace()
            L_0x05fc:
                if (r5 == 0) goto L_0x0624
                com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r4 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = r4.getFlag()
                boolean r2 = r2.equals(r4)
                if (r2 != 0) goto L_0x0624
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r2 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r2 = r2.getTransferProgress()
                boolean r2 = r2.isInterrupted()
                if (r2 != 0) goto L_0x0624
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r2 = r2.mNotificationHelper
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING
                r2.notifyConnectionError(r5, r4, r6)
                goto L_0x062d
            L_0x0624:
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                if (r2 == 0) goto L_0x062d
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                r2.cancel()
            L_0x062d:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r4 = r2.getActiveProcessList()
                monitor-enter(r4)
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x065a }
                java.util.List r2 = r2.getActiveProcessList()     // Catch:{ all -> 0x065a }
                r2.remove(r3)     // Catch:{ all -> 0x065a }
                long r5 = r3.groupId     // Catch:{ all -> 0x065a }
                r8 = 0
                int r2 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
                if (r2 == 0) goto L_0x0652
                java.lang.String r2 = r3.deviceId     // Catch:{ all -> 0x065a }
                if (r2 == 0) goto L_0x0652
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x065a }
                long r5 = r3.groupId     // Catch:{ all -> 0x065a }
                java.lang.String r3 = r3.deviceId     // Catch:{ all -> 0x065a }
                r2.notifyTaskStatusChange(r5, r3, r7)     // Catch:{ all -> 0x065a }
            L_0x0652:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x065a }
                r2.notifyTaskRunningListChange()     // Catch:{ all -> 0x065a }
                monitor-exit(r4)     // Catch:{ all -> 0x065a }
                goto L_0x085b
            L_0x065a:
                r0 = move-exception
                r2 = r0
                monitor-exit(r4)     // Catch:{ all -> 0x065a }
                throw r2
            L_0x065e:
                r0 = move-exception
                r4 = r0
                goto L_0x066d
            L_0x0661:
                r0 = move-exception
                r4 = r0
                goto L_0x0713
            L_0x0665:
                r0 = move-exception
                r4 = r0
                r5 = r6
                goto L_0x07b8
            L_0x066a:
                r0 = move-exception
                r4 = r0
                r5 = r6
            L_0x066d:
                java.lang.String r8 = "error"
                java.lang.String r10 = "notAllowed"
                r9.put((java.lang.String) r8, (java.lang.Object) r10)     // Catch:{ all -> 0x07b6 }
                r4.printStackTrace()     // Catch:{ all -> 0x07b6 }
                java.lang.String r4 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r4)     // Catch:{ Exception -> 0x07da }
                java.lang.String r4 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r8.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = "SeamlessServer.onConnected(): reply: "
                r8.append(r10)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r8.append(r9)     // Catch:{ Exception -> 0x07da }
                java.lang.String r8 = r8.toString()     // Catch:{ Exception -> 0x07da }
                android.util.Log.d(r4, r8)     // Catch:{ Exception -> 0x07da }
                java.net.Socket r4 = r17.getSocket()     // Catch:{ IOException -> 0x06aa }
                boolean r4 = r4.isClosed()     // Catch:{ IOException -> 0x06aa }
                if (r4 != 0) goto L_0x06af
                java.net.Socket r2 = r17.getSocket()     // Catch:{ IOException -> 0x06aa }
                r2.close()     // Catch:{ IOException -> 0x06aa }
                goto L_0x06af
            L_0x06aa:
                r0 = move-exception
                r2 = r0
                r2.printStackTrace()
            L_0x06af:
                if (r5 == 0) goto L_0x06d7
                com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r4 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = r4.getFlag()
                boolean r2 = r2.equals(r4)
                if (r2 != 0) goto L_0x06d7
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r2 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r2 = r2.getTransferProgress()
                boolean r2 = r2.isInterrupted()
                if (r2 != 0) goto L_0x06d7
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r2 = r2.mNotificationHelper
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING
                r2.notifyConnectionError(r5, r4, r6)
                goto L_0x06e0
            L_0x06d7:
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                if (r2 == 0) goto L_0x06e0
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                r2.cancel()
            L_0x06e0:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r4 = r2.getActiveProcessList()
                monitor-enter(r4)
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x070c }
                java.util.List r2 = r2.getActiveProcessList()     // Catch:{ all -> 0x070c }
                r2.remove(r3)     // Catch:{ all -> 0x070c }
                long r5 = r3.groupId     // Catch:{ all -> 0x070c }
                r8 = 0
                int r2 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
                if (r2 == 0) goto L_0x0705
                java.lang.String r2 = r3.deviceId     // Catch:{ all -> 0x070c }
                if (r2 == 0) goto L_0x0705
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x070c }
                long r5 = r3.groupId     // Catch:{ all -> 0x070c }
                java.lang.String r3 = r3.deviceId     // Catch:{ all -> 0x070c }
                r2.notifyTaskStatusChange(r5, r3, r7)     // Catch:{ all -> 0x070c }
            L_0x0705:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x070c }
                r2.notifyTaskRunningListChange()     // Catch:{ all -> 0x070c }
                monitor-exit(r4)     // Catch:{ all -> 0x070c }
                return
            L_0x070c:
                r0 = move-exception
                r2 = r0
                monitor-exit(r4)     // Catch:{ all -> 0x070c }
                throw r2
            L_0x0710:
                r0 = move-exception
                r4 = r0
                r5 = r6
            L_0x0713:
                java.lang.String r8 = "error"
                java.lang.String r10 = "notFound"
                r9.put((java.lang.String) r8, (java.lang.Object) r10)     // Catch:{ all -> 0x07b6 }
                r4.printStackTrace()     // Catch:{ all -> 0x07b6 }
                java.lang.String r4 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r4)     // Catch:{ Exception -> 0x07da }
                java.lang.String r4 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r8.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r10 = "SeamlessServer.onConnected(): reply: "
                r8.append(r10)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r8.append(r9)     // Catch:{ Exception -> 0x07da }
                java.lang.String r8 = r8.toString()     // Catch:{ Exception -> 0x07da }
                android.util.Log.d(r4, r8)     // Catch:{ Exception -> 0x07da }
                java.net.Socket r4 = r17.getSocket()     // Catch:{ IOException -> 0x0750 }
                boolean r4 = r4.isClosed()     // Catch:{ IOException -> 0x0750 }
                if (r4 != 0) goto L_0x0755
                java.net.Socket r2 = r17.getSocket()     // Catch:{ IOException -> 0x0750 }
                r2.close()     // Catch:{ IOException -> 0x0750 }
                goto L_0x0755
            L_0x0750:
                r0 = move-exception
                r2 = r0
                r2.printStackTrace()
            L_0x0755:
                if (r5 == 0) goto L_0x077d
                com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r4 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = r4.getFlag()
                boolean r2 = r2.equals(r4)
                if (r2 != 0) goto L_0x077d
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r2 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r2 = r2.getTransferProgress()
                boolean r2 = r2.isInterrupted()
                if (r2 != 0) goto L_0x077d
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r2 = r2.mNotificationHelper
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING
                r2.notifyConnectionError(r5, r4, r6)
                goto L_0x0786
            L_0x077d:
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                if (r2 == 0) goto L_0x0786
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                r2.cancel()
            L_0x0786:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r4 = r2.getActiveProcessList()
                monitor-enter(r4)
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x07b2 }
                java.util.List r2 = r2.getActiveProcessList()     // Catch:{ all -> 0x07b2 }
                r2.remove(r3)     // Catch:{ all -> 0x07b2 }
                long r5 = r3.groupId     // Catch:{ all -> 0x07b2 }
                r8 = 0
                int r2 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
                if (r2 == 0) goto L_0x07ab
                java.lang.String r2 = r3.deviceId     // Catch:{ all -> 0x07b2 }
                if (r2 == 0) goto L_0x07ab
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x07b2 }
                long r5 = r3.groupId     // Catch:{ all -> 0x07b2 }
                java.lang.String r3 = r3.deviceId     // Catch:{ all -> 0x07b2 }
                r2.notifyTaskStatusChange(r5, r3, r7)     // Catch:{ all -> 0x07b2 }
            L_0x07ab:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x07b2 }
                r2.notifyTaskRunningListChange()     // Catch:{ all -> 0x07b2 }
                monitor-exit(r4)     // Catch:{ all -> 0x07b2 }
                return
            L_0x07b2:
                r0 = move-exception
                r2 = r0
                monitor-exit(r4)     // Catch:{ all -> 0x07b2 }
                throw r2
            L_0x07b6:
                r0 = move-exception
                r4 = r0
            L_0x07b8:
                java.lang.String r8 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r2.reply(r8)     // Catch:{ Exception -> 0x07da }
                java.lang.String r8 = TAG     // Catch:{ Exception -> 0x07da }
                java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x07da }
                r10.<init>()     // Catch:{ Exception -> 0x07da }
                java.lang.String r11 = "SeamlessServer.onConnected(): reply: "
                r10.append(r11)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r9.toString()     // Catch:{ Exception -> 0x07da }
                r10.append(r9)     // Catch:{ Exception -> 0x07da }
                java.lang.String r9 = r10.toString()     // Catch:{ Exception -> 0x07da }
                android.util.Log.d(r8, r9)     // Catch:{ Exception -> 0x07da }
                throw r4     // Catch:{ Exception -> 0x07da }
            L_0x07da:
                r0 = move-exception
                r4 = r0
                goto L_0x07e5
            L_0x07dd:
                r0 = move-exception
                r4 = r0
                r5 = r6
                goto L_0x0862
            L_0x07e2:
                r0 = move-exception
                r4 = r0
                r5 = r6
            L_0x07e5:
                r4.printStackTrace()     // Catch:{ all -> 0x0860 }
                java.net.Socket r4 = r17.getSocket()     // Catch:{ IOException -> 0x07fa }
                boolean r4 = r4.isClosed()     // Catch:{ IOException -> 0x07fa }
                if (r4 != 0) goto L_0x07ff
                java.net.Socket r2 = r17.getSocket()     // Catch:{ IOException -> 0x07fa }
                r2.close()     // Catch:{ IOException -> 0x07fa }
                goto L_0x07ff
            L_0x07fa:
                r0 = move-exception
                r2 = r0
                r2.printStackTrace()
            L_0x07ff:
                if (r5 == 0) goto L_0x0827
                com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r4 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = r4.getFlag()
                boolean r2 = r2.equals(r4)
                if (r2 != 0) goto L_0x0827
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r2 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r2 = r2.getTransferProgress()
                boolean r2 = r2.isInterrupted()
                if (r2 != 0) goto L_0x0827
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r2 = r2.mNotificationHelper
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING
                r2.notifyConnectionError(r5, r4, r6)
                goto L_0x0830
            L_0x0827:
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                if (r2 == 0) goto L_0x0830
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                r2.cancel()
            L_0x0830:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r4 = r2.getActiveProcessList()
                monitor-enter(r4)
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x085c }
                java.util.List r2 = r2.getActiveProcessList()     // Catch:{ all -> 0x085c }
                r2.remove(r3)     // Catch:{ all -> 0x085c }
                long r5 = r3.groupId     // Catch:{ all -> 0x085c }
                r8 = 0
                int r2 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
                if (r2 == 0) goto L_0x0855
                java.lang.String r2 = r3.deviceId     // Catch:{ all -> 0x085c }
                if (r2 == 0) goto L_0x0855
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x085c }
                long r5 = r3.groupId     // Catch:{ all -> 0x085c }
                java.lang.String r3 = r3.deviceId     // Catch:{ all -> 0x085c }
                r2.notifyTaskStatusChange(r5, r3, r7)     // Catch:{ all -> 0x085c }
            L_0x0855:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x085c }
                r2.notifyTaskRunningListChange()     // Catch:{ all -> 0x085c }
                monitor-exit(r4)     // Catch:{ all -> 0x085c }
            L_0x085b:
                return
            L_0x085c:
                r0 = move-exception
                r2 = r0
                monitor-exit(r4)     // Catch:{ all -> 0x085c }
                throw r2
            L_0x0860:
                r0 = move-exception
                r4 = r0
            L_0x0862:
                java.net.Socket r8 = r17.getSocket()     // Catch:{ IOException -> 0x0874 }
                boolean r8 = r8.isClosed()     // Catch:{ IOException -> 0x0874 }
                if (r8 != 0) goto L_0x0879
                java.net.Socket r2 = r17.getSocket()     // Catch:{ IOException -> 0x0874 }
                r2.close()     // Catch:{ IOException -> 0x0874 }
                goto L_0x0879
            L_0x0874:
                r0 = move-exception
                r2 = r0
                r2.printStackTrace()
            L_0x0879:
                if (r5 == 0) goto L_0x08a1
                com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r8 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$Flag r8 = r8.getFlag()
                boolean r2 = r2.equals(r8)
                if (r2 != 0) goto L_0x08a1
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r2 = r3.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r2 = r2.getTransferProgress()
                boolean r2 = r2.isInterrupted()
                if (r2 != 0) goto L_0x08a1
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r2 = r2.mNotificationHelper
                com.genonbeta.TrebleShot.object.TransferObject$Type r8 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING
                r2.notifyConnectionError(r5, r8, r6)
                goto L_0x08aa
            L_0x08a1:
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                if (r2 == 0) goto L_0x08aa
                com.genonbeta.TrebleShot.util.DynamicNotification r2 = r3.notification
                r2.cancel()
            L_0x08aa:
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r2 = r2.getActiveProcessList()
                monitor-enter(r2)
                com.genonbeta.TrebleShot.service.CommunicationService r5 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x08d6 }
                java.util.List r5 = r5.getActiveProcessList()     // Catch:{ all -> 0x08d6 }
                r5.remove(r3)     // Catch:{ all -> 0x08d6 }
                long r5 = r3.groupId     // Catch:{ all -> 0x08d6 }
                r8 = 0
                int r10 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
                if (r10 == 0) goto L_0x08cf
                java.lang.String r5 = r3.deviceId     // Catch:{ all -> 0x08d6 }
                if (r5 == 0) goto L_0x08cf
                com.genonbeta.TrebleShot.service.CommunicationService r5 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x08d6 }
                long r8 = r3.groupId     // Catch:{ all -> 0x08d6 }
                java.lang.String r3 = r3.deviceId     // Catch:{ all -> 0x08d6 }
                r5.notifyTaskStatusChange(r8, r3, r7)     // Catch:{ all -> 0x08d6 }
            L_0x08cf:
                com.genonbeta.TrebleShot.service.CommunicationService r3 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x08d6 }
                r3.notifyTaskRunningListChange()     // Catch:{ all -> 0x08d6 }
                monitor-exit(r2)     // Catch:{ all -> 0x08d6 }
                throw r4
            L_0x08d6:
                r0 = move-exception
                r3 = r0
                monitor-exit(r2)     // Catch:{ all -> 0x08d6 }
                throw r3
            L_0x08da:
                r0 = move-exception
                r2 = r0
                monitor-exit(r4)     // Catch:{ all -> 0x08da }
                goto L_0x08df
            L_0x08de:
                throw r2
            L_0x08df:
                goto L_0x08de
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.service.CommunicationService.SeamlessServer.onConnected(com.genonbeta.CoolSocket.CoolSocket$ActiveConnection):void");
        }
    }

    private class SeamlessClientHandler implements CoolSocket.Client.ConnectionHandler {
        private TransferInstance mTransfer;

        public SeamlessClientHandler(TransferInstance transferInstance) {
            this.mTransfer = transferInstance;
        }

        /*  JADX ERROR: IndexOutOfBoundsException in pass: RegionMakerVisitor
            java.lang.IndexOutOfBoundsException: Index: 0, Size: 0
            	at java.util.ArrayList.rangeCheck(ArrayList.java:659)
            	at java.util.ArrayList.get(ArrayList.java:435)
            	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:101)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:611)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
            	at jadx.core.dex.visitors.regions.RegionMaker.processMonitorEnter(RegionMaker.java:561)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:133)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
            	at jadx.core.dex.visitors.regions.RegionMaker.processExcHandler(RegionMaker.java:1043)
            	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:975)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
            */
        /* JADX WARNING: Removed duplicated region for block: B:109:0x0452 A[Catch:{ Exception -> 0x04b9, all -> 0x04b7, all -> 0x0501 }] */
        /* JADX WARNING: Removed duplicated region for block: B:111:0x046b A[Catch:{ Exception -> 0x04b9, all -> 0x04b7, all -> 0x0501 }] */
        /* JADX WARNING: Removed duplicated region for block: B:112:0x047f A[Catch:{ Exception -> 0x04b9, all -> 0x04b7, all -> 0x0501 }] */
        /* JADX WARNING: Unknown top exception splitter block from list: {B:40:0x01d0=Splitter:B:40:0x01d0, B:218:0x06c0=Splitter:B:218:0x06c0, B:136:0x0503=Splitter:B:136:0x0503, B:113:0x0488=Splitter:B:113:0x0488, B:243:0x072c=Splitter:B:243:0x072c} */
        public void onConnect(com.genonbeta.CoolSocket.CoolSocket.Client r13) {
            /*
                r12 = this;
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.object.NetworkDevice r13 = com.genonbeta.TrebleShot.util.AppUtils.getLocalDevice(r13)
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r0 = new com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this
                r0.<init>()
                com.genonbeta.TrebleShot.object.TransferObject$Type r1 = com.genonbeta.TrebleShot.object.TransferObject.Type.INCOMING
                r0.type = r1
                com.genonbeta.TrebleShot.object.TransferInstance r1 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup r1 = r1.getGroup()
                long r1 = r1.groupId
                r0.groupId = r1
                com.genonbeta.TrebleShot.object.TransferInstance r1 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup$Assignee r1 = r1.getAssignee()
                java.lang.String r1 = r1.deviceId
                r0.deviceId = r1
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r1 = new com.genonbeta.CoolSocket.CoolSocket$ActiveConnection
                r2 = 5000(0x1388, float:7.006E-42)
                r1.<init>((int) r2)
                r0.activeConnection = r1
                com.genonbeta.CoolSocket.CoolTransfer$Receive$Builder r1 = new com.genonbeta.CoolSocket.CoolTransfer$Receive$Builder
                r1.<init>()
                r0.builder = r1
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r1 = r0.builder
                r1.setExtra(r0)
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r1 = r1.getActiveProcessList()
                monitor-enter(r1)
                com.genonbeta.TrebleShot.service.CommunicationService r3 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x0889 }
                java.util.List r3 = r3.getActiveProcessList()     // Catch:{ all -> 0x0889 }
                r3.add(r0)     // Catch:{ all -> 0x0889 }
                monitor-exit(r1)     // Catch:{ all -> 0x0889 }
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this
                long r3 = r0.groupId
                java.lang.String r5 = r0.deviceId
                r6 = 0
                r1.notifyTaskStatusChange(r3, r5, r6)
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this
                r1.notifyTaskRunningListChange()
                r1 = 0
                r3 = 1
                com.genonbeta.TrebleShot.util.CommunicationBridge$Client r4 = new com.genonbeta.TrebleShot.util.CommunicationBridge$Client     // Catch:{ Exception -> 0x072c }
                com.genonbeta.TrebleShot.service.CommunicationService r5 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x072c }
                com.genonbeta.TrebleShot.database.AccessDatabase r5 = r5.getDatabase()     // Catch:{ Exception -> 0x072c }
                r4.<init>(r5)     // Catch:{ Exception -> 0x072c }
                com.genonbeta.TrebleShot.object.TransferInstance r5 = r12.mTransfer     // Catch:{ Exception -> 0x072c }
                com.genonbeta.TrebleShot.object.NetworkDevice r5 = r5.getDevice()     // Catch:{ Exception -> 0x072c }
                r4.setDevice(r5)     // Catch:{ Exception -> 0x072c }
                com.genonbeta.TrebleShot.object.TransferInstance r5 = r12.mTransfer     // Catch:{ Exception -> 0x072c }
                com.genonbeta.TrebleShot.object.NetworkDevice r5 = r5.getDevice()     // Catch:{ Exception -> 0x072c }
                com.genonbeta.TrebleShot.object.TransferInstance r7 = r12.mTransfer     // Catch:{ Exception -> 0x072c }
                com.genonbeta.TrebleShot.object.NetworkDevice$Connection r7 = r7.getConnection()     // Catch:{ Exception -> 0x072c }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r4 = r4.communicate((com.genonbeta.TrebleShot.object.NetworkDevice) r5, (com.genonbeta.TrebleShot.object.NetworkDevice.Connection) r7)     // Catch:{ Exception -> 0x072c }
                org.json.JSONObject r5 = new org.json.JSONObject     // Catch:{ Exception -> 0x072c }
                r5.<init>()     // Catch:{ Exception -> 0x072c }
                java.lang.String r7 = "request"
                java.lang.String r8 = "requestHandshake"
                org.json.JSONObject r5 = r5.put((java.lang.String) r7, (java.lang.Object) r8)     // Catch:{ Exception -> 0x072c }
                java.lang.String r5 = r5.toString()     // Catch:{ Exception -> 0x072c }
                r4.reply(r5)     // Catch:{ Exception -> 0x072c }
                java.lang.String r5 = "CommunicationService"
                java.lang.String r7 = "SeamlessClientHandler.onConnect(): reply: empty"
                android.util.Log.d(r5, r7)     // Catch:{ Exception -> 0x072c }
                org.json.JSONObject r5 = new org.json.JSONObject     // Catch:{ Exception -> 0x072c }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection$Response r4 = r4.receive()     // Catch:{ Exception -> 0x072c }
                java.lang.String r4 = r4.response     // Catch:{ Exception -> 0x072c }
                r5.<init>((java.lang.String) r4)     // Catch:{ Exception -> 0x072c }
                java.lang.String r4 = "CommunicationService"
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x072c }
                r7.<init>()     // Catch:{ Exception -> 0x072c }
                java.lang.String r8 = "SeamlessClientHandler.onConnect(): Initial connection response: "
                r7.append(r8)     // Catch:{ Exception -> 0x072c }
                java.lang.String r8 = r5.toString()     // Catch:{ Exception -> 0x072c }
                r7.append(r8)     // Catch:{ Exception -> 0x072c }
                java.lang.String r7 = r7.toString()     // Catch:{ Exception -> 0x072c }
                android.util.Log.d(r4, r7)     // Catch:{ Exception -> 0x072c }
                java.lang.String r4 = "result"
                boolean r4 = r5.getBoolean(r4)     // Catch:{ Exception -> 0x072c }
                if (r4 == 0) goto L_0x0721
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r4 = r0.activeConnection     // Catch:{ Exception -> 0x06c0 }
                java.net.InetSocketAddress r5 = new java.net.InetSocketAddress     // Catch:{ Exception -> 0x06c0 }
                com.genonbeta.TrebleShot.object.TransferInstance r7 = r12.mTransfer     // Catch:{ Exception -> 0x06c0 }
                com.genonbeta.TrebleShot.object.NetworkDevice$Connection r7 = r7.getConnection()     // Catch:{ Exception -> 0x06c0 }
                java.lang.String r7 = r7.ipAddress     // Catch:{ Exception -> 0x06c0 }
                r8 = 58762(0xe58a, float:8.2343E-41)
                r5.<init>(r7, r8)     // Catch:{ Exception -> 0x06c0 }
                r4.connect(r5)     // Catch:{ Exception -> 0x06c0 }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r4 = r0.activeConnection     // Catch:{ Exception -> 0x0668 }
                org.json.JSONObject r5 = new org.json.JSONObject     // Catch:{ Exception -> 0x0668 }
                r5.<init>()     // Catch:{ Exception -> 0x0668 }
                java.lang.String r7 = "groupId"
                long r8 = r0.groupId     // Catch:{ Exception -> 0x0668 }
                org.json.JSONObject r5 = r5.put((java.lang.String) r7, (long) r8)     // Catch:{ Exception -> 0x0668 }
                java.lang.String r7 = "deviceId"
                java.lang.String r13 = r13.deviceId     // Catch:{ Exception -> 0x0668 }
                org.json.JSONObject r13 = r5.put((java.lang.String) r7, (java.lang.Object) r13)     // Catch:{ Exception -> 0x0668 }
                java.lang.String r13 = r13.toString()     // Catch:{ Exception -> 0x0668 }
                r4.reply(r13)     // Catch:{ Exception -> 0x0668 }
                java.lang.String r13 = "CommunicationService"
                java.lang.String r4 = "SeamlessClientHandler.onConnect(): reply: empty"
                android.util.Log.d(r13, r4)     // Catch:{ Exception -> 0x0668 }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ Exception -> 0x0668 }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection$Response r13 = r13.receive()     // Catch:{ Exception -> 0x0668 }
                org.json.JSONObject r4 = new org.json.JSONObject     // Catch:{ Exception -> 0x0668 }
                java.lang.String r5 = r13.response     // Catch:{ Exception -> 0x0668 }
                r4.<init>((java.lang.String) r5)     // Catch:{ Exception -> 0x0668 }
                java.lang.String r5 = "CommunicationService"
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0668 }
                r7.<init>()     // Catch:{ Exception -> 0x0668 }
                java.lang.String r8 = "SeamlessClientHandler.onConnect(): receive: "
                r7.append(r8)     // Catch:{ Exception -> 0x0668 }
                java.lang.String r13 = r13.response     // Catch:{ Exception -> 0x0668 }
                r7.append(r13)     // Catch:{ Exception -> 0x0668 }
                java.lang.String r13 = r7.toString()     // Catch:{ Exception -> 0x0668 }
                android.util.Log.d(r5, r13)     // Catch:{ Exception -> 0x0668 }
                java.lang.String r13 = "result"
                boolean r13 = r4.getBoolean(r13)     // Catch:{ Exception -> 0x0668 }
                if (r13 != 0) goto L_0x01d0
                java.lang.String r13 = "CommunicationService"
                java.lang.String r2 = "SeamlessClientHandler.onConnect(): false result, it will exit."
                android.util.Log.d(r13, r2)     // Catch:{ Exception -> 0x0668 }
                java.lang.String r13 = "error"
                boolean r13 = r4.has(r13)     // Catch:{ Exception -> 0x0668 }
                if (r13 == 0) goto L_0x0144
                java.lang.String r13 = "error"
                java.lang.String r1 = r4.getString(r13)     // Catch:{ Exception -> 0x0668 }
            L_0x0144:
                java.lang.String r13 = "notFound"
                boolean r13 = r13.equals(r1)     // Catch:{ Exception -> 0x0668 }
                if (r13 == 0) goto L_0x016f
                android.content.ContentValues r13 = new android.content.ContentValues     // Catch:{ Exception -> 0x0668 }
                r13.<init>()     // Catch:{ Exception -> 0x0668 }
                java.lang.String r2 = "flag"
                com.genonbeta.TrebleShot.object.TransferObject$Flag r4 = com.genonbeta.TrebleShot.object.TransferObject.Flag.REMOVED     // Catch:{ Exception -> 0x0668 }
                java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x0668 }
                r13.put(r2, r4)     // Catch:{ Exception -> 0x0668 }
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x0668 }
                com.genonbeta.TrebleShot.database.AccessDatabase r2 = r2.getDatabase()     // Catch:{ Exception -> 0x0668 }
                long r4 = r0.groupId     // Catch:{ Exception -> 0x0668 }
                java.lang.String r7 = r0.deviceId     // Catch:{ Exception -> 0x0668 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r8 = com.genonbeta.TrebleShot.object.TransferObject.Flag.DONE     // Catch:{ Exception -> 0x0668 }
                com.genonbeta.android.database.SQLQuery$Select r4 = com.genonbeta.TrebleShot.util.TransferUtils.createTransferSelection(r4, r7, r8, r6)     // Catch:{ Exception -> 0x0668 }
                r2.update((com.genonbeta.android.database.SQLQuery.Select) r4, (android.content.ContentValues) r13)     // Catch:{ Exception -> 0x0668 }
            L_0x016f:
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x0668 }
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r13 = r13.getNotificationHelper()     // Catch:{ Exception -> 0x0668 }
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer     // Catch:{ Exception -> 0x0668 }
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.INCOMING     // Catch:{ Exception -> 0x0668 }
                r13.notifyConnectionError(r2, r4, r1)     // Catch:{ Exception -> 0x0668 }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x0196 }
                if (r13 == 0) goto L_0x019a
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x0196 }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ IOException -> 0x0196 }
                boolean r13 = r13.isClosed()     // Catch:{ IOException -> 0x0196 }
                if (r13 != 0) goto L_0x019a
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x0196 }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ IOException -> 0x0196 }
                r13.close()     // Catch:{ IOException -> 0x0196 }
                goto L_0x019a
            L_0x0196:
                r13 = move-exception
                r13.printStackTrace()
            L_0x019a:
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r13 = r13.getActiveProcessList()
                monitor-enter(r13)
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x01cd }
                java.util.List r1 = r1.getActiveProcessList()     // Catch:{ all -> 0x01cd }
                r1.remove(r0)     // Catch:{ all -> 0x01cd }
                monitor-exit(r13)     // Catch:{ all -> 0x01cd }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.object.TransferInstance r0 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup r0 = r0.getGroup()
                long r0 = r0.groupId
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup$Assignee r2 = r2.getAssignee()
                java.lang.String r2 = r2.deviceId
                r13.notifyTaskStatusChange(r0, r2, r3)
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                r13.notifyTaskRunningListChange()
                java.lang.String r13 = "CommunicationService"
                java.lang.String r0 = "We have exited"
                android.util.Log.d(r13, r0)
                return
            L_0x01cd:
                r0 = move-exception
                monitor-exit(r13)     // Catch:{ all -> 0x01cd }
                throw r0
            L_0x01d0:
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ Exception -> 0x078d }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ Exception -> 0x078d }
                if (r13 == 0) goto L_0x0531
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ Exception -> 0x078d }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ Exception -> 0x078d }
                boolean r13 = r13.isConnected()     // Catch:{ Exception -> 0x078d }
                if (r13 == 0) goto L_0x0531
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r13 = r0.builder     // Catch:{ Exception -> 0x078d }
                r13.reset()     // Catch:{ Exception -> 0x078d }
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r13 = r0.builder     // Catch:{ Exception -> 0x078d }
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r13 = r13.getTransferProgress()     // Catch:{ Exception -> 0x078d }
                boolean r13 = r13.isInterrupted()     // Catch:{ Exception -> 0x078d }
                if (r13 == 0) goto L_0x01f7
                goto L_0x0531
            L_0x01f7:
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x04b9 }
                long r4 = r0.groupId     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r1 = r0.deviceId     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject$Type r7 = r0.type     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r13 = com.genonbeta.TrebleShot.util.TransferUtils.fetchValidTransfer(r13, r4, r1, r7)     // Catch:{ Exception -> 0x04b9 }
                if (r13 != 0) goto L_0x023b
                java.lang.String r13 = "CommunicationService"
                java.lang.String r1 = "SeamlessClientHandler(): Exiting because there is no pending file instance left"
                android.util.Log.d(r13, r1)     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r13 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                if (r13 == 0) goto L_0x0531
                java.lang.String r13 = "CommunicationService"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x078d }
                r1.<init>()     // Catch:{ Exception -> 0x078d }
                java.lang.String r2 = "SeamlessClientHandler.onConnect(): Updating file instances to "
                r1.append(r2)     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject r2 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r2 = r2.flag     // Catch:{ Exception -> 0x078d }
                java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x078d }
                r1.append(r2)     // Catch:{ Exception -> 0x078d }
                java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x078d }
                android.util.Log.d(r13, r1)     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.database.AccessDatabase r13 = r13.getDatabase()     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject r1 = r0.transferObject     // Catch:{ Exception -> 0x078d }
            L_0x0236:
                r13.update((com.genonbeta.android.database.DatabaseObject) r1)     // Catch:{ Exception -> 0x078d }
                goto L_0x0531
            L_0x023b:
                r0.transferObject = r13     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x04b9 }
                android.content.Context r13 = r13.getApplicationContext()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r1 = r0.transferObject     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferInstance r4 = r12.mTransfer     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferGroup r4 = r4.getGroup()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.android.framework.io.DocumentFile r13 = com.genonbeta.TrebleShot.util.FileUtils.getIncomingTransactionFile(r13, r1, r4)     // Catch:{ Exception -> 0x04b9 }
                r0.currentFile = r13     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x04b9 }
                android.content.Context r13 = r13.getApplicationContext()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.android.framework.io.DocumentFile r1 = r0.currentFile     // Catch:{ Exception -> 0x04b9 }
                android.net.Uri r1 = r1.getUri()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.android.framework.io.StreamInfo r13 = com.genonbeta.android.framework.io.StreamInfo.getStreamInfo(r13, r1)     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r1 = r1.getNotificationHelper()     // Catch:{ Exception -> 0x04b9 }
                r1.notifyFileTransaction(r0)     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r1 = r0.builder     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolTransfer$Receive$Builder r1 = (com.genonbeta.CoolSocket.CoolTransfer.Receive.Builder) r1     // Catch:{ Exception -> 0x04b9 }
                java.io.OutputStream r13 = r13.openOutputStream()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolTransfer$Receive$Builder r13 = r1.setOutputStream((java.io.OutputStream) r13)     // Catch:{ Exception -> 0x04b9 }
                java.net.ServerSocket r4 = new java.net.ServerSocket     // Catch:{ Exception -> 0x04b9 }
                r4.<init>(r6)     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolTransfer$Receive$Builder r13 = r13.setServerSocket(r4)     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolTransfer$Receive$Builder r13 = r13.setTimeout(r2)     // Catch:{ Exception -> 0x04b9 }
                r4 = 8096(0x1fa0, float:1.1345E-41)
                byte[] r4 = new byte[r4]     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder r13 = r13.setBuffer(r4)     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r4 = r0.transferObject     // Catch:{ Exception -> 0x04b9 }
                long r4 = r4.fileSize     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder r13 = r13.setFileSize(r4)     // Catch:{ Exception -> 0x04b9 }
                r13.setExtra(r0)     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService$Receive r13 = r13.mReceive     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolTransfer$Receive$Handler r13 = r13.prepare(r1)     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.android.framework.io.DocumentFile r4 = r0.currentFile     // Catch:{ Exception -> 0x04b9 }
                long r4 = r4.length()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r7 = r0.transferObject     // Catch:{ Exception -> 0x04b9 }
                r7.skippedBytes = r4     // Catch:{ Exception -> 0x04b9 }
                org.json.JSONObject r7 = new org.json.JSONObject     // Catch:{ Exception -> 0x04b9 }
                r7.<init>()     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r8 = "requestId"
                com.genonbeta.TrebleShot.object.TransferObject r9 = r0.transferObject     // Catch:{ Exception -> 0x04b9 }
                long r9 = r9.requestId     // Catch:{ Exception -> 0x04b9 }
                r7.put((java.lang.String) r8, (long) r9)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r8 = "groupId"
                com.genonbeta.TrebleShot.object.TransferObject r9 = r0.transferObject     // Catch:{ Exception -> 0x04b9 }
                long r9 = r9.groupId     // Catch:{ Exception -> 0x04b9 }
                r7.put((java.lang.String) r8, (long) r9)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r8 = "socketPort"
                java.net.ServerSocket r1 = r1.getServerSocket()     // Catch:{ Exception -> 0x04b9 }
                int r1 = r1.getLocalPort()     // Catch:{ Exception -> 0x04b9 }
                r7.put((java.lang.String) r8, (int) r1)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r1 = "result"
                r7.put((java.lang.String) r1, (boolean) r3)     // Catch:{ Exception -> 0x04b9 }
                r8 = 0
                int r1 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
                if (r1 <= 0) goto L_0x02de
                java.lang.String r1 = "skippedBytes"
                r7.put((java.lang.String) r1, (long) r4)     // Catch:{ Exception -> 0x04b9 }
            L_0x02de:
                java.lang.Object r1 = r13.getExtra()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r1 = (com.genonbeta.TrebleShot.service.CommunicationService.ProcessHolder) r1     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r1 = r1.activeConnection     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r8 = r7.toString()     // Catch:{ Exception -> 0x04b9 }
                r1.reply(r8)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r1 = "CommunicationService"
                java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x04b9 }
                r8.<init>()     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r9 = "Receive.onTaskPrepareSocket(): reply: "
                r8.append(r9)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r7 = r7.toString()     // Catch:{ Exception -> 0x04b9 }
                r8.append(r7)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r7 = r8.toString()     // Catch:{ Exception -> 0x04b9 }
                android.util.Log.d(r1, r7)     // Catch:{ Exception -> 0x04b9 }
                org.json.JSONObject r1 = new org.json.JSONObject     // Catch:{ Exception -> 0x04b9 }
                java.lang.Object r7 = r13.getExtra()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r7 = (com.genonbeta.TrebleShot.service.CommunicationService.ProcessHolder) r7     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r7 = r7.activeConnection     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection$Response r7 = r7.receive()     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r7 = r7.response     // Catch:{ Exception -> 0x04b9 }
                r1.<init>((java.lang.String) r7)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r7 = "CommunicationService"
                java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x04b9 }
                r8.<init>()     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r9 = "Receive.onTaskPrepareSocket(): receive: "
                r8.append(r9)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r9 = r1.toString()     // Catch:{ Exception -> 0x04b9 }
                r8.append(r9)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r8 = r8.toString()     // Catch:{ Exception -> 0x04b9 }
                android.util.Log.d(r7, r8)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r7 = "result"
                boolean r7 = r1.getBoolean(r7)     // Catch:{ Exception -> 0x04b9 }
                if (r7 != 0) goto L_0x041d
                java.lang.String r4 = "jobDone"
                boolean r4 = r1.has(r4)     // Catch:{ Exception -> 0x04b9 }
                if (r4 == 0) goto L_0x0386
                java.lang.String r4 = "jobDone"
                boolean r4 = r1.getBoolean(r4)     // Catch:{ Exception -> 0x04b9 }
                if (r4 != 0) goto L_0x0386
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r13 = r13.getTransferProgress()     // Catch:{ Exception -> 0x04b9 }
                r13.interrupt()     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r13 = "CommunicationService"
                java.lang.String r1 = "Receive.onTaskPrepareSocket(): Transfer should be closed, babe!"
                android.util.Log.d(r13, r1)     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r13 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                if (r13 == 0) goto L_0x0531
                java.lang.String r13 = "CommunicationService"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x078d }
                r1.<init>()     // Catch:{ Exception -> 0x078d }
                java.lang.String r2 = "SeamlessClientHandler.onConnect(): Updating file instances to "
                r1.append(r2)     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject r2 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r2 = r2.flag     // Catch:{ Exception -> 0x078d }
                java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x078d }
                r1.append(r2)     // Catch:{ Exception -> 0x078d }
                java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x078d }
                android.util.Log.d(r13, r1)     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.database.AccessDatabase r13 = r13.getDatabase()     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject r1 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                goto L_0x0236
            L_0x0386:
                java.lang.String r4 = "flag"
                boolean r4 = r1.has(r4)     // Catch:{ Exception -> 0x04b9 }
                if (r4 == 0) goto L_0x0488
                java.lang.String r4 = "flagGroupExists"
                java.lang.String r5 = "flag"
                java.lang.String r5 = r1.getString(r5)     // Catch:{ Exception -> 0x04b9 }
                boolean r4 = r4.equals(r5)     // Catch:{ Exception -> 0x04b9 }
                if (r4 == 0) goto L_0x0488
                java.lang.String r4 = "error"
                boolean r4 = r1.has(r4)     // Catch:{ Exception -> 0x04b9 }
                if (r4 == 0) goto L_0x03c7
                java.lang.String r4 = "error"
                java.lang.String r4 = r1.getString(r4)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r5 = "notFound"
                boolean r4 = r4.equals(r5)     // Catch:{ Exception -> 0x04b9 }
                if (r4 == 0) goto L_0x03c7
                java.lang.Object r13 = r13.getExtra()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r13 = (com.genonbeta.TrebleShot.service.CommunicationService.ProcessHolder) r13     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r13 = r13.transferObject     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r1 = com.genonbeta.TrebleShot.object.TransferObject.Flag.REMOVED     // Catch:{ Exception -> 0x04b9 }
                r13.flag = r1     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r13 = "CommunicationService"
                java.lang.String r1 = "Receive.onTaskPrepareSocket(): Sender says it does not have the file defined"
                android.util.Log.d(r13, r1)     // Catch:{ Exception -> 0x04b9 }
                goto L_0x0488
            L_0x03c7:
                java.lang.String r4 = "error"
                boolean r4 = r1.has(r4)     // Catch:{ Exception -> 0x04b9 }
                if (r4 == 0) goto L_0x03f2
                java.lang.String r4 = "error"
                java.lang.String r4 = r1.getString(r4)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r5 = "notAccessible"
                boolean r4 = r4.equals(r5)     // Catch:{ Exception -> 0x04b9 }
                if (r4 == 0) goto L_0x03f2
                java.lang.Object r13 = r13.getExtra()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r13 = (com.genonbeta.TrebleShot.service.CommunicationService.ProcessHolder) r13     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r13 = r13.transferObject     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r1 = com.genonbeta.TrebleShot.object.TransferObject.Flag.INTERRUPTED     // Catch:{ Exception -> 0x04b9 }
                r13.flag = r1     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r13 = "CommunicationService"
                java.lang.String r1 = "Receive.onTaskPrepareSocket(): Sender says it can't open the file"
                android.util.Log.d(r13, r1)     // Catch:{ Exception -> 0x04b9 }
                goto L_0x0488
            L_0x03f2:
                java.lang.String r4 = "error"
                boolean r4 = r1.has(r4)     // Catch:{ Exception -> 0x04b9 }
                if (r4 == 0) goto L_0x0488
                java.lang.String r4 = "error"
                java.lang.String r1 = r1.getString(r4)     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r4 = "errorUnknown"
                boolean r1 = r1.equals(r4)     // Catch:{ Exception -> 0x04b9 }
                if (r1 == 0) goto L_0x0488
                java.lang.Object r13 = r13.getExtra()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r13 = (com.genonbeta.TrebleShot.service.CommunicationService.ProcessHolder) r13     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r13 = r13.transferObject     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r1 = com.genonbeta.TrebleShot.object.TransferObject.Flag.INTERRUPTED     // Catch:{ Exception -> 0x04b9 }
                r13.flag = r1     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r13 = "CommunicationService"
                java.lang.String r1 = "Receive.onTaskPrepareSocket(): Sender says an unknown error occurred"
                android.util.Log.d(r13, r1)     // Catch:{ Exception -> 0x04b9 }
                goto L_0x0488
            L_0x041d:
                java.lang.String r7 = "sizeChanged"
                boolean r7 = r1.has(r7)     // Catch:{ Exception -> 0x04b9 }
                r8 = -1
                if (r7 == 0) goto L_0x042e
                java.lang.String r7 = "sizeChanged"
                long r10 = r1.getLong(r7)     // Catch:{ Exception -> 0x04b9 }
                goto L_0x042f
            L_0x042e:
                r10 = r8
            L_0x042f:
                int r7 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
                if (r7 <= 0) goto L_0x0443
                java.lang.Object r7 = r13.getExtra()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r7 = (com.genonbeta.TrebleShot.service.CommunicationService.ProcessHolder) r7     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r7 = r7.transferObject     // Catch:{ Exception -> 0x04b9 }
                long r7 = r7.fileSize     // Catch:{ Exception -> 0x04b9 }
                int r9 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1))
                if (r9 == 0) goto L_0x0443
                r7 = 1
                goto L_0x0444
            L_0x0443:
                r7 = 0
            L_0x0444:
                if (r7 == 0) goto L_0x044f
                r8 = 1
                int r10 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
                if (r10 >= 0) goto L_0x044d
                goto L_0x044f
            L_0x044d:
                r4 = 0
                goto L_0x0450
            L_0x044f:
                r4 = 1
            L_0x0450:
                if (r7 == 0) goto L_0x0469
                java.lang.String r5 = "CommunicationService"
                java.lang.String r7 = "Receive.onTaskPrepareSocket(): Sender says the file has a new size"
                android.util.Log.d(r5, r7)     // Catch:{ Exception -> 0x04b9 }
                java.lang.Object r5 = r13.getExtra()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r5 = (com.genonbeta.TrebleShot.service.CommunicationService.ProcessHolder) r5     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r5 = r5.transferObject     // Catch:{ Exception -> 0x04b9 }
                java.lang.String r7 = "sizeChanged"
                long r7 = r1.getLong(r7)     // Catch:{ Exception -> 0x04b9 }
                r5.fileSize = r7     // Catch:{ Exception -> 0x04b9 }
            L_0x0469:
                if (r4 != 0) goto L_0x047f
                java.lang.String r1 = "CommunicationService"
                java.lang.String r4 = "Receive.onTaskPrepareSocket(): The change may broke the previous file which has a length. Cannot take the risk."
                android.util.Log.d(r1, r4)     // Catch:{ Exception -> 0x04b9 }
                java.lang.Object r13 = r13.getExtra()     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder r13 = (com.genonbeta.TrebleShot.service.CommunicationService.ProcessHolder) r13     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject r13 = r13.transferObject     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r1 = com.genonbeta.TrebleShot.object.TransferObject.Flag.REMOVED     // Catch:{ Exception -> 0x04b9 }
                r13.flag = r1     // Catch:{ Exception -> 0x04b9 }
                goto L_0x0488
            L_0x047f:
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x04b9 }
                com.genonbeta.TrebleShot.service.CommunicationService$Receive r1 = r1.mReceive     // Catch:{ Exception -> 0x04b9 }
                r1.receive((com.genonbeta.CoolSocket.CoolTransfer.Receive<T>.Handler) r13, (boolean) r3)     // Catch:{ Exception -> 0x04b9 }
            L_0x0488:
                com.genonbeta.TrebleShot.object.TransferObject r13 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                if (r13 == 0) goto L_0x01d0
                java.lang.String r13 = "CommunicationService"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x078d }
                r1.<init>()     // Catch:{ Exception -> 0x078d }
                java.lang.String r4 = "SeamlessClientHandler.onConnect(): Updating file instances to "
                r1.append(r4)     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject r4 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r4 = r4.flag     // Catch:{ Exception -> 0x078d }
                java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x078d }
                r1.append(r4)     // Catch:{ Exception -> 0x078d }
                java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x078d }
                android.util.Log.d(r13, r1)     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.database.AccessDatabase r13 = r13.getDatabase()     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject r1 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                r13.update((com.genonbeta.android.database.DatabaseObject) r1)     // Catch:{ Exception -> 0x078d }
                goto L_0x01d0
            L_0x04b7:
                r13 = move-exception
                goto L_0x0503
            L_0x04b9:
                r13 = move-exception
                r13.printStackTrace()     // Catch:{ all -> 0x04b7 }
                boolean r13 = r0.recoverInterruptions     // Catch:{ all -> 0x0501 }
                if (r13 != 0) goto L_0x04ca
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x0501 }
                long r1 = r0.groupId     // Catch:{ all -> 0x0501 }
                com.genonbeta.TrebleShot.util.TransferUtils.recoverIncomingInterruptions(r13, r1)     // Catch:{ all -> 0x0501 }
                r0.recoverInterruptions = r3     // Catch:{ all -> 0x0501 }
            L_0x04ca:
                com.genonbeta.TrebleShot.object.TransferObject r13 = r0.transferObject     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                if (r13 == 0) goto L_0x04f7
                java.lang.String r13 = "CommunicationService"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                r1.<init>()     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                java.lang.String r2 = "SeamlessClientHandler.onConnect(): Updating file instances to "
                r1.append(r2)     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                com.genonbeta.TrebleShot.object.TransferObject r2 = r0.transferObject     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r2 = r2.flag     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                r1.append(r2)     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                android.util.Log.d(r13, r1)     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                com.genonbeta.TrebleShot.database.AccessDatabase r13 = r13.getDatabase()     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                com.genonbeta.TrebleShot.object.TransferObject r1 = r0.transferObject     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
                r13.update((com.genonbeta.android.database.DatabaseObject) r1)     // Catch:{ Exception -> 0x04fd, all -> 0x04f9 }
            L_0x04f7:
                r13 = 1
                goto L_0x0532
            L_0x04f9:
                r13 = move-exception
                r6 = 1
                goto L_0x080d
            L_0x04fd:
                r13 = move-exception
                r6 = 1
                goto L_0x078e
            L_0x0501:
                r13 = move-exception
                r6 = 1
            L_0x0503:
                com.genonbeta.TrebleShot.object.TransferObject r1 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                if (r1 == 0) goto L_0x0530
                java.lang.String r1 = "CommunicationService"
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x078d }
                r2.<init>()     // Catch:{ Exception -> 0x078d }
                java.lang.String r4 = "SeamlessClientHandler.onConnect(): Updating file instances to "
                r2.append(r4)     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject r4 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r4 = r4.flag     // Catch:{ Exception -> 0x078d }
                java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x078d }
                r2.append(r4)     // Catch:{ Exception -> 0x078d }
                java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x078d }
                android.util.Log.d(r1, r2)     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.database.AccessDatabase r1 = r1.getDatabase()     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject r2 = r0.transferObject     // Catch:{ Exception -> 0x078d }
                r1.update((com.genonbeta.android.database.DatabaseObject) r2)     // Catch:{ Exception -> 0x078d }
            L_0x0530:
                throw r13     // Catch:{ Exception -> 0x078d }
            L_0x0531:
                r13 = 0
            L_0x0532:
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                android.content.Context r1 = r1.getApplicationContext()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.TrebleShot.object.TransferGroup r2 = r2.getGroup()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.android.framework.io.DocumentFile r1 = com.genonbeta.TrebleShot.util.FileUtils.getSavePath(r1, r2)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.CoolSocket.CoolTransfer$Flag r2 = com.genonbeta.CoolSocket.CoolTransfer.Flag.CONTINUE     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r4 = r0.builder     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.CoolSocket.CoolTransfer$Flag r4 = r4.getFlag()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                boolean r2 = r2.equals(r4)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.TrebleShot.service.CommunicationService r4 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.TrebleShot.database.AccessDatabase r4 = r4.getDatabase()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                long r7 = r0.groupId     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                java.lang.String r5 = r0.deviceId     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r9 = com.genonbeta.TrebleShot.object.TransferObject.Flag.DONE     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.android.database.SQLQuery$Select r5 = com.genonbeta.TrebleShot.util.TransferUtils.createTransferSelection(r7, r5, r9, r6)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.android.database.CursorItem r4 = r4.getFirstFromTable(r5)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                if (r4 != 0) goto L_0x0566
                r4 = 1
                goto L_0x0567
            L_0x0566:
                r4 = 0
            L_0x0567:
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r5 = r0.activeConnection     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                org.json.JSONObject r7 = new org.json.JSONObject     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                r7.<init>()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                java.lang.String r8 = "result"
                org.json.JSONObject r7 = r7.put((java.lang.String) r8, (boolean) r6)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                java.lang.String r8 = "jobDone"
                if (r2 == 0) goto L_0x057c
                if (r4 == 0) goto L_0x057c
                r9 = 1
                goto L_0x057d
            L_0x057c:
                r9 = 0
            L_0x057d:
                org.json.JSONObject r7 = r7.put((java.lang.String) r8, (boolean) r9)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                java.lang.String r7 = r7.toString()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                r5.reply(r7)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                java.lang.String r5 = "CommunicationService"
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                r7.<init>()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                java.lang.String r8 = "SeamlessClientHandler.onConnect(): reply: done ?? "
                r7.append(r8)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                if (r2 == 0) goto L_0x0599
                if (r4 == 0) goto L_0x0599
                r6 = 1
            L_0x0599:
                r7.append(r6)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                java.lang.String r4 = r7.toString()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                android.util.Log.d(r5, r4)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                if (r13 != 0) goto L_0x05f1
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r4 = r0.builder     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r4 = r4.getTransferProgress()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                boolean r4 = r4.isInterrupted()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                if (r4 != 0) goto L_0x05db
                if (r2 == 0) goto L_0x05ca
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r2 = r2.getNotificationHelper()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.TrebleShot.object.TransferInstance r4 = r12.mTransfer     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.TrebleShot.object.NetworkDevice r4 = r4.getDevice()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                r2.notifyFileReceived(r0, r4, r1)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                java.lang.String r1 = "CommunicationService"
                java.lang.String r2 = "SeamlessClientHandler.onConnect(): Notify user"
                android.util.Log.d(r1, r2)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                goto L_0x05f1
            L_0x05ca:
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r1 = r1.getNotificationHelper()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                r1.notifyReceiveError((com.genonbeta.TrebleShot.service.CommunicationService.ProcessHolder) r0)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                java.lang.String r1 = "CommunicationService"
                java.lang.String r2 = "SeamlessClientHandler.onConnect(): Some files was not received"
                android.util.Log.d(r1, r2)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                goto L_0x05f1
            L_0x05db:
                com.genonbeta.TrebleShot.util.DynamicNotification r1 = r0.notification     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                r1.cancel()     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                java.lang.String r1 = "CommunicationService"
                java.lang.String r2 = "SeamlessClientHandler.onConnect(): Removing notification an error is already notified"
                android.util.Log.d(r1, r2)     // Catch:{ Exception -> 0x05ed, all -> 0x05e8 }
                goto L_0x05f1
            L_0x05e8:
                r1 = move-exception
                r6 = r13
                r13 = r1
                goto L_0x080d
            L_0x05ed:
                r1 = move-exception
                r1.printStackTrace()     // Catch:{ Exception -> 0x0663, all -> 0x05e8 }
            L_0x05f1:
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r1 = r0.activeConnection     // Catch:{ IOException -> 0x060b }
                if (r1 == 0) goto L_0x060f
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r1 = r0.activeConnection     // Catch:{ IOException -> 0x060b }
                java.net.Socket r1 = r1.getSocket()     // Catch:{ IOException -> 0x060b }
                boolean r1 = r1.isClosed()     // Catch:{ IOException -> 0x060b }
                if (r1 != 0) goto L_0x060f
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r1 = r0.activeConnection     // Catch:{ IOException -> 0x060b }
                java.net.Socket r1 = r1.getSocket()     // Catch:{ IOException -> 0x060b }
                r1.close()     // Catch:{ IOException -> 0x060b }
                goto L_0x060f
            L_0x060b:
                r1 = move-exception
                r1.printStackTrace()
            L_0x060f:
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r1 = r1.getActiveProcessList()
                monitor-enter(r1)
                com.genonbeta.TrebleShot.service.CommunicationService r2 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x0660 }
                java.util.List r2 = r2.getActiveProcessList()     // Catch:{ all -> 0x0660 }
                r2.remove(r0)     // Catch:{ all -> 0x0660 }
                monitor-exit(r1)     // Catch:{ all -> 0x0660 }
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup r2 = r2.getGroup()
                long r4 = r2.groupId
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup$Assignee r2 = r2.getAssignee()
                java.lang.String r2 = r2.deviceId
                r1.notifyTaskStatusChange(r4, r2, r3)
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this
                r1.notifyTaskRunningListChange()
                java.lang.String r1 = "CommunicationService"
                java.lang.String r2 = "We have exited"
                android.util.Log.d(r1, r2)
                if (r13 == 0) goto L_0x0809
                int r13 = r0.attemptsLeft
                if (r13 <= 0) goto L_0x0809
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r13 = r0.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r13 = r13.getTransferProgress()
                boolean r13 = r13.isInterrupted()
                if (r13 != 0) goto L_0x0809
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x0802 }
                long r1 = r0.groupId     // Catch:{ Exception -> 0x0802 }
                java.lang.String r4 = r0.deviceId     // Catch:{ Exception -> 0x0802 }
                r13.startFileReceiving(r1, r4)     // Catch:{ Exception -> 0x0802 }
                int r13 = r0.attemptsLeft     // Catch:{ Exception -> 0x0802 }
                goto L_0x07fe
            L_0x0660:
                r13 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x0660 }
                throw r13
            L_0x0663:
                r1 = move-exception
                r6 = r13
                r13 = r1
                goto L_0x078e
            L_0x0668:
                r13 = move-exception
                r13.printStackTrace()     // Catch:{ Exception -> 0x078d }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x0686 }
                if (r13 == 0) goto L_0x068a
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x0686 }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ IOException -> 0x0686 }
                boolean r13 = r13.isClosed()     // Catch:{ IOException -> 0x0686 }
                if (r13 != 0) goto L_0x068a
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x0686 }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ IOException -> 0x0686 }
                r13.close()     // Catch:{ IOException -> 0x0686 }
                goto L_0x068a
            L_0x0686:
                r13 = move-exception
                r13.printStackTrace()
            L_0x068a:
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r13 = r13.getActiveProcessList()
                monitor-enter(r13)
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x06bd }
                java.util.List r1 = r1.getActiveProcessList()     // Catch:{ all -> 0x06bd }
                r1.remove(r0)     // Catch:{ all -> 0x06bd }
                monitor-exit(r13)     // Catch:{ all -> 0x06bd }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.object.TransferInstance r0 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup r0 = r0.getGroup()
                long r0 = r0.groupId
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup$Assignee r2 = r2.getAssignee()
                java.lang.String r2 = r2.deviceId
                r13.notifyTaskStatusChange(r0, r2, r3)
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                r13.notifyTaskRunningListChange()
                java.lang.String r13 = "CommunicationService"
                java.lang.String r0 = "We have exited"
                android.util.Log.d(r13, r0)
                return
            L_0x06bd:
                r0 = move-exception
                monitor-exit(r13)     // Catch:{ all -> 0x06bd }
                throw r0
            L_0x06c0:
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r13 = r13.getNotificationHelper()     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.INCOMING     // Catch:{ Exception -> 0x078d }
                r13.notifyConnectionError(r2, r4, r1)     // Catch:{ Exception -> 0x078d }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x06e7 }
                if (r13 == 0) goto L_0x06eb
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x06e7 }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ IOException -> 0x06e7 }
                boolean r13 = r13.isClosed()     // Catch:{ IOException -> 0x06e7 }
                if (r13 != 0) goto L_0x06eb
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x06e7 }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ IOException -> 0x06e7 }
                r13.close()     // Catch:{ IOException -> 0x06e7 }
                goto L_0x06eb
            L_0x06e7:
                r13 = move-exception
                r13.printStackTrace()
            L_0x06eb:
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r13 = r13.getActiveProcessList()
                monitor-enter(r13)
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x071e }
                java.util.List r1 = r1.getActiveProcessList()     // Catch:{ all -> 0x071e }
                r1.remove(r0)     // Catch:{ all -> 0x071e }
                monitor-exit(r13)     // Catch:{ all -> 0x071e }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.object.TransferInstance r0 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup r0 = r0.getGroup()
                long r0 = r0.groupId
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup$Assignee r2 = r2.getAssignee()
                java.lang.String r2 = r2.deviceId
                r13.notifyTaskStatusChange(r0, r2, r3)
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                r13.notifyTaskRunningListChange()
                java.lang.String r13 = "CommunicationService"
                java.lang.String r0 = "We have exited"
                android.util.Log.d(r13, r0)
                return
            L_0x071e:
                r0 = move-exception
                monitor-exit(r13)     // Catch:{ all -> 0x071e }
                throw r0
            L_0x0721:
                java.lang.Exception r13 = new java.lang.Exception     // Catch:{ Exception -> 0x072c }
                java.lang.String r2 = "Server rejected the request"
                r13.<init>(r2)     // Catch:{ Exception -> 0x072c }
                throw r13     // Catch:{ Exception -> 0x072c }
            L_0x0729:
                r13 = move-exception
                goto L_0x080d
            L_0x072c:
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.util.CommunicationNotificationHelper r13 = r13.getNotificationHelper()     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer     // Catch:{ Exception -> 0x078d }
                com.genonbeta.TrebleShot.object.TransferObject$Type r4 = com.genonbeta.TrebleShot.object.TransferObject.Type.INCOMING     // Catch:{ Exception -> 0x078d }
                r13.notifyConnectionError(r2, r4, r1)     // Catch:{ Exception -> 0x078d }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x0753 }
                if (r13 == 0) goto L_0x0757
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x0753 }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ IOException -> 0x0753 }
                boolean r13 = r13.isClosed()     // Catch:{ IOException -> 0x0753 }
                if (r13 != 0) goto L_0x0757
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x0753 }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ IOException -> 0x0753 }
                r13.close()     // Catch:{ IOException -> 0x0753 }
                goto L_0x0757
            L_0x0753:
                r13 = move-exception
                r13.printStackTrace()
            L_0x0757:
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r13 = r13.getActiveProcessList()
                monitor-enter(r13)
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x078a }
                java.util.List r1 = r1.getActiveProcessList()     // Catch:{ all -> 0x078a }
                r1.remove(r0)     // Catch:{ all -> 0x078a }
                monitor-exit(r13)     // Catch:{ all -> 0x078a }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.object.TransferInstance r0 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup r0 = r0.getGroup()
                long r0 = r0.groupId
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup$Assignee r2 = r2.getAssignee()
                java.lang.String r2 = r2.deviceId
                r13.notifyTaskStatusChange(r0, r2, r3)
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                r13.notifyTaskRunningListChange()
                java.lang.String r13 = "CommunicationService"
                java.lang.String r0 = "We have exited"
                android.util.Log.d(r13, r0)
                return
            L_0x078a:
                r0 = move-exception
                monitor-exit(r13)     // Catch:{ all -> 0x078a }
                throw r0
            L_0x078d:
                r13 = move-exception
            L_0x078e:
                r13.printStackTrace()     // Catch:{ all -> 0x0729 }
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x07ab }
                if (r13 == 0) goto L_0x07af
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x07ab }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ IOException -> 0x07ab }
                boolean r13 = r13.isClosed()     // Catch:{ IOException -> 0x07ab }
                if (r13 != 0) goto L_0x07af
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r13 = r0.activeConnection     // Catch:{ IOException -> 0x07ab }
                java.net.Socket r13 = r13.getSocket()     // Catch:{ IOException -> 0x07ab }
                r13.close()     // Catch:{ IOException -> 0x07ab }
                goto L_0x07af
            L_0x07ab:
                r13 = move-exception
                r13.printStackTrace()
            L_0x07af:
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r13 = r13.getActiveProcessList()
                monitor-enter(r13)
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x080a }
                java.util.List r1 = r1.getActiveProcessList()     // Catch:{ all -> 0x080a }
                r1.remove(r0)     // Catch:{ all -> 0x080a }
                monitor-exit(r13)     // Catch:{ all -> 0x080a }
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.object.TransferInstance r1 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup r1 = r1.getGroup()
                long r1 = r1.groupId
                com.genonbeta.TrebleShot.object.TransferInstance r4 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup$Assignee r4 = r4.getAssignee()
                java.lang.String r4 = r4.deviceId
                r13.notifyTaskStatusChange(r1, r4, r3)
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this
                r13.notifyTaskRunningListChange()
                java.lang.String r13 = "CommunicationService"
                java.lang.String r1 = "We have exited"
                android.util.Log.d(r13, r1)
                if (r6 == 0) goto L_0x0809
                int r13 = r0.attemptsLeft
                if (r13 <= 0) goto L_0x0809
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r13 = r0.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r13 = r13.getTransferProgress()
                boolean r13 = r13.isInterrupted()
                if (r13 != 0) goto L_0x0809
                com.genonbeta.TrebleShot.service.CommunicationService r13 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x0802 }
                long r1 = r0.groupId     // Catch:{ Exception -> 0x0802 }
                java.lang.String r4 = r0.deviceId     // Catch:{ Exception -> 0x0802 }
                r13.startFileReceiving(r1, r4)     // Catch:{ Exception -> 0x0802 }
                int r13 = r0.attemptsLeft     // Catch:{ Exception -> 0x0802 }
            L_0x07fe:
                int r13 = r13 - r3
                r0.attemptsLeft = r13     // Catch:{ Exception -> 0x0802 }
                goto L_0x0809
            L_0x0802:
                java.lang.String r13 = "CommunicationService"
                java.lang.String r0 = "SeamlessClientHandler.onConnect(): Restart is requested, but transfer instance failed to reconstruct"
                android.util.Log.d(r13, r0)
            L_0x0809:
                return
            L_0x080a:
                r0 = move-exception
                monitor-exit(r13)     // Catch:{ all -> 0x080a }
                throw r0
            L_0x080d:
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r1 = r0.activeConnection     // Catch:{ IOException -> 0x0827 }
                if (r1 == 0) goto L_0x082b
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r1 = r0.activeConnection     // Catch:{ IOException -> 0x0827 }
                java.net.Socket r1 = r1.getSocket()     // Catch:{ IOException -> 0x0827 }
                boolean r1 = r1.isClosed()     // Catch:{ IOException -> 0x0827 }
                if (r1 != 0) goto L_0x082b
                com.genonbeta.CoolSocket.CoolSocket$ActiveConnection r1 = r0.activeConnection     // Catch:{ IOException -> 0x0827 }
                java.net.Socket r1 = r1.getSocket()     // Catch:{ IOException -> 0x0827 }
                r1.close()     // Catch:{ IOException -> 0x0827 }
                goto L_0x082b
            L_0x0827:
                r1 = move-exception
                r1.printStackTrace()
            L_0x082b:
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this
                java.util.List r2 = r1.getActiveProcessList()
                monitor-enter(r2)
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ all -> 0x0886 }
                java.util.List r1 = r1.getActiveProcessList()     // Catch:{ all -> 0x0886 }
                r1.remove(r0)     // Catch:{ all -> 0x0886 }
                monitor-exit(r2)     // Catch:{ all -> 0x0886 }
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup r2 = r2.getGroup()
                long r4 = r2.groupId
                com.genonbeta.TrebleShot.object.TransferInstance r2 = r12.mTransfer
                com.genonbeta.TrebleShot.object.TransferGroup$Assignee r2 = r2.getAssignee()
                java.lang.String r2 = r2.deviceId
                r1.notifyTaskStatusChange(r4, r2, r3)
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this
                r1.notifyTaskRunningListChange()
                java.lang.String r1 = "CommunicationService"
                java.lang.String r2 = "We have exited"
                android.util.Log.d(r1, r2)
                if (r6 == 0) goto L_0x0885
                int r1 = r0.attemptsLeft
                if (r1 <= 0) goto L_0x0885
                com.genonbeta.CoolSocket.CoolTransfer$ParentBuilder<com.genonbeta.TrebleShot.service.CommunicationService$ProcessHolder> r1 = r0.builder
                com.genonbeta.CoolSocket.CoolTransfer$TransferProgress r1 = r1.getTransferProgress()
                boolean r1 = r1.isInterrupted()
                if (r1 != 0) goto L_0x0885
                com.genonbeta.TrebleShot.service.CommunicationService r1 = com.genonbeta.TrebleShot.service.CommunicationService.this     // Catch:{ Exception -> 0x087e }
                long r4 = r0.groupId     // Catch:{ Exception -> 0x087e }
                java.lang.String r2 = r0.deviceId     // Catch:{ Exception -> 0x087e }
                r1.startFileReceiving(r4, r2)     // Catch:{ Exception -> 0x087e }
                int r1 = r0.attemptsLeft     // Catch:{ Exception -> 0x087e }
                int r1 = r1 - r3
                r0.attemptsLeft = r1     // Catch:{ Exception -> 0x087e }
                goto L_0x0885
            L_0x087e:
                java.lang.String r0 = "CommunicationService"
                java.lang.String r1 = "SeamlessClientHandler.onConnect(): Restart is requested, but transfer instance failed to reconstruct"
                android.util.Log.d(r0, r1)
            L_0x0885:
                throw r13
            L_0x0886:
                r13 = move-exception
                monitor-exit(r2)     // Catch:{ all -> 0x0886 }
                throw r13
            L_0x0889:
                r13 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x0889 }
                goto L_0x088d
            L_0x088c:
                throw r13
            L_0x088d:
                goto L_0x088c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.service.CommunicationService.SeamlessClientHandler.onConnect(com.genonbeta.CoolSocket.CoolSocket$Client):void");
        }
    }

    public class Receive extends CoolTransfer.Receive<ProcessHolder> {
        public Receive() {
        }

        public CoolTransfer.Flag onError(CoolTransfer.TransferHandler<ProcessHolder> transferHandler, Exception exc) {
            if (exc != null) {
                exc.printStackTrace();
            }
            transferHandler.getExtra().transferObject.flag = TransferObject.Flag.INTERRUPTED;
            CommunicationService.this.getNotificationHelper().notifyReceiveError(transferHandler.getExtra().transferObject);
            return CoolTransfer.Flag.CANCEL_ALL;
        }

        public void onDestroy(CoolTransfer.TransferHandler<ProcessHolder> transferHandler) {
            if (transferHandler.getTransferProgress().isInterrupted() && TransferObject.Flag.IN_PROGRESS.equals(transferHandler.getExtra().transferObject.flag)) {
                transferHandler.getExtra().transferObject.flag = TransferObject.Flag.INTERRUPTED;
            }
        }

        public void onNotify(CoolTransfer.TransferHandler<ProcessHolder> transferHandler, int i) {
            transferHandler.getExtra().recoverInterruptions = false;
            transferHandler.getExtra().notification.setContentText(CommunicationService.this.getString(R.string.text_remainingTime, new Object[]{TimeUtils.getDuration(transferHandler.getTransferProgress().getTimeRemaining())}));
            transferHandler.getExtra().notification.updateProgress(100, i, false);
            transferHandler.getExtra().transferObject.flag = TransferObject.Flag.IN_PROGRESS;
            transferHandler.getExtra().transferObject.flag.setBytesValue(transferHandler.getTransferProgress().getCurrentTransferredByte());
            CommunicationService.this.getDatabase().update((DatabaseObject) transferHandler.getExtra().transferObject);
            transferHandler.getExtra().attemptsLeft = 2;
        }

        public void onTaskEnd(CoolTransfer.TransferHandler<ProcessHolder> transferHandler) {
            try {
                transferHandler.getExtra().currentFile.sync();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (transferHandler.getFileSize() == transferHandler.getExtra().currentFile.length()) {
                transferHandler.getExtra().transferObject.flag = TransferObject.Flag.DONE;
                DocumentFile documentFile = transferHandler.getExtra().currentFile;
                if (documentFile.getParentFile() != null) {
                    try {
                        transferHandler.getExtra().currentFile = FileUtils.saveReceivedFile(documentFile.getParentFile(), documentFile, transferHandler.getExtra().transferObject);
                        transferHandler.getExtra().transferObject.file = transferHandler.getExtra().currentFile.getName();
                        Log.d(CommunicationService.TAG, "Receive.onTransferCompleted(): Saved as: " + transferHandler.getExtra().currentFile.getName());
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
            } else {
                transferHandler.getExtra().transferObject.flag = TransferObject.Flag.INTERRUPTED;
                transferHandler.setFlag(CoolTransfer.Flag.CANCEL_CURRENT);
            }
        }

        public CoolTransfer.Flag onTaskPrepareSocket(CoolTransfer.TransferHandler<ProcessHolder> transferHandler) {
            return CoolTransfer.Flag.CONTINUE;
        }

        public CoolTransfer.Flag onTaskPrepareSocket(CoolTransfer.TransferHandler<ProcessHolder> transferHandler, ServerSocket serverSocket) {
            return CoolTransfer.Flag.CONTINUE;
        }

        public CoolTransfer.Flag onPrepare(CoolTransfer.TransferHandler<ProcessHolder> transferHandler) {
            if (transferHandler.getTransferProgress().getTotalByte() == 0) {
                TransferGroup.Index index = new TransferGroup.Index();
                CommunicationService.this.getDatabase().calculateTransactionSize(transferHandler.getExtra().transferObject.groupId, index);
                transferHandler.getTransferProgress().setTotalByte(index.incoming - index.incomingCompleted);
            }
            return CoolTransfer.Flag.CONTINUE;
        }

        public CoolTransfer.Flag onTaskOrientateStreams(CoolTransfer.TransferHandler<ProcessHolder> transferHandler, InputStream inputStream, OutputStream outputStream) {
            if (transferHandler.getExtra().transferObject.skippedBytes > 0) {
                try {
                    transferHandler.skipBytes(transferHandler.getExtra().transferObject.skippedBytes);
                } catch (IOException e) {
                    e.printStackTrace();
                    return CoolTransfer.Flag.CONTINUE;
                }
            }
            return CoolTransfer.Flag.CONTINUE;
        }

        public void onProcessListChanged(ArrayList<CoolTransfer.TransferHandler<ProcessHolder>> arrayList, CoolTransfer.TransferHandler<ProcessHolder> transferHandler, boolean z) {
            super.onProcessListChanged(arrayList, transferHandler, z);
            if (!z) {
                DocumentFile documentFile = transferHandler.getExtra().currentFile;
                if ((documentFile instanceof LocalDocumentFile) && CommunicationService.this.mMediaScanner.isConnected()) {
                    CommunicationService.this.mMediaScanner.scanFile(((LocalDocumentFile) documentFile).getFile().getAbsolutePath(), transferHandler.getExtra().transferObject.fileMimeType);
                }
                if (documentFile.getParentFile() != null) {
                    CommunicationService.this.sendBroadcast(new Intent(FileListFragment.ACTION_FILE_LIST_CHANGED).putExtra(FileListFragment.EXTRA_FILE_PARENT, documentFile.getParentFile().getUri()).putExtra(FileListFragment.EXTRA_FILE_NAME, documentFile.getName()));
                }
            }
        }
    }

    public class Send extends CoolTransfer.Send<ProcessHolder> {
        public Send() {
        }

        public CoolTransfer.Flag onError(CoolTransfer.TransferHandler<ProcessHolder> transferHandler, Exception exc) {
            if (exc != null) {
                exc.printStackTrace();
            }
            transferHandler.getExtra().transferObject.flag = TransferObject.Flag.INTERRUPTED;
            return CoolTransfer.Flag.CANCEL_ALL;
        }

        public void onNotify(CoolTransfer.TransferHandler<ProcessHolder> transferHandler, int i) {
            transferHandler.getExtra().notification.setContentText(CommunicationService.this.getString(R.string.text_remainingTime, new Object[]{TimeUtils.getDuration(transferHandler.getTransferProgress().getTimeRemaining())}));
            transferHandler.getExtra().notification.updateProgress(100, i, false);
            transferHandler.getExtra().transferObject.flag = TransferObject.Flag.IN_PROGRESS;
            transferHandler.getExtra().transferObject.flag.setBytesValue(transferHandler.getTransferProgress().getCurrentTransferredByte());
            CommunicationService.this.getDatabase().update((DatabaseObject) transferHandler.getExtra().transferObject);
        }

        public void onTaskEnd(CoolTransfer.TransferHandler<ProcessHolder> transferHandler) {
            transferHandler.getExtra().transferObject.flag = transferHandler.getTransferProgress().getCurrentTransferredByte() == transferHandler.getFileSize() ? TransferObject.Flag.DONE : TransferObject.Flag.INTERRUPTED;
        }

        public void onDestroy(CoolTransfer.TransferHandler<ProcessHolder> transferHandler) {
            if (transferHandler.getTransferProgress().isInterrupted() && TransferObject.Flag.IN_PROGRESS.equals(transferHandler.getExtra().transferObject.flag)) {
                transferHandler.getExtra().transferObject.flag = TransferObject.Flag.INTERRUPTED;
            }
        }

        public CoolTransfer.Flag onTaskPrepareSocket(CoolTransfer.TransferHandler<ProcessHolder> transferHandler) {
            return CoolTransfer.Flag.CONTINUE;
        }

        public CoolTransfer.Flag onPrepare(CoolTransfer.TransferHandler<ProcessHolder> transferHandler) {
            if (transferHandler.getTransferProgress().getTotalByte() == 0) {
                TransferGroup.Index index = new TransferGroup.Index();
                CommunicationService.this.getDatabase().calculateTransactionSize(transferHandler.getExtra().transferObject.groupId, index);
                transferHandler.getTransferProgress().setTotalByte(index.outgoing - index.outgoingCompleted);
            }
            return CoolTransfer.Flag.CONTINUE;
        }

        public CoolTransfer.Flag onTaskOrientateStreams(CoolTransfer.TransferHandler<ProcessHolder> transferHandler, InputStream inputStream, OutputStream outputStream) {
            super.onTaskOrientateStreams(transferHandler, inputStream, outputStream);
            if (transferHandler.getExtra().transferObject.skippedBytes > 0) {
                try {
                    transferHandler.skipBytes(transferHandler.getExtra().transferObject.skippedBytes);
                } catch (IOException e) {
                    e.printStackTrace();
                    return CoolTransfer.Flag.CONTINUE;
                }
            }
            return CoolTransfer.Flag.CONTINUE;
        }
    }

    public class ProcessHolder {
        public CoolSocket.ActiveConnection activeConnection;
        public int attemptsLeft = 2;
        public CoolTransfer.ParentBuilder<ProcessHolder> builder;
        public DocumentFile currentFile;
        public String deviceId;
        public long groupId;
        public DynamicNotification notification;
        public boolean recoverInterruptions = false;
        public TransferObject transferObject;
        public TransferObject.Type type;

        public ProcessHolder() {
        }
    }
}
