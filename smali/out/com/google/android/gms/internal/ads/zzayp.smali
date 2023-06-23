.class public Lcom/google/android/gms/internal/ads/zzayp;
.super Lcom/google/android/gms/internal/ads/zzayq;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .registers 15
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

    .line 11
    new-instance v7, Landroid/webkit/WebResourceResponse;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v7
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zztm;Z)Lcom/google/android/gms/internal/ads/zzbfq;
    .registers 5

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgu;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgu;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zztm;Z)V

    return-object v0
.end method

.method public final zzbh(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .registers 5

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayp;->zzxp()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    return-object v0

    .line 4
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    return-object p1

    :catchall_d
    move-exception p1

    const-string v1, "Failed to obtain CookieManager."

    .line 6
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v1

    const-string v2, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzxq()I
    .registers 2

    const v0, 0x1030226

    return v0
.end method
