.class Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$1;
.super Ljava/lang/Object;
.source "AddDeviceRunningTask.java"

# interfaces
.implements Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$1;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(II)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$1;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 92
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$1;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->updateProgress(II)V

    :cond_17
    return-void
.end method

.method public onProgressState()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$1;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
