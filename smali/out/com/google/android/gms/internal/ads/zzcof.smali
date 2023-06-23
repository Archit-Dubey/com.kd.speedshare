.class public final Lcom/google/android/gms/internal/ads/zzcof;
.super Lcom/google/android/gms/internal/ads/zzcny;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private zzghq:Ljava/lang/String;

.field private zzghr:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcny;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzcog;->zzghs:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghr:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlk()Lcom/google/android/gms/internal/ads/zzbac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbac;->zzya()Landroid/os/Looper;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaru;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzaru;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghl:Lcom/google/android/gms/internal/ads/zzaru;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 40
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghj:Z

    if-nez v0, :cond_68

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghj:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_6a

    .line 42
    :try_start_a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghr:I

    sget v1, Lcom/google/android/gms/internal/ads/zzcog;->zzght:I

    if-ne v0, v1, :cond_21

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghl:Lcom/google/android/gms/internal/ads/zzaru;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaru;->zzuw()Lcom/google/android/gms/internal/ads/zzarz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghk:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcob;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcob;-><init>(Lcom/google/android/gms/internal/ads/zzcny;)V

    .line 45
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzc(Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/zzasg;)V

    goto :goto_68

    .line 46
    :cond_21
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghr:I

    sget v1, Lcom/google/android/gms/internal/ads/zzcog;->zzghu:I

    if-ne v0, v1, :cond_38

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghl:Lcom/google/android/gms/internal/ads/zzaru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaru;->zzuw()Lcom/google/android/gms/internal/ads/zzarz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghq:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcob;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcob;-><init>(Lcom/google/android/gms/internal/ads/zzcny;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;)V

    goto :goto_68

    .line 48
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcop;

    sget v2, Lcom/google/android/gms/internal/ads/zzdls;->zzhbq:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbn;->setException(Ljava/lang/Throwable;)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_44} :catch_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_44} :catch_5c
    .catchall {:try_start_a .. :try_end_44} :catchall_45

    goto :goto_68

    :catchall_45
    move-exception v0

    .line 54
    :try_start_46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v1

    const-string v2, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcop;

    sget v2, Lcom/google/android/gms/internal/ads/zzdls;->zzhbq:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbn;->setException(Ljava/lang/Throwable;)Z

    goto :goto_68

    .line 51
    :catch_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcop;

    sget v2, Lcom/google/android/gms/internal/ads/zzdls;->zzhbq:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbn;->setException(Ljava/lang/Throwable;)Z

    .line 57
    :cond_68
    :goto_68
    monitor-exit p1

    return-void

    :catchall_6a
    move-exception v0

    monitor-exit p1
    :try_end_6c
    .catchall {:try_start_46 .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcop;

    sget v1, Lcom/google/android/gms/internal/ads/zzdls;->zzhbq:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbn;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzgl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvf;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghr:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcog;->zzghs:I

    if-eq v1, v2, :cond_1c

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghr:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcog;->zzghu:I

    if-eq v1, v2, :cond_1c

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcop;

    sget v1, Lcom/google/android/gms/internal/ads/zzdls;->zzhbr:I

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdux;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 24
    :cond_1c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghi:Z

    if-eqz v1, :cond_24

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    monitor-exit v0

    return-object p1

    .line 26
    :cond_24
    sget v1, Lcom/google/android/gms/internal/ads/zzcog;->zzghu:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghr:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghi:Z

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghq:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcny;->zzghl:Lcom/google/android/gms/internal/ads/zzaru;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaru;->checkAvailabilityAndConnect()V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzcof;)V

    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbf;->zzedm:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 33
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbn;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    monitor-exit v0

    return-object p1

    :catchall_42
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzasm;)Lcom/google/android/gms/internal/ads/zzdvf;
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

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghr:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcog;->zzghs:I

    if-eq v1, v2, :cond_1c

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghr:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcog;->zzght:I

    if-eq v1, v2, :cond_1c

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcop;

    sget v1, Lcom/google/android/gms/internal/ads/zzdls;->zzhbr:I

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdux;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 9
    :cond_1c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghi:Z

    if-eqz v1, :cond_24

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    monitor-exit v0

    return-object p1

    .line 11
    :cond_24
    sget v1, Lcom/google/android/gms/internal/ads/zzcog;->zzght:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghr:I

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghi:Z

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzghk:Lcom/google/android/gms/internal/ads/zzasm;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcny;->zzghl:Lcom/google/android/gms/internal/ads/zzaru;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaru;->checkAvailabilityAndConnect()V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcoe;-><init>(Lcom/google/android/gms/internal/ads/zzcof;)V

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbf;->zzedm:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 18
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbn;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    monitor-exit v0

    return-object p1

    :catchall_42
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p1
.end method
