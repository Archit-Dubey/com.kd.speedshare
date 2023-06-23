.class public final Lcom/google/android/gms/internal/ads/zzbus;
.super Lcom/google/android/gms/internal/ads/zzbwv;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbwv<",
        "Lcom/google/android/gms/internal/ads/zzbuw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbqd:Lcom/google/android/gms/common/util/Clock;

.field private zzflv:Z

.field private final zzfmo:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzfmq:J

.field private zzfmr:J

.field private zzfrz:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V
    .registers 5

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwv;-><init>(Ljava/util/Set;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmq:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmr:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzflv:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmo:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbus;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbus;->zzaje()V

    return-void
.end method

.method private final zzaje()V
    .registers 2

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbur;->zzfrq:Lcom/google/android/gms/internal/ads/zzbwx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwv;->zza(Lcom/google/android/gms/internal/ads/zzbwx;)V

    return-void
.end method

.method private final declared-synchronized zzfe(J)V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfrz:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfrz:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_13

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfrz:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 38
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmq:J

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmo:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbut;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzbut;-><init>(Lcom/google/android/gms/internal/ads/zzbus;Lcom/google/android/gms/internal/ads/zzbuu;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfrz:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 41
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized onPause()V
    .registers 7

    monitor-enter p0

    .line 8
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzflv:Z

    if-nez v0, :cond_29

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfrz:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfrz:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_23

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfrz:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 11
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmr:J

    goto :goto_27

    :cond_23
    const-wide/16 v2, -0x1

    .line 12
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmr:J

    .line 13
    :goto_27
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzflv:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 14
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .registers 6

    monitor-enter p0

    .line 15
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzflv:Z

    if-eqz v0, :cond_1d

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfrz:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmr:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbus;->zzfe(J)V

    :cond_1a
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzflv:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 19
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzajd()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 20
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzflv:Z

    const-wide/16 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbus;->zzfe(J)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 22
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzdu(I)V
    .registers 8

    monitor-enter p0

    if-gtz p1, :cond_5

    .line 24
    monitor-exit p0

    return-void

    .line 25
    :cond_5
    :try_start_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 26
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzflv:Z

    if-eqz p1, :cond_25

    .line 28
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmr:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmr:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1f

    goto :goto_21

    .line 30
    :cond_1f
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmr:J

    :goto_21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmr:J
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_43

    .line 31
    monitor-exit p0

    return-void

    .line 32
    :cond_25
    :try_start_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmq:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_3e

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfmq:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long p1, v2, v0

    if-lez p1, :cond_41

    .line 34
    :cond_3e
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbus;->zzfe(J)V
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_43

    .line 35
    :cond_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method
