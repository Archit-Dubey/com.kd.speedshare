.class public Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "AddDeviceRunningTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask<",
        "Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

.field private mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field private mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 46
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    .line 47
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/TransferGroup;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    return-object p0
.end method


# virtual methods
.method public onRun()V
    .registers 5

    .line 53
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$1;-><init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)V

    .line 65
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    new-instance v3, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;-><init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    invoke-static {v2, v0, v3}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge;->connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;ZLcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    return-void
.end method
