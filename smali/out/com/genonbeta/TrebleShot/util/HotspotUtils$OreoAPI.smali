.class public Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;
.super Lcom/genonbeta/TrebleShot/util/HotspotUtils;
.source "HotspotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/util/HotspotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OreoAPI"
.end annotation


# instance fields
.field private mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

.field private mHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/HotspotUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/HotspotUtils$1;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->mHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object p1
.end method

.method static synthetic access$400(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    return-object p0
.end method


# virtual methods
.method public disable()Z
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->mHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 93
    :cond_6
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->mHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    const/4 v0, 0x1

    return v0
.end method

.method public enable()Z
    .registers 5

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;-><init>(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;)V

    new-instance v2, Landroid/os/Handler;

    .line 134
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_17

    const/4 v0, 0x1

    return v0

    :catchall_17
    const/4 v0, 0x0

    return v0
.end method

.method public enableConfigured(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 161
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->enable()Z

    move-result p1

    return p1
.end method

.method public getConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->mHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_6
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousConfig()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .line 155
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 167
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->enabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->mHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setSecondaryCallback(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    return-void
.end method

.method public unloadPreviousConfig()Z
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->mHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
