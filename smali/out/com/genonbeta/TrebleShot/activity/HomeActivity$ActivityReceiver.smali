.class Lcom/genonbeta/TrebleShot/activity/HomeActivity$ActivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$ActivityReceiver;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;Lcom/genonbeta/TrebleShot/activity/HomeActivity$1;)V
    .registers 3

    .line 327
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/activity/HomeActivity$ActivityReceiver;-><init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 332
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.TrebleShot.transaction.action.TRUSTZONE_STATUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$ActivityReceiver;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    .line 333
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->access$300(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 334
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$ActivityReceiver;->this$0:Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->access$300(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "extraStatusStarted"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_27

    const p2, 0x7f11008e

    goto :goto_2a

    :cond_27
    const p2, 0x7f11008f

    :goto_2a
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_2d
    return-void
.end method
