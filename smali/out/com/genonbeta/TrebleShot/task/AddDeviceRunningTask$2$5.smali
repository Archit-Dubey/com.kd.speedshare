.class Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$5;
.super Ljava/lang/Object;
.source "AddDeviceRunningTask.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 235
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$5;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$5;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->resetStatusViews()V

    return-void
.end method
