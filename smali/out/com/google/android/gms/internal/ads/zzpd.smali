.class public final Lcom/google/android/gms/internal/ads/zzpd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized block()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 10
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpd;->isOpen:Z

    if-nez v0, :cond_9

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    .line 12
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method public final declared-synchronized open()Z
    .registers 2

    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpd;->isOpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    .line 4
    :try_start_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpd;->isOpen:Z

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 6
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzit()Z
    .registers 3

    monitor-enter p0

    .line 7
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpd;->isOpen:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpd;->isOpen:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 9
    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
