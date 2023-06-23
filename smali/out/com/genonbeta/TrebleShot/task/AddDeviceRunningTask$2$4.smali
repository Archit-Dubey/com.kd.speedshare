.class Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$4;
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

    .line 219
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$4;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 223
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$4;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$4;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$4;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    const v4, 0x7f1100c8

    .line 225
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1100de

    .line 224
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 226
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$4;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f110069

    .line 227
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
