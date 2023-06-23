.class Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$1;)V
    .registers 3

    .line 347
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;-><init>(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 353
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->access$400(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;)V

    goto :goto_5c

    .line 354
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.TrebleShot.transaction.action.HOTSPOT_STATUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    const-string p1, "extraHotspotEnabled"

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 356
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

    const-string v1, "extraHotspotName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraHotspotPassword"

    .line 357
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extraHotspotKeyManagement"

    .line 358
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 356
    invoke-static {p1, v1, v2, p2}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->access$500(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5c

    .line 359
    :cond_3f
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5c

    const-string p1, "extraHotspotDisabling"

    .line 360
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5c

    .line 361
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->access$600(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;)V

    :cond_5c
    :goto_5c
    return-void
.end method
