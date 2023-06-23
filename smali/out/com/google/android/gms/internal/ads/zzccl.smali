.class public final Lcom/google/android/gms/internal/ads/zzccl;
.super Lcom/google/android/gms/internal/ads/zzyh;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzfxg:Lcom/google/android/gms/internal/ads/zzyi;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzfxh:Lcom/google/android/gms/internal/ads/zzang;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyi;Lcom/google/android/gms/internal/ads/zzang;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzyi;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzang;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyh;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->lock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzfxg:Lcom/google/android/gms/internal/ads/zzyi;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzfxh:Lcom/google/android/gms/internal/ads/zzang;

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final getCurrentTime()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzfxh:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v0, :cond_9

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzang;->getVideoCurrentTime()F

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzfxh:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v0, :cond_9

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzang;->getVideoDuration()F

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final getPlaybackState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final isClickToExpandEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final isCustomControlsEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final isMuted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final mute(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final play()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzfxg:Lcom/google/android/gms/internal/ads/zzyi;

    if-eqz v1, :cond_c

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzfxg:Lcom/google/android/gms/internal/ads/zzyi;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzyi;->zza(Lcom/google/android/gms/internal/ads/zzyj;)V

    .line 21
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final zzqi()Lcom/google/android/gms/internal/ads/zzyj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzfxg:Lcom/google/android/gms/internal/ads/zzyi;

    if-eqz v1, :cond_f

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzfxg:Lcom/google/android/gms/internal/ads/zzyi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyi;->zzqi()Lcom/google/android/gms/internal/ads/zzyj;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_f
    const/4 v1, 0x0

    .line 25
    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
