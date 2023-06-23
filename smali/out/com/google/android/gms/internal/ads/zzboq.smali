.class public final Lcom/google/android/gms/internal/ads/zzboq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtd;
.implements Lcom/google/android/gms/internal/ads/zzbua;


# instance fields
.field private final zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

.field private final zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

.field private final zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

.field private zzfom:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzfon:Z

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzbbd;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    return-void
.end method

.method private final declared-synchronized zzaid()V
    .registers 11

    monitor-enter p0

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdkk;->zzdse:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8b

    if-nez v0, :cond_9

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_8b

    if-nez v0, :cond_f

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzll()Lcom/google/android/gms/internal/ads/zzaqf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqf;->zzp(Landroid/content/Context;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_8b

    if-nez v0, :cond_1d

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzedd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbbd;->zzede:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkk;->zzhab:Lorg/json/JSONObject;

    const-string v1, "media_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x0

    goto :goto_4c

    :cond_4a
    const-string v0, "javascript"

    :goto_4c
    move-object v9, v0

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzll()Lcom/google/android/gms/internal/ads/zzaqf;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 28
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    .line 29
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzaqf;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfom:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfom:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v1, :cond_89

    if-eqz v0, :cond_89

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzll()Lcom/google/android/gms/internal/ads/zzaqf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfom:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaqf;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfom:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzap(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzll()Lcom/google/android/gms/internal/ads/zzaqf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfom:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqf;->zzab(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfon:Z
    :try_end_89
    .catchall {:try_start_1d .. :try_end_89} :catchall_8b

    .line 36
    :cond_89
    monitor-exit p0

    return-void

    :catchall_8b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .registers 4

    monitor-enter p0

    .line 11
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfon:Z

    if-nez v0, :cond_8

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzboq;->zzaid()V

    .line 13
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdkk;->zzdse:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfom:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_22

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    const-string v1, "onSdkImpression"

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 15
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdLoaded()V
    .registers 2

    monitor-enter p0

    .line 7
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfon:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_7

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzboq;->zzaid()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 10
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
