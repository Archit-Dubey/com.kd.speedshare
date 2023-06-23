.class public final Lcom/google/android/gms/internal/ads/zzcis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzgcy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzgcy:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaox;)V
    .registers 5

    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzgcy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_21

    if-eqz v0, :cond_b

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_b
    :try_start_b
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaox;->zztr()Lcom/google/android/gms/internal/ads/zzapl;

    move-result-object v0

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaox;->zzts()Lcom/google/android/gms/internal/ads/zzapl;

    move-result-object p2
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_1f

    .line 21
    :try_start_13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcit;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcit;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapl;Lcom/google/android/gms/internal/ads/zzapl;)V

    .line 22
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzgcy:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_21

    .line 23
    monitor-exit p0

    return-void

    .line 20
    :catchall_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdlm;)V
    .registers 5

    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzgcy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_21

    if-eqz v0, :cond_b

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_b
    :try_start_b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdlm;->zztr()Lcom/google/android/gms/internal/ads/zzapl;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdlm;->zzts()Lcom/google/android/gms/internal/ads/zzapl;

    move-result-object p2
    :try_end_13
    .catch Lcom/google/android/gms/internal/ads/zzdlg; {:try_start_b .. :try_end_13} :catch_1f
    .catchall {:try_start_b .. :try_end_13} :catchall_21

    .line 11
    :try_start_13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcit;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcit;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapl;Lcom/google/android/gms/internal/ads/zzapl;)V

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzgcy:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_21

    .line 13
    monitor-exit p0

    return-void

    .line 10
    :catch_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzgf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcit;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzgcy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcit;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
