.class Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$1;)V
    .registers 3

    .line 258
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 265
    :cond_18
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->updateState()V

    :cond_1d
    return-void
.end method
