.class Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AddDevicesToTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;
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

    .line 59
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string p1, "tableName"

    .line 64
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 65
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "transferGroup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 66
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->checkGroupIntegrity()Z

    move-result p1

    if-nez p1, :cond_2d

    .line 67
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->finish()V

    :cond_2d
    return-void
.end method
