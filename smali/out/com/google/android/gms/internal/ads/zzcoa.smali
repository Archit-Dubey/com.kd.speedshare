.class public final Lcom/google/android/gms/internal/ads/zzcoa;
.super Lcom/google/android/gms/internal/ads/zzcny;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcny;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlk()Lcom/google/android/gms/internal/ads/zzbac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbac;->zzya()Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaru;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzaru;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzghl:Lcom/google/android/gms/internal/ads/zzaru;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 18
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzghj:Z

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzghj:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_40

    .line 20
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzghl:Lcom/google/android/gms/internal/ads/zzaru;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaru;->zzuw()Lcom/google/android/gms/internal/ads/zzarz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzghk:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcob;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcob;-><init>(Lcom/google/android/gms/internal/ads/zzcny;)V

    .line 22
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzb(Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/zzasg;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1a} :catch_32
    .catchall {:try_start_a .. :try_end_1a} :catchall_1b

    goto :goto_3e

    :catchall_1b
    move-exception v0

    .line 28
    :try_start_1c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v1

    const-string v2, "RemoteSignalsClientTask.onConnected"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcop;

    sget v2, Lcom/google/android/gms/internal/ads/zzdls;->zzhbq:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbn;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3e

    .line 25
    :catch_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcop;

    sget v2, Lcom/google/android/gms/internal/ads/zzdls;->zzhbq:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbn;->setException(Ljava/lang/Throwable;)Z

    .line 30
    :cond_3e
    :goto_3e
    monitor-exit p1

    return-void

    :catchall_40
    move-exception v0

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_1c .. :try_end_42} :catchall_40

    throw v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzasm;)Lcom/google/android/gms/internal/ads/zzdvf;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzasm;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzghi:Z

    if-eqz v1, :cond_b

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    monitor-exit v0

    return-object p1

    :cond_b
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzghi:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzghk:Lcom/google/android/gms/internal/ads/zzasm;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcny;->zzghl:Lcom/google/android/gms/internal/ads/zzaru;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaru;->checkAvailabilityAndConnect()V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcod;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcod;-><init>(Lcom/google/android/gms/internal/ads/zzcoa;)V

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbf;->zzedm:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbn;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    monitor-exit v0

    return-object p1

    :catchall_25
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method
