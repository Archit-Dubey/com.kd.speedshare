.class public final Lcom/google/android/gms/internal/ads/zzciz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzgdf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzgdg:Lorg/json/JSONObject;

.field private zzxh:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzgdf:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciz;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final declared-synchronized zzano()V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x1

    .line 10
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzxh:Z

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxh;->zzwe()Lcom/google/android/gms/internal/ads/zzaxx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaxx;->zzwz()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_77

    if-nez v0, :cond_14

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzwn()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_77

    if-nez v0, :cond_1c

    .line 16
    monitor-exit p0

    return-void

    :cond_1c
    :try_start_1c
    const-string v1, "ad_unit_patterns"

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzgdg:Lorg/json/JSONObject;

    const-string v1, "ad_unit_id_settings"

    .line 18
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_77

    if-nez v0, :cond_2e

    .line 20
    monitor-exit p0

    return-void

    :cond_2e
    const/4 v1, 0x0

    .line 21
    :goto_2f
    :try_start_2f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_72

    const-string v3, "ad_unit_id"

    .line 24
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format"

    .line 25
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "request_signals"

    .line 26
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v3, :cond_72

    if-eqz v2, :cond_72

    if-eqz v4, :cond_72

    .line 28
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzgdf:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 29
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzgdf:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    goto :goto_6f

    .line 30
    :cond_64
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzgdf:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    .line 32
    :goto_6f
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_2f .. :try_end_72} :catchall_77

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 34
    :cond_75
    monitor-exit p0

    return-void

    :catchall_77
    move-exception v0

    monitor-exit p0

    goto :goto_7b

    :goto_7a
    throw v0

    :goto_7b
    goto :goto_7a
.end method


# virtual methods
.method public final zzann()V
    .registers 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxh;->zzwe()Lcom/google/android/gms/internal/ads/zzaxx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzciy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzciy;-><init>(Lcom/google/android/gms/internal/ads/zzciz;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxx;->zzb(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcjb;-><init>(Lcom/google/android/gms/internal/ads/zzciz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzanp()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzciz;->zzano()V

    return-void
.end method

.method final synthetic zzanq()V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcja;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcja;-><init>(Lcom/google/android/gms/internal/ads/zzciz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzanr()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzciz;->zzano()V

    return-void
.end method
