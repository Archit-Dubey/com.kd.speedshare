.class public Lcom/genonbeta/TrebleShot/util/ConnectionUtils;
.super Ljava/lang/Object;
.source "ConnectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/util/ConnectionUtils$ConnectionCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHotspotUtils:Lcom/genonbeta/TrebleShot/util/HotspotUtils;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 44
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mLocationManager:Landroid/location/LocationManager;

    .line 45
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mHotspotUtils:Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    .line 46
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static getCleanNetworkName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string v1, "\""

    .line 57
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/ConnectionUtils;
    .registers 2

    .line 50
    new-instance v0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public canAccessLocation()Z
    .registers 2

    .line 61
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isLocationServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public canReadScanResults()Z
    .registers 3

    .line 65
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->canAccessLocation()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public disableCurrentNetwork()Z
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isConnectedToAnyNetwork()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 73
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 74
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public establishHotspotConnection(Lcom/genonbeta/android/framework/util/Interrupter;Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;Lcom/genonbeta/TrebleShot/util/ConnectionUtils$ConnectionCallback;)Ljava/lang/String;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 90
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    long-to-int v9, v8

    const/16 v8, 0x2710

    const/4 v10, 0x1

    if-lt v9, v8, :cond_1e

    if-nez v5, :cond_1e

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->disableCurrentNetwork()Z

    const/4 v5, 0x1

    const/4 v7, 0x0

    :cond_1e
    const/16 v8, 0x4e20

    if-lt v9, v8, :cond_29

    if-nez v6, :cond_29

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->disableCurrentNetwork()Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 105
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    const/16 v11, 0x3e8

    if-nez v8, :cond_4f

    .line 106
    sget-object v8, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    const-string v12, "establishHotspotConnection(): Wifi is off. Making a request to turn it on"

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v8

    if-nez v8, :cond_fd

    .line 109
    sget-object v0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    const-string v2, "establishHotspotConnection(): Wifi was off. The request has failed. Exiting."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_121

    .line 112
    :cond_4f
    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isConnectedToNetwork(Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;)Z

    move-result v8

    if-nez v8, :cond_64

    if-nez v7, :cond_64

    .line 113
    sget-object v7, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    const-string v8, "establishHotspotConnection(): Requested network toggle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->toggleConnection(Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;)Z

    const/4 v7, 0x1

    goto/16 :goto_fd

    .line 118
    :cond_64
    sget-object v8, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    const-string v12, "establishHotspotConnection(): Waiting to connect to the server"

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v8

    if-eqz v8, :cond_f6

    .line 122
    iget v12, v8, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v12, :cond_f6

    .line 123
    iget v12, v8, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v12}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->convertInet4Address(I)Ljava/lang/String;

    move-result-object v12

    .line 125
    sget-object v13, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v4

    iget v15, v8, Landroid/net/DhcpInfo;->dns1:I

    .line 127
    invoke-static {v15}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->convertInet4Address(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v10, 0x2

    iget v15, v8, Landroid/net/DhcpInfo;->dns2:I

    .line 128
    invoke-static {v15}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->convertInet4Address(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v10, 0x3

    iget v15, v8, Landroid/net/DhcpInfo;->ipAddress:I

    .line 129
    invoke-static {v15}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->convertInet4Address(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v10, 0x4

    iget v15, v8, Landroid/net/DhcpInfo;->serverAddress:I

    .line 130
    invoke-static {v15}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->convertInet4Address(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v10, 0x5

    iget v8, v8, Landroid/net/DhcpInfo;->netmask:I

    .line 131
    invoke-static {v8}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->convertInet4Address(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v10

    const-string v8, "establishHotspotConnection(): DhcpInfo: gateway: %s dns1: %s dns2: %s ipAddr: %s serverAddr: %s netMask: %s"

    .line 125
    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v8, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "establishHotspotConnection(): There is DHCP info provided waiting to reach the address "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x1c

    .line 142
    invoke-static {v8}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->isOSAbove(I)Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 143
    invoke-static {v12, v11}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->ping(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_ee

    goto :goto_e6

    .line 144
    :cond_e0
    invoke-static {v12}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->ping(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ee

    .line 145
    :goto_e6
    sget-object v0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    const-string v2, "establishHotspotConnection(): AP has been reached. Returning OK state."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    .line 149
    :cond_ee
    sget-object v8, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    const-string v10, "establishHotspotConnection(): Connection check ping failed"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    .line 152
    :cond_f6
    sget-object v8, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    const-string v10, "establishHotspotConnection(): No DHCP provided. Looping..."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    :goto_fd
    int-to-long v8, v9

    move-object/from16 v10, p3

    .line 155
    invoke-interface {v10, v11, v8, v9}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils$ConnectionCallback;->onTimePassed(IJ)Z

    move-result v8

    if-nez v8, :cond_11a

    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_10d

    goto :goto_11a

    :cond_10d
    const-wide/16 v8, 0x3e8

    .line 161
    :try_start_10f
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_112
    .catch Ljava/lang/InterruptedException; {:try_start_10f .. :try_end_112} :catch_114

    goto/16 :goto_c

    :catch_114
    move-exception v0

    move-object v2, v0

    .line 163
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_121

    .line 156
    :cond_11a
    :goto_11a
    sget-object v0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->TAG:Ljava/lang/String;

    const-string v2, "establishHotspotConnection(): Timed out or onTimePassed returned true. Exiting..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_121
    const/4 v12, 0x0

    :goto_122
    return-object v12
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mHotspotUtils:Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    return-object v0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public hasLocationPermission(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 172
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public isConnectedToAnyNetwork()Z
    .registers 4

    .line 203
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 206
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_18

    .line 207
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public isConnectedToNetwork(Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;)Z
    .registers 3

    .line 211
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isConnectedToAnyNetwork()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 214
    :cond_8
    iget-object v0, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 215
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->BSSID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 217
    :cond_1f
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->SSID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getCleanNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isConnectionSelfNetwork()Z
    .registers 3

    .line 196
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 199
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getCleanNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TS_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public isLocationServiceEnabled()Z
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMobileDataActive()Z
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 226
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public toggleConnection(Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;)Z
    .registers 11

    .line 230
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isConnectedToNetwork(Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_181

    .line 231
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isConnectedToAnyNetwork()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 232
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->disableCurrentNetwork()Z

    .line 241
    :cond_10
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 243
    iget-object v4, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->SSID:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "\"%s\""

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 245
    iget v3, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->keyManagement:I

    if-eqz v3, :cond_112

    const-string v4, "[0-9A-Fa-f]*"

    if-eq v3, v2, :cond_eb

    const/4 v5, 0x2

    if-eq v3, v5, :cond_c4

    const-string v4, "[0-9A-Fa-f]{64}"

    const/4 v6, 0x3

    const/16 v7, 0x22

    if-eq v3, v6, :cond_83

    const/4 v8, 0x4

    if-eq v3, v8, :cond_3b

    goto/16 :goto_117

    .line 290
    :cond_3b
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 291
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 292
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 293
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 294
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 295
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 297
    iget-object v3, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    if-eqz v3, :cond_6b

    iget-object v3, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    .line 298
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 299
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_117

    .line 301
    :cond_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_117

    .line 276
    :cond_83
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 277
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 278
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 279
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 280
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 282
    iget-object v3, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    if-eqz v3, :cond_ad

    iget-object v3, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 284
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_117

    .line 286
    :cond_ad
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_117

    .line 263
    :cond_c4
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 264
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 265
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 266
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 268
    iget-object v3, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    if-eqz v3, :cond_117

    iget-object v3, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 270
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    aput-object p1, v3, v1

    goto :goto_117

    .line 250
    :cond_eb
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 251
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 252
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 253
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 255
    iget-object v3, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    if-eqz v3, :cond_117

    iget-object v3, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 257
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    aput-object p1, v3, v1

    goto :goto_117

    .line 247
    :cond_112
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 316
    :cond_117
    :goto_117
    :try_start_117
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    const/16 v3, 0x17

    .line 318
    invoke-static {v3}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->isOSAbove(I)Z

    move-result v3

    if-eqz v3, :cond_166

    .line 319
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_133
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_181

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 321
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_133

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_133

    .line 322
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 323
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 324
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result p1

    return p1

    .line 328
    :cond_166
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 329
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 330
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result p1
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_17c} :catch_17d

    return p1

    .line 333
    :catch_17d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->disableCurrentNetwork()Z

    return v1

    .line 338
    :cond_181
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->disableCurrentNetwork()Z

    return v1
.end method
