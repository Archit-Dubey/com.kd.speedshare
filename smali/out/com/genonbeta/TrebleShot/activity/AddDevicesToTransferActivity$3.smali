.class Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$3;
.super Ljava/lang/Object;
.source "AddDevicesToTransferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->takeOnProcessMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 299
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 300
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt()Z

    :cond_15
    return-void
.end method
