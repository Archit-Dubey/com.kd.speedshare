.class Lcom/genonbeta/TrebleShot/activity/WebShareActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WebShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/activity/WebShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/WebShareActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/WebShareActivity;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/WebShareActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.TrebleShot.transaction.action.WEBSHARE_STATUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 56
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/WebShareActivity;

    const/4 v0, 0x0

    const-string v1, "extraStatusStarted"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->updateWebShareStatus(Z)V

    :cond_18
    return-void
.end method
