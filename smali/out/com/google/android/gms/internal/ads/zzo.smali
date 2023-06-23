.class final Lcom/google/android/gms/internal/ads/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzac;


# instance fields
.field private final zzy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final zzz:Lcom/google/android/gms/internal/ads/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzm;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzo;->zzy:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzo;->zzz:Lcom/google/android/gms/internal/ads/zzm;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzo;Lcom/google/android/gms/internal/ads/zzaa;)Z
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzo;->zzb(Lcom/google/android/gms/internal/ads/zzaa;)Z

    move-result p0

    return p0
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzaa;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 38
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->zze()Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzo;->zzy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzo;->zzy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1e

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    const-string v4, "waiting-for-response"

    .line 43
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    .line 44
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzo;->zzy:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-boolean p1, Lcom/google/android/gms/internal/ads/zzaq;->DEBUG:Z

    if-eqz p1, :cond_38

    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 47
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_52

    .line 48
    :cond_38
    monitor-exit p0

    return v2

    .line 49
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzo;->zzy:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Lcom/google/android/gms/internal/ads/zzac;)V

    .line 51
    sget-boolean p1, Lcom/google/android/gms/internal/ads/zzaq;->DEBUG:Z

    if-eqz p1, :cond_50

    const-string p1, "new request, sending to network %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 52
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_52

    .line 53
    :cond_50
    monitor-exit p0

    return v3

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaa;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->zze()Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzo;->zzy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_62

    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    .line 24
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaq;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    .line 27
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzaq;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_2f
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaa;

    .line 29
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzo;->zzy:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Lcom/google/android/gms/internal/ads/zzac;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_64

    .line 31
    :try_start_3d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzo;->zzz:Lcom/google/android/gms/internal/ads/zzm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzm;->zza(Lcom/google/android/gms/internal/ads/zzm;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_46} :catch_48
    .catchall {:try_start_3d .. :try_end_46} :catchall_64

    .line 32
    monitor-exit p0

    return-void

    :catch_48
    move-exception p1

    :try_start_49
    const-string v0, "Couldn\'t add request to queue. %s"

    new-array v1, v2, [Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzo;->zzz:Lcom/google/android/gms/internal/ads/zzm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzm;->quit()V
    :try_end_62
    .catchall {:try_start_49 .. :try_end_62} :catchall_64

    .line 37
    :cond_62
    monitor-exit p0

    return-void

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzaj;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzaj<",
            "*>;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaj;->zzbs:Lcom/google/android/gms/internal/ads/zzn;

    if-eqz v0, :cond_55

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaj;->zzbs:Lcom/google/android/gms/internal/ads/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzn;->zza()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_55

    .line 8
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->zze()Ljava/lang/String;

    move-result-object p1

    .line 9
    monitor-enter p0

    .line 10
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzo;->zzy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 11
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_52

    if-eqz v0, :cond_51

    .line 13
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaq;->DEBUG:Z

    if-eqz v1, :cond_37

    const-string v1, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 16
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaq;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaa;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzo;->zzz:Lcom/google/android/gms/internal/ads/zzm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzm;->zzb(Lcom/google/android/gms/internal/ads/zzm;)Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzb(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzaj;)V

    goto :goto_3b

    :cond_51
    return-void

    :catchall_52
    move-exception p1

    .line 11
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1

    .line 6
    :cond_55
    :goto_55
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzo;->zza(Lcom/google/android/gms/internal/ads/zzaa;)V

    return-void
.end method
