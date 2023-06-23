.class Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkDeviceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$1;)V
    .registers 3

    .line 403
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 408
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->checkRefreshing()V

    .line 410
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "genonbeta.intent.action.SCAN_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_91

    const-string p1, "genonbeta.intent.extra.SCAN_STATUS"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 411
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "genonbeta.intent.status.OK"

    .line 413
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "genonbeta.intent.status.SCANNER_NOT_AVAILABLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_50

    :cond_2f
    const-string p2, "genonbeta.intent.status.NO_NETWORK_INTERFACE"

    .line 432
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_100

    .line 433
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x283

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->access$400(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->showConnectionOptions(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V

    goto/16 :goto_100

    .line 414
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isConnectionSelfNetwork()Z

    move-result v1

    if-nez v1, :cond_76

    .line 417
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    const p1, 0x7f110102

    goto :goto_6b

    :cond_68
    const p1, 0x7f110109

    :goto_6b
    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto/16 :goto_100

    .line 422
    :cond_76
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    const p2, 0x7f110103

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const p2, 0x7f11003d

    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;)V

    .line 423
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 431
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_100

    .line 434
    :cond_91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "genonbeta.intent.action.DEVICE_SCAN_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 435
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    const p2, 0x7f110101

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 436
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_100

    .line 437
    :cond_ac
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fb

    .line 438
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d3

    const-string p1, "tableName"

    .line 439
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "devices"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d3

    goto :goto_fb

    .line 442
    :cond_d3
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->notifyWirelessRequestHandled()Z

    move-result p1

    if-eqz p1, :cond_100

    .line 443
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_100

    const/4 p1, 0x3

    const/4 v0, -0x1

    const-string v1, "wifi_state"

    .line 444
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_100

    .line 445
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->requestRefresh()V

    goto :goto_100

    .line 441
    :cond_fb
    :goto_fb
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->refreshList()V

    :cond_100
    :goto_100
    return-void
.end method
