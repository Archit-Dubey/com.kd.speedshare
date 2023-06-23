.class Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$1;
.super Ljava/lang/Object;
.source "AddDeviceRunningTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 60
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 61
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$000(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object p2

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$100(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->doCommunicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    :cond_1f
    return-void
.end method
