.class public Lcom/genonbeta/TrebleShot/service/CommunicationService;
.super Lcom/genonbeta/TrebleShot/app/Service;
.source "CommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;,
        Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;,
        Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;,
        Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;,
        Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;,
        Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL_INDEXING:Ljava/lang/String; = "com.genonbeta.TrebleShot.action.CANCEL_INDEXING"

.field public static final ACTION_CANCEL_JOB:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.CANCEL_JOB"

.field public static final ACTION_CLIPBOARD:Ljava/lang/String; = "com.genonbeta.TrebleShot.action.CLIPBOARD"

.field public static final ACTION_DEVICE_ACQUAINTANCE:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.DEVICE_ACQUAINTANCE"

.field public static final ACTION_END_SESSION:Ljava/lang/String; = "com.genonbeta.TrebleShot.action.END_SESSION"

.field public static final ACTION_FILE_TRANSFER:Ljava/lang/String; = "com.genonbeta.TrebleShot.action.FILE_TRANSFER"

.field public static final ACTION_HOTSPOT_STATUS:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.HOTSPOT_STATUS"

.field public static final ACTION_INCOMING_TRANSFER_READY:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.INCOMING_TRANSFER_READY"

.field public static final ACTION_IP:Ljava/lang/String; = "com.genonbeta.TrebleShot.action.IP"

.field public static final ACTION_REQUEST_HOTSPOT_STATUS:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.REQUEST_HOTSPOT_STATUS"

.field public static final ACTION_REQUEST_TASK_RUNNING_LIST_CHANGE:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.REQUEST_TASK_RUNNING_LIST_CHANGE"

.field public static final ACTION_REQUEST_TASK_STATUS_CHANGE:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.REQUEST_TASK_STATUS_CHANGE"

.field public static final ACTION_REQUEST_TRUSTZONE_STATUS:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.REQUEST_TRUSTZONE_STATUS"

.field public static final ACTION_REQUEST_WEBSHARE_STATUS:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.REQUEST_WEBSHARE_STATUS"

.field public static final ACTION_REVOKE_ACCESS_PIN:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.REVOKE_ACCESS_PIN"

.field public static final ACTION_SEAMLESS_RECEIVE:Ljava/lang/String; = "com.genonbeta.intent.action.SEAMLESS_START"

.field public static final ACTION_SERVICE_CONNECTION_TRANSFER_QUEUE:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.SERVICE_CONNECTION_TRANSFER_QUEUE"

.field public static final ACTION_SERVICE_STATUS:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.SERVICE_STATUS"

.field public static final ACTION_TASK_RUNNING_LIST_CHANGE:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.TASK_RUNNNIG_LIST_CHANGE"

.field public static final ACTION_TASK_STATUS_CHANGE:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.TASK_STATUS_CHANGE"

.field public static final ACTION_TOGGLE_HOTSPOT:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.TOGGLE_HOTSPOT"

.field public static final ACTION_TOGGLE_SEAMLESS_MODE:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.TOGGLE_SEAMLESS_MODE"

.field public static final ACTION_TOGGLE_WEBSHARE:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.TOGGLE_WEBSHARE"

.field public static final ACTION_TRUSTZONE_STATUS:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.TRUSTZONE_STATUS"

.field public static final ACTION_WEBSHARE_STATUS:Ljava/lang/String; = "com.genonbeta.TrebleShot.transaction.action.WEBSHARE_STATUS"

.field public static final EXTRA_CLIPBOARD_ACCEPTED:Ljava/lang/String; = "extraClipboardAccepted"

.field public static final EXTRA_CLIPBOARD_ID:Ljava/lang/String; = "extraTextId"

.field public static final EXTRA_CONNECTION_ADAPTER_NAME:Ljava/lang/String; = "extraConnectionAdapterName"

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "extraDeviceId"

.field public static final EXTRA_DEVICE_LIST_RUNNING:Ljava/lang/String; = "extraDeviceListRunning"

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "extraGroupId"

.field public static final EXTRA_HOTSPOT_DISABLING:Ljava/lang/String; = "extraHotspotDisabling"

.field public static final EXTRA_HOTSPOT_ENABLED:Ljava/lang/String; = "extraHotspotEnabled"

.field public static final EXTRA_HOTSPOT_KEY_MGMT:Ljava/lang/String; = "extraHotspotKeyManagement"

.field public static final EXTRA_HOTSPOT_NAME:Ljava/lang/String; = "extraHotspotName"

.field public static final EXTRA_HOTSPOT_PASSWORD:Ljava/lang/String; = "extraHotspotPassword"

.field public static final EXTRA_IS_ACCEPTED:Ljava/lang/String; = "extraAccepted"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "extraRequestId"

.field public static final EXTRA_STATUS_STARTED:Ljava/lang/String; = "extraStatusStarted"

.field public static final EXTRA_TASK_CHANGE_TYPE:Ljava/lang/String; = "extraTaskChangeType"

.field public static final EXTRA_TASK_LIST_RUNNING:Ljava/lang/String; = "extraTaskListRunning"

.field public static final EXTRA_TOGGLE_WEBSHARE_START_ALWAYS:Ljava/lang/String; = "extraToggleWebShareStartAlways"

.field public static final TAG:Ljava/lang/String; = "CommunicationService"

.field public static final TASK_STATUS_ONGOING:I = 0x0

.field public static final TASK_STATUS_STOPPED:I = 0x1


# instance fields
.field private mActiveProcessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mCommunicationServer:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

.field private mDestroyApproved:Z

.field private mHotspotUtils:Lcom/genonbeta/TrebleShot/util/HotspotUtils;

.field private mMediaScanner:Landroid/media/MediaScannerConnection;

.field private mNotificationHelper:Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

.field private mNsdDiscovery:Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

.field private mOngoingIndexList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/genonbeta/android/framework/util/Interrupter;",
            ">;"
        }
    .end annotation
.end field

.field private mPinAccess:Z

.field private mReceive:Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;

.field private mSeamlessMode:Z

.field private mSeamlessServer:Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;

.field private mSelfExecutor:Ljava/util/concurrent/ExecutorService;

.field private mSend:Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;

.field private mWebShareServer:Lcom/genonbeta/TrebleShot/service/WebShareServer;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Service;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mActiveProcessList:Ljava/util/List;

    .line 132
    new-instance v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mCommunicationServer:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWebShareServer:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    .line 134
    new-instance v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessServer:Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;

    .line 135
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mOngoingIndexList:Ljava/util/Map;

    .line 136
    new-instance v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mReceive:Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;

    .line 137
    new-instance v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSend:Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;

    const/16 v0, 0xa

    .line 138
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSelfExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mDestroyApproved:Z

    .line 146
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessMode:Z

    .line 147
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mPinAccess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mDestroyApproved:Z

    return p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mPinAccess:Z

    return p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSend:Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;

    return-object p0
.end method

.method static synthetic access$400(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mNotificationHelper:Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mReceive:Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;

    return-object p0
.end method

.method static synthetic access$600(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Landroid/media/MediaScannerConnection;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addProcess(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;)Z
    .registers 3

    monitor-enter p0

    .line 483
    :try_start_1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public findProcessById(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;
    .registers 10

    .line 501
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 502
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    .line 503
    iget-wide v3, v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_d

    iget-object v3, v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    .line 504
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 505
    monitor-exit v0

    return-object v2

    .line 506
    :cond_29
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method

.method public declared-synchronized getActiveProcessList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 513
    :try_start_1
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mActiveProcessList:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mHotspotUtils:Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    return-object v0
.end method

.method public getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;
    .registers 2

    .line 523
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mNotificationHelper:Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    return-object v0
.end method

.method public declared-synchronized getOngoingIndexList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/genonbeta/android/framework/util/Interrupter;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 528
    :try_start_1
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mOngoingIndexList:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSelfExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 533
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSelfExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getWifiLock()Landroid/net/wifi/WifiManager$WifiLock;
    .registers 2

    .line 538
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method public hasOngoingTasks()Z
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mCommunicationServer:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    .line 494
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getOngoingIndexList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    .line 495
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mHotspotUtils:Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    .line 496
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    return v0
.end method

.method public isProcessRunning(ILjava/lang/String;)Z
    .registers 5

    int-to-long v0, p1

    .line 543
    invoke-virtual {p0, v0, v1, p2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->findProcessById(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public notifyTaskRunningListChange()V
    .registers 11

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 561
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 562
    :try_start_f
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    .line 563
    iget-wide v5, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_17

    iget-object v5, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    if-eqz v5, :cond_17

    .line 565
    iget-wide v5, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v4, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 569
    :cond_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_72

    .line 571
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 573
    :goto_46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5b

    .line 574
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 576
    :cond_5b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.genonbeta.TrebleShot.transaction.action.TASK_RUNNNIG_LIST_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extraTaskListRunning"

    .line 577
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extraDeviceListRunning"

    .line 578
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 576
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catchall_72
    move-exception v0

    .line 569
    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    goto :goto_76

    :goto_75
    throw v0

    :goto_76
    goto :goto_75
.end method

.method public notifyTaskStatusChange(JLjava/lang/String;I)V
    .registers 7

    .line 548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.TASK_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extraTaskChangeType"

    .line 549
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p4

    const-string v0, "extraGroupId"

    .line 550
    invoke-virtual {p4, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "extraDeviceId"

    .line 551
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 553
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 5

    .line 158
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Service;->onCreate()V

    .line 160
    new-instance v0, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;-><init>(Lcom/genonbeta/TrebleShot/util/NotificationUtils;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mNotificationHelper:Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    .line 161
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mNsdDiscovery:Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

    .line 162
    new-instance v0, Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    .line 163
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mHotspotUtils:Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    .line 164
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "CommunicationService"

    .line 166
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 168
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mReceive:Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->setNotifyDelay(I)V

    .line 169
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSend:Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;

    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;->setNotifyDelay(I)V

    .line 171
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 172
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mNsdDiscovery:Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->registerService()V

    .line 174
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getWifiLock()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 175
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getWifiLock()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 177
    :cond_66
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "trust_always"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->updateServiceState(Z)V

    .line 179
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->checkRunningConditions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mCommunicationServer:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    .line 180
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->start()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessServer:Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;

    .line 181
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->start()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 182
    :cond_8a
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->stopSelf()V

    .line 184
    :cond_8d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    instance-of v0, v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    if-eqz v0, :cond_a9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_a9

    .line 185
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    new-instance v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$1;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService$1;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V

    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->setSecondaryCallback(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V

    .line 202
    :cond_a9
    :try_start_a9
    new-instance v0, Lcom/genonbeta/TrebleShot/service/WebShareServer;

    const v2, 0xe56c

    invoke-direct {v0, p0, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWebShareServer:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    .line 203
    new-instance v2, Lcom/genonbeta/TrebleShot/service/WebShareServer$BoundRunner;

    const/16 v3, 0x14

    .line 204
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/genonbeta/TrebleShot/service/WebShareServer$BoundRunner;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 203
    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V
    :try_end_c1
    .catchall {:try_start_a9 .. :try_end_c1} :catchall_c2

    goto :goto_c7

    :catchall_c2
    const-string v0, "Failed to start Web Share Server"

    .line 206
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c7
    return-void
.end method

.method public onDestroy()V
    .registers 9

    .line 433
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Service;->onDestroy()V

    .line 435
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mCommunicationServer:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->stop()Z

    .line 436
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessServer:Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->stop()Z

    .line 437
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 438
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mNsdDiscovery:Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->unregisterService()V

    .line 441
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "isSharedOnWeb"

    const/4 v2, 0x0

    .line 443
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    new-instance v3, Lcom/genonbeta/android/database/SQLQuery$Select;

    const-string v4, "transferGroup"

    new-array v5, v2, [Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "%s = ?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "isSharedOnWeb"

    aput-object v7, v6, v2

    .line 445
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/String;

    .line 446
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 445
    invoke-virtual {v3, v4, v6}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v3

    .line 444
    invoke-virtual {v1, v3, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/SQLQuery$Select;Landroid/content/ContentValues;)I

    .line 449
    invoke-virtual {p0, v2, v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->setWebShareEnabled(ZZ)V

    .line 450
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendTrustZoneStatus()V

    .line 452
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->unloadPreviousConfig()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 453
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->disable()Z

    const-string v0, "CommunicationService"

    const-string v1, "onDestroy(): Stopping hotspot (previously started)"

    .line 454
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_6d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getWifiLock()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    if-eqz v0, :cond_8b

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getWifiLock()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 458
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getWifiLock()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const-string v0, "CommunicationService"

    const-string v1, "onDestroy(): Releasing Wi-Fi lock"

    .line 459
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_8b
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->revokePinAccess()V

    .line 463
    invoke-virtual {p0, v5}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->stopForeground(Z)V

    .line 465
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getOngoingIndexList()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 466
    :try_start_96
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getOngoingIndexList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/android/framework/util/Interrupter;

    .line 467
    invoke-virtual {v3, v2}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt(Z)Z

    const-string v4, "CommunicationService"

    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDestroy(): Ongoing indexing stopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    .line 470
    :cond_cc
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_96 .. :try_end_cd} :catchall_115

    .line 472
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 473
    :try_start_d2
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_da
    :goto_da
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_110

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    .line 474
    iget-object v3, v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    if-eqz v3, :cond_da

    .line 475
    iget-object v3, v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v3}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->interrupt()V

    const-string v3, "CommunicationService"

    .line 476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDestroy(): Killing sending process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    .line 478
    :cond_110
    monitor-exit v1

    return-void

    :catchall_112
    move-exception v0

    monitor-exit v1
    :try_end_114
    .catchall {:try_start_d2 .. :try_end_114} :catchall_112

    throw v0

    :catchall_115
    move-exception v1

    .line 470
    :try_start_116
    monitor-exit v0
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    goto :goto_119

    :goto_118
    throw v1

    :goto_119
    goto :goto_118
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 213
    invoke-super/range {p0 .. p3}, Lcom/genonbeta/TrebleShot/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    if-eqz v0, :cond_23

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart() : action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommunicationService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v8, 0x1

    if-eqz v0, :cond_38d

    .line 218
    invoke-static/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->checkRunningConditions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_38d

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.action.FILE_TRANSFER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "extraAccepted"

    const/4 v3, -0x1

    const-string v4, "notificationId"

    const-wide/16 v5, -0x1

    const-string v9, "extraGroupId"

    const-string v10, "extraDeviceId"

    const/4 v11, 0x0

    if-eqz v1, :cond_a7

    .line 220
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 221
    invoke-virtual {v0, v9, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 222
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 223
    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->cancel(I)Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    .line 228
    :try_start_5f
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v13

    const/16 v17, 0x1

    move-object v12, v0

    move-wide v14, v5

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/genonbeta/TrebleShot/object/TransferInstance;-><init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;JLjava/lang/String;Z)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v11

    new-instance v12, Lcom/genonbeta/TrebleShot/service/CommunicationService$2;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v0

    move-wide v13, v5

    move-wide v4, v13

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/genonbeta/TrebleShot/service/CommunicationService$2;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;Lcom/genonbeta/TrebleShot/object/TransferInstance;JZ)V

    invoke-static {v11, v12}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge;->connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    if-eqz v9, :cond_88

    .line 253
    invoke-virtual {v7, v13, v14, v10}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->startFileReceiving(JLjava/lang/String;)V

    goto/16 :goto_38d

    .line 255
    :cond_88
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_93} :catch_95

    goto/16 :goto_38d

    :catch_95
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v9, :cond_38d

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v0

    const v1, 0x7f110107

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->showToast(I)V

    goto/16 :goto_38d

    .line 262
    :cond_a7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v12, "com.genonbeta.TrebleShot.action.IP"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 263
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 265
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->cancel(I)Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    .line 269
    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 272
    :try_start_cf
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    if-nez v2, :cond_d9

    const/4 v11, 0x1

    .line 273
    :cond_d9
    iput-boolean v11, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_e2} :catch_e4

    goto/16 :goto_38d

    :catch_e4
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    return v0

    .line 279
    :cond_ea
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.action.CANCEL_INDEXING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 280
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 281
    invoke-virtual {v0, v9, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->cancel(I)Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getOngoingIndexList()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/util/Interrupter;

    if-eqz v0, :cond_38d

    .line 288
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt()Z

    goto/16 :goto_38d

    .line 289
    :cond_11e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.action.CLIPBOARD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    const-string v1, "extraClipboardAccepted"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17e

    .line 290
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "extraTextId"

    .line 291
    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 292
    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 294
    new-instance v1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    invoke-direct {v1, v3, v4}, Lcom/genonbeta/TrebleShot/object/TextStreamObject;-><init>(J)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->cancel(I)Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    .line 299
    :try_start_150
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    if-eqz v0, :cond_38d

    const-string v0, "clipboard"

    .line 302
    invoke-virtual {v7, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v2, "receivedText"

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v0, 0x7f11010e

    .line 303
    invoke-static {v7, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_176} :catch_178

    goto/16 :goto_38d

    :catch_178
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_38d

    .line 308
    :cond_17e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.action.END_SESSION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18f

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->stopSelf()V

    goto/16 :goto_38d

    .line 310
    :cond_18f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.intent.action.SEAMLESS_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 311
    invoke-virtual {v0, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 312
    invoke-virtual {v0, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 313
    invoke-virtual {v0, v9, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 314
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    :try_start_1af
    invoke-virtual {v7, v1, v2, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->findProcessById(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    move-result-object v3

    if-nez v3, :cond_1ba

    .line 320
    invoke-virtual {v7, v1, v2, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->startFileReceiving(JLjava/lang/String;)V

    goto/16 :goto_38d

    :cond_1ba
    const v0, 0x7f1100e2

    new-array v1, v8, [Ljava/lang/Object;

    .line 322
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    aput-object v2, v1, v11

    invoke-virtual {v7, v0, v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1d0} :catch_1d2

    goto/16 :goto_38d

    :catch_1d2
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_38d

    .line 326
    :cond_1d8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.CANCEL_JOB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_272

    .line 327
    invoke-virtual {v0, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_272

    .line 328
    invoke-virtual {v0, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_272

    .line 329
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 330
    invoke-virtual {v0, v9, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 331
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {v7, v2, v3, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->findProcessById(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    move-result-object v4

    if-nez v4, :cond_212

    .line 336
    invoke-virtual {v7, v2, v3, v0, v8}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->cancel(I)Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    goto/16 :goto_38d

    .line 339
    :cond_212
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyStuckThread(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    iput-object v0, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 341
    iget-object v0, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_233

    .line 342
    iget-object v0, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->interrupt()V

    goto/16 :goto_38d

    .line 345
    :cond_233
    :try_start_233
    iget-object v0, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    instance-of v0, v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    if-eqz v0, :cond_24a

    .line 346
    iget-object v0, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    check-cast v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    .line 348
    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz v1, :cond_24a

    .line 349
    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_24a} :catch_24a

    .line 356
    :catch_24a
    :cond_24a
    :try_start_24a
    iget-object v0, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    if-eqz v0, :cond_25f

    iget-object v0, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    .line 357
    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_25f

    .line 358
    iget-object v0, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_24a .. :try_end_25f} :catch_25f

    .line 364
    :catch_25f
    :cond_25f
    :try_start_25f
    iget-object v0, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_38d

    .line 365
    iget-object v0, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_270
    .catch Ljava/io/IOException; {:try_start_25f .. :try_end_270} :catch_38d

    goto/16 :goto_38d

    .line 371
    :cond_272
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.TOGGLE_SEAMLESS_MODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_286

    .line 372
    iget-boolean v0, v7, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessMode:Z

    xor-int/2addr v0, v8

    invoke-virtual {v7, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->updateServiceState(Z)V

    goto/16 :goto_38d

    .line 373
    :cond_286
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.TOGGLE_HOTSPOT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_29e

    .line 374
    invoke-static/range {p0 .. p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2a3

    .line 375
    :cond_29e
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->setupHotspot()V

    goto/16 :goto_38d

    .line 376
    :cond_2a3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.REQUEST_HOTSPOT_STATUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendHotspotStatus(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_38d

    .line 378
    :cond_2bc
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.SERVICE_STATUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_300

    const-string v1, "extraStatusStarted"

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_300

    .line 380
    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2e7

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->hasOngoingTasks()Z

    move-result v0

    if-nez v0, :cond_2e7

    iget-object v0, v7, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWebShareServer:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    if-eqz v0, :cond_2e6

    .line 383
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2e7

    :cond_2e6
    const/4 v11, 0x1

    :cond_2e7
    iput-boolean v11, v7, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mDestroyApproved:Z

    if-eqz v11, :cond_38d

    .line 386
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$3;

    invoke-direct {v1, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService$3;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_38d

    .line 400
    :cond_300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.REQUEST_TASK_STATUS_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32b

    .line 401
    invoke-virtual {v0, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32b

    .line 402
    invoke-virtual {v0, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32b

    .line 403
    invoke-virtual {v0, v9, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 404
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {v7, v1, v2, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->findProcessById(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    move-result-object v3

    if-nez v3, :cond_327

    const/4 v11, 0x1

    :cond_327
    invoke-virtual {v7, v1, v2, v0, v11}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    goto :goto_38d

    .line 409
    :cond_32b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.REQUEST_TASK_RUNNING_LIST_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33b

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    goto :goto_38d

    .line 411
    :cond_33b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.REVOKE_ACCESS_PIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34e

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->revokePinAccess()V

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->refreshServiceState()V

    goto :goto_38d

    .line 414
    :cond_34e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.REQUEST_TRUSTZONE_STATUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35e

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendTrustZoneStatus()V

    goto :goto_38d

    .line 416
    :cond_35e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.REQUEST_WEBSHARE_STATUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36e

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendWebShareStatus()V

    goto :goto_38d

    .line 418
    :cond_36e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.TOGGLE_WEBSHARE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38d

    const-string v1, "extraToggleWebShareStartAlways"

    .line 419
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38a

    .line 420
    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v7, v0, v8}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->setWebShareEnabled(ZZ)V

    goto :goto_38d

    .line 423
    :cond_38a
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->toggleWebShare()V

    :catch_38d
    :cond_38d
    :goto_38d
    return v8
.end method

.method public refreshServiceState()V
    .registers 2

    .line 583
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessMode:Z

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->updateServiceState(Z)V

    return-void
.end method

.method public declared-synchronized removeProcess(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;)Z
    .registers 3

    monitor-enter p0

    .line 488
    :try_start_1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public revokePinAccess()V
    .registers 4

    .line 588
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pin"

    const/4 v2, -0x1

    .line 589
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 590
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public sendHotspotStatus(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6

    .line 602
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.HOTSPOT_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const-string v3, "extraHotspotEnabled"

    .line 603
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extraHotspotDisabling"

    .line 604
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_34

    .line 607
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "extraHotspotName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v3, "extraHotspotPassword"

    .line 608
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 609
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->getAllowedKeyManagement(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    const-string v2, "extraHotspotKeyManagement"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    :cond_34
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendHotspotStatusDisabling()V
    .registers 4

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.HOTSPOT_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extraHotspotEnabled"

    const/4 v2, 0x0

    .line 596
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraHotspotDisabling"

    const/4 v2, 0x1

    .line 597
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 595
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendTrustZoneStatus()V
    .registers 4

    .line 644
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.TRUSTZONE_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessMode:Z

    const-string v2, "extraStatusStarted"

    .line 645
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 644
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendWebShareStatus()V
    .registers 4

    .line 617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.WEBSHARE_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWebShareServer:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    .line 618
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->isAlive()Z

    move-result v1

    const-string v2, "extraStatusStarted"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 617
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setWebShareEnabled(ZZ)V
    .registers 5

    .line 675
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWebShareServer:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->isAlive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez p1, :cond_12

    if-nez v0, :cond_12

    .line 678
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWebShareServer:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->stop()V

    goto :goto_23

    :cond_12
    if-eqz p1, :cond_23

    if-eqz v0, :cond_23

    .line 681
    :try_start_16
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWebShareServer:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    const/16 v0, 0x1388

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->start(IZ)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    .line 683
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_23
    :goto_23
    if-eqz p2, :cond_2a

    .line 687
    iget-boolean p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessMode:Z

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->updateServiceState(Z)V

    .line 688
    :cond_2a
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendWebShareStatus()V

    return-void
.end method

.method public setupHotspot()V
    .registers 5

    .line 623
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 624
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "hotspot_trust"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x1a

    if-eqz v1, :cond_29

    if-eqz v0, :cond_1f

    .line 627
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_29

    .line 628
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->updateServiceState(Z)V

    const-string v1, "CommunicationService"

    const-string v3, "setupHotspot(): Start with TrustZone"

    .line 629
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    if-eqz v0, :cond_38

    .line 633
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getHotspotName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->enableConfigured(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_46

    .line 635
    :cond_38
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->disable()Z

    .line 637
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_46

    .line 638
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendHotspotStatusDisabling()V

    :cond_46
    :goto_46
    return-void
.end method

.method public startFileReceiving(JLjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/TransferGroupNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/DeviceNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/ConnectionNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/AssigneeNotFoundException;
        }
    .end annotation

    .line 651
    new-instance v6, Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, v6

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/object/TransferInstance;-><init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;JLjava/lang/String;Z)V

    invoke-virtual {p0, v6}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->startFileReceiving(Lcom/genonbeta/TrebleShot/object/TransferInstance;)V

    return-void
.end method

.method public startFileReceiving(Lcom/genonbeta/TrebleShot/object/TransferInstance;)V
    .registers 3

    .line 656
    new-instance v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;Lcom/genonbeta/TrebleShot/object/TransferInstance;)V

    invoke-static {v0}, Lcom/genonbeta/CoolSocket/CoolSocket;->connect(Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;)V

    return-void
.end method

.method public toggleWebShare()V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWebShareServer:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->setWebShareEnabled(ZZ)V

    return-void
.end method

.method public updateServiceState(Z)V
    .registers 7

    .line 661
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 662
    :goto_9
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessMode:Z

    .line 663
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "pin"

    const/4 v4, -0x1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v4, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mPinAccess:Z

    if-eqz v0, :cond_22

    .line 666
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendTrustZoneStatus()V

    .line 669
    :cond_22
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object p1

    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mSeamlessMode:Z

    iget-boolean v3, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mPinAccess:Z

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService;->mWebShareServer:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    if-eqz v4, :cond_35

    .line 670
    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v1, 0x1

    .line 669
    :cond_35
    invoke-virtual {p1, v0, v3, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getCommunicationServiceNotification(ZZZ)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    .line 670
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->build()Landroid/app/Notification;

    move-result-object p1

    .line 668
    invoke-virtual {p0, v2, p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
