.class public Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UIConnectionUtils"


# instance fields
.field private mConnectionUtils:Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

.field private mSnackbarSupport:Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;

.field private mWirelessEnableRequested:Z


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/util/ConnectionUtils;Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->mWirelessEnableRequested:Z

    .line 51
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->mConnectionUtils:Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    .line 52
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->mSnackbarSupport:Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;

    return-void
.end method

.method static synthetic access$002(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Z)Z
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->mWirelessEnableRequested:Z

    return p1
.end method

.method public static isOSAbove(I)Z
    .registers 2

    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static showConnectionRejectionInformation(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lorg/json/JSONObject;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    const-string v0, "error"

    .line 61
    :try_start_2
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 62
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "notAllowed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 63
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e

    .line 78
    :cond_26
    invoke-static {p0, p3}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->showUnknownError(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 80
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static showUnknownError(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$2;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->mConnectionUtils:Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    return-object v0
.end method

.method public getSnackbarSupport()Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->mSnackbarSupport:Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;

    return-object v0
.end method

.method public makeAcquaintance(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UITask;Ljava/lang/Object;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V
    .registers 14

    .line 114
    new-instance v7, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UITask;Ljava/lang/Object;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V

    const p3, 0x7f1100c4

    .line 200
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p3}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p3

    const p4, 0x7f0700b2

    .line 201
    invoke-virtual {p3, p4}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setIconRes(I)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p3

    .line 203
    invoke-virtual {p3, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    if-eqz p2, :cond_2a

    .line 206
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/genonbeta/TrebleShot/ui/UITask;->updateTaskStarted(Lcom/genonbeta/android/framework/util/Interrupter;)V

    :cond_2a
    return-void
.end method

.method public notifyWirelessRequestHandled()Z
    .registers 3

    .line 211
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->mWirelessEnableRequested:Z

    const/4 v1, 0x0

    .line 213
    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->mWirelessEnableRequested:Z

    return v0
.end method

.method public setupConnection(Landroid/app/Activity;Ljava/lang/String;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 16

    .line 225
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    const-class v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    new-instance v9, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;

    move-object v2, v9

    move-object v3, p0

    move v4, p3

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;ILjava/lang/String;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v0, v1, v9}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge;->connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/Class;Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-object p1
.end method

.method public showConnectionOptions(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V
    .registers 9

    .line 270
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2d

    .line 271
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getSnackbarSupport()Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;

    move-result-object v0

    const v3, 0x7f11010c

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const v3, 0x7f110044

    new-instance v4, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V

    .line 272
    invoke-virtual {v0, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_52

    .line 282
    :cond_2d
    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->validateLocationPermission(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 283
    invoke-interface {p3, v1, v2}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;->onResultReturned(ZZ)V

    .line 285
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getSnackbarSupport()Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;

    move-result-object p2

    const v0, 0x7f110104

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p2, v0, v3}, Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    const v0, 0x7f110096

    new-instance v3, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$6;

    invoke-direct {v3, p0, p1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$6;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Landroid/app/Activity;)V

    .line 286
    invoke-virtual {p2, v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 298
    :cond_52
    :goto_52
    invoke-interface {p3, v1, v2}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;->onResultReturned(ZZ)V

    return-void
.end method

.method public toggleHotspot(ZLandroidx/fragment/app/FragmentActivity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z
    .registers 10

    .line 306
    invoke-static {}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 309
    :cond_8
    new-instance v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$7;

    invoke-direct {v0, p0, p4}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$7;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V

    if-eqz p1, :cond_9f

    .line 319
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_1c

    invoke-virtual {p0, p2, p3, p4}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->validateLocationPermission(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z

    move-result p1

    if-nez p1, :cond_1c

    return v1

    .line 322
    :cond_1c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const v4, 0x7f110027

    if-lt p1, v3, :cond_5b

    .line 323
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5b

    .line 324
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f1100d1

    .line 325
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 326
    invoke-virtual {p1, v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f110078

    new-instance v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$8;

    invoke-direct {v0, p0, p2, p4}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$8;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Landroidx/fragment/app/FragmentActivity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V

    .line 327
    invoke-virtual {p1, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 339
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v1

    .line 342
    :cond_5b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v2, :cond_9f

    .line 343
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_9f

    .line 344
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isMobileDataActive()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 345
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110119

    .line 346
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 347
    invoke-virtual {p1, v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110084

    new-instance v2, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Landroidx/fragment/app/FragmentActivity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V

    .line 348
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 357
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v1

    .line 363
    :cond_9f
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 365
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_cf

    if-eqz p1, :cond_f1

    .line 366
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getHotspotName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 367
    :cond_cf
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getSnackbarSupport()Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_e5

    const p2, 0x7f11010b

    goto :goto_e8

    :cond_e5
    const p2, 0x7f110108

    :goto_e8
    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 372
    :cond_f1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.genonbeta.TrebleShot.transaction.action.TOGGLE_HOTSPOT"

    .line 373
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 372
    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 375
    invoke-interface {p4, p1, v1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;->onResultReturned(ZZ)V

    return p1
.end method

.method public turnOnWiFi(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z
    .registers 7

    .line 382
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_24

    .line 383
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getSnackbarSupport()Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;

    move-result-object p1

    const p2, 0x7f110113

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v2}, Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 384
    invoke-interface {p3, v0, v1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;->onResultReturned(ZZ)V

    return v0

    .line 387
    :cond_24
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11011a

    .line 388
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f110033

    new-instance v2, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$11;

    invoke-direct {v2, p0, p3}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$11;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V

    .line 389
    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f110078

    new-instance v2, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$10;

    invoke-direct {v2, p0, p1, p3}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$10;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V

    .line 397
    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 407
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v1
.end method

.method public validateLocationPermission(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z
    .registers 9

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    .line 417
    :cond_8
    new-instance v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$12;

    invoke-direct {v0, p0, p3}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$12;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V

    .line 426
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v2

    const v3, 0x7f110027

    const/4 v4, 0x0

    if-nez v2, :cond_4b

    .line 427
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1100ea

    .line 428
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 429
    invoke-virtual {v1, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110025

    new-instance v2, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$13;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$13;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;Landroid/app/Activity;I)V

    .line 430
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v4

    .line 447
    :cond_4b
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isLocationServiceEnabled()Z

    move-result p2

    if-nez p2, :cond_7d

    .line 448
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100e8

    .line 449
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 450
    invoke-virtual {p2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f110052

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$14;

    invoke-direct {v1, p0, p3, p1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$14;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;Landroid/app/Activity;)V

    .line 451
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v4

    .line 466
    :cond_7d
    invoke-interface {p3, v1, v4}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;->onResultReturned(ZZ)V

    return v1
.end method
