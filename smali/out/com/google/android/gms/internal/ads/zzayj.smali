.class public Lcom/google/android/gms/internal/ads/zzayj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzayl;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayj;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbfn;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbfn;->onPause()V

    const/4 p0, 0x1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbfn;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 12
    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbfn;->onResume()V

    const/4 p0, 0x1

    return p0
.end method

.method public static zzdf(I)Lcom/google/android/gms/internal/ads/zzayj;
    .registers 2

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    .line 40
    new-instance p0, Lcom/google/android/gms/internal/ads/zzayu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;-><init>()V

    return-object p0

    :cond_a
    const/16 v0, 0x1a

    if-lt p0, v0, :cond_14

    .line 42
    new-instance p0, Lcom/google/android/gms/internal/ads/zzayr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayr;-><init>()V

    return-object p0

    :cond_14
    const/16 v0, 0x18

    if-lt p0, v0, :cond_1e

    .line 44
    new-instance p0, Lcom/google/android/gms/internal/ads/zzays;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzays;-><init>()V

    return-object p0

    :cond_1e
    const/16 v0, 0x15

    if-lt p0, v0, :cond_28

    .line 46
    new-instance p0, Lcom/google/android/gms/internal/ads/zzayp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayp;-><init>()V

    return-object p0

    :cond_28
    const/16 v0, 0x13

    if-lt p0, v0, :cond_32

    .line 48
    new-instance p0, Lcom/google/android/gms/internal/ads/zzayq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayq;-><init>()V

    return-object p0

    :cond_32
    const/16 v0, 0x12

    if-lt p0, v0, :cond_3c

    .line 50
    new-instance p0, Lcom/google/android/gms/internal/ads/zzayn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayn;-><init>()V

    return-object p0

    :cond_3c
    const/16 v0, 0x11

    if-lt p0, v0, :cond_46

    .line 52
    new-instance p0, Lcom/google/android/gms/internal/ads/zzayo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayo;-><init>()V

    return-object p0

    .line 53
    :cond_46
    new-instance p0, Lcom/google/android/gms/internal/ads/zzayj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayj;-><init>()V

    return-object p0
.end method

.method public static zzxp()Z
    .registers 2

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string p1, ""

    return-object p1
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public zza(Landroid/content/ContentResolver;)I
    .registers 4

    const-string v0, "wifi_on"

    const/4 v1, 0x0

    .line 32
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 19
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 34
    new-instance p3, Landroid/webkit/WebResourceResponse;

    invoke-direct {p3, p1, p2, p6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p3
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zztm;Z)Lcom/google/android/gms/internal/ads/zzbfq;
    .registers 5

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgs;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zztm;Z)V

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzui;
    .registers 3

    .line 31
    sget-object p1, Lcom/google/android/gms/internal/ads/zzui;->zzcbj:Lcom/google/android/gms/internal/ads/zzui;

    return-object p1
.end method

.method public zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .registers 4

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaym;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaym;-><init>(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbai;->zza(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public zzb(Landroid/content/ContentResolver;)I
    .registers 4

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    .line 33
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public zzbg(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public zzbh(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .registers 5

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayj;->zzxp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 24
    :cond_8
    :try_start_8
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 25
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    return-object p1

    :catchall_10
    move-exception p1

    const-string v0, "Failed to obtain CookieManager."

    .line 27
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    const-string v2, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public zzg(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public zzxn()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public zzxo()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 18
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public zzxq()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzxr()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method
