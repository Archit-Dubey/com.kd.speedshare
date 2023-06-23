.class public Lcom/genonbeta/TrebleShot/service/DeviceScannerService;
.super Lcom/genonbeta/TrebleShot/app/Service;
.source "DeviceScannerService.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;


# static fields
.field public static final ACTION_DEVICE_SCAN_COMPLETED:Ljava/lang/String; = "genonbeta.intent.action.DEVICE_SCAN_COMPLETED"

.field public static final ACTION_SCAN_DEVICES:Ljava/lang/String; = "genonbeta.intent.action.SCAN_DEVICES"

.field public static final ACTION_SCAN_STARTED:Ljava/lang/String; = "genonbeta.intent.action.SCAN_STARTED"

.field public static final EXTRA_SCAN_STATUS:Ljava/lang/String; = "genonbeta.intent.extra.SCAN_STATUS"

.field public static final SCANNER_NOT_AVAILABLE:Ljava/lang/String; = "genonbeta.intent.status.SCANNER_NOT_AVAILABLE"

.field public static final STATUS_NO_NETWORK_INTERFACE:Ljava/lang/String; = "genonbeta.intent.status.NO_NETWORK_INTERFACE"

.field public static final STATUS_OK:Ljava/lang/String; = "genonbeta.intent.status.OK"

.field private static mDeviceScanner:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;-><init>()V

    sput-object v0, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->mDeviceScanner:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Service;-><init>()V

    return-void
.end method

.method public static getDeviceScanner()Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;
    .registers 1

    .line 37
    sget-object v0, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->mDeviceScanner:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 96
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Service;->onDestroy()V

    .line 97
    invoke-static {}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getDeviceScanner()Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->interrupt()Z

    return-void
.end method

.method public onDeviceFound(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .registers 10

    .line 81
    new-instance v6, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "-"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 82
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 84
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->load(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 13

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    if-eqz p1, :cond_8a

    .line 45
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->checkRunningConditions(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8a

    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "genonbeta.intent.action.SCAN_DEVICES"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 49
    sget-object p1, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->mDeviceScanner:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->isScannerAvailable()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_73

    .line 50
    sget-object p1, Lcom/genonbeta/TrebleShot/config/AppConfig;->DEFAULT_DISABLED_INTERFACES:[Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->getInterfaces(Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object p3

    .line 53
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    .line 56
    new-instance v8, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getAssociatedAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 57
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    goto :goto_39

    .line 60
    :cond_65
    sget-object p3, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->mDeviceScanner:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-virtual {p3, p1, p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->scan(Ljava/util/List;Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;)Z

    move-result p1

    if-eqz p1, :cond_70

    const-string p1, "genonbeta.intent.status.OK"

    goto :goto_75

    :cond_70
    const-string p1, "genonbeta.intent.status.NO_NETWORK_INTERFACE"

    goto :goto_75

    :cond_73
    const-string p1, "genonbeta.intent.status.SCANNER_NOT_AVAILABLE"

    .line 63
    :goto_75
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "genonbeta.intent.action.SCAN_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "genonbeta.intent.extra.SCAN_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return p2

    :cond_8a
    const/4 p1, 0x2

    return p1
.end method

.method public onThreadsCompleted()V
    .registers 4

    .line 90
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "genonbeta.intent.action.DEVICE_SCAN_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
