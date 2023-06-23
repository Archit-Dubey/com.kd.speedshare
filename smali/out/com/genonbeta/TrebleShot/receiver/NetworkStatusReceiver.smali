.class public Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatusReceiver.java"


# static fields
.field public static final WIFI_AP_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluateTheCondition(Landroid/net/NetworkInfo;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 7

    const-string v0, "allow_autoconnect"

    const/4 v1, 0x0

    .line 38
    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_19
    const-string v0, "scan_devices_auto"

    .line 41
    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2f

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 42
    new-instance p1, Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver$1;

    invoke-direct {p1, p0, p2}, Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver$1;-><init>(Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver;Landroid/content/Context;)V

    .line 57
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver$1;->start()V

    :cond_2f
    return-void
.end method

.method protected getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2

    .line 62
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 22
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 25
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-string v4, "wifi_state"

    .line 28
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    if-ne v2, v3, :cond_23

    .line 29
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->unloadPreviousConfig()Z

    :cond_23
    const-string v1, "networkInfo"

    .line 32
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 33
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    invoke-virtual {p0, p2, p1, v0}, Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver;->evaluateTheCondition(Landroid/net/NetworkInfo;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_34
    return-void
.end method
