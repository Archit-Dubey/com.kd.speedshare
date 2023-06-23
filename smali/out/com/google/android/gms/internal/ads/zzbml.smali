.class public final Lcom/google/android/gms/internal/ads/zzbml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrj;


# instance fields
.field private final zzbqd:Lcom/google/android/gms/common/util/Clock;

.field private zzdyr:Ljava/lang/Runnable;

.field private final zzfmo:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzfmp:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zzfmq:J

.field private zzfmr:J

.field private zzfms:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmq:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmr:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzdyr:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfms:Z

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmo:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkz()Lcom/google/android/gms/internal/ads/zzre;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzre;->zza(Lcom/google/android/gms/internal/ads/zzrj;)V

    return-void
.end method

.method private final declared-synchronized zzagx()V
    .registers 7

    monitor-enter p0

    .line 18
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfms:Z

    if-nez v0, :cond_29

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmp:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmp:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_23

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmp:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 21
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmr:J

    goto :goto_27

    :cond_23
    const-wide/16 v2, -0x1

    .line 22
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmr:J

    .line 23
    :goto_27
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfms:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 24
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzagy()V
    .registers 6

    monitor-enter p0

    .line 25
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfms:Z

    if-eqz v0, :cond_2a

    .line 26
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmp:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmp:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmo:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzdyr:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmr:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmp:Ljava/util/concurrent/ScheduledFuture;

    :cond_27
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfms:Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 30
    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza(ILjava/lang/Runnable;)V
    .registers 7

    monitor-enter p0

    .line 14
    :try_start_1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzdyr:Ljava/lang/Runnable;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmq:J

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmo:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfmp:Ljava/util/concurrent/ScheduledFuture;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzp(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbml;->zzagy()V

    return-void

    .line 12
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbml;->zzagx()V

    return-void
.end method
