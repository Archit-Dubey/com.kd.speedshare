.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "DeviceInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->runReceiveTask(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

.field final synthetic val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 5

    .line 143
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->this$0:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 5

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    const v1, 0x7f110118

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->publishStatusText(Ljava/lang/String;)Z

    .line 150
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->this$0:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->getContext()Landroid/content/Context;

    .line 151
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v2

    new-instance v3, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;

    invoke-direct {v3, p0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;)V

    invoke-static {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/UpdateUtils;->receiveUpdate(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/android/framework/util/Interrupter;Lcom/genonbeta/TrebleShot/util/UpdateUtils$OnConnectionReadyListener;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;

    invoke-direct {v2, p0, v0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3a
    return-void
.end method
