.class public final Lcom/google/android/gms/internal/ads/zzw;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzak:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzal:Lcom/google/android/gms/internal/ads/zzx;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzk;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzak;

.field private volatile zzp:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzx;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzak;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;>;",
            "Lcom/google/android/gms/internal/ads/zzx;",
            "Lcom/google/android/gms/internal/ads/zzk;",
            "Lcom/google/android/gms/internal/ads/zzak;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzp:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzak:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzal:Lcom/google/android/gms/internal/ads/zzx;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzw;->zzn:Lcom/google/android/gms/internal/ads/zzk;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzw;->zzo:Lcom/google/android/gms/internal/ads/zzak;

    return-void
.end method

.method private final processRequest()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzak:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaa;

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x3

    .line 23
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaa;->zzd(I)V

    const/4 v3, 0x4

    :try_start_11
    const-string v4, "network-queue-take"

    .line 24
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->isCanceled()Z

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->zzd()I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 28
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzw;->zzal:Lcom/google/android/gms/internal/ads/zzx;

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzc(Lcom/google/android/gms/internal/ads/zzaa;)Lcom/google/android/gms/internal/ads/zzy;

    move-result-object v4

    const-string v5, "network-http-complete"

    .line 29
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    .line 30
    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzy;->zzan:Z

    if-eqz v5, :cond_41

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->zzl()Z

    move-result v5

    if-eqz v5, :cond_41

    const-string v4, "not-modified"

    .line 31
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaa;->zzd(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->zzm()V
    :try_end_3d
    .catch Lcom/google/android/gms/internal/ads/zzao; {:try_start_11 .. :try_end_3d} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3d} :catch_75
    .catchall {:try_start_11 .. :try_end_3d} :catchall_73

    .line 33
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaa;->zzd(I)V

    return-void

    .line 35
    :cond_41
    :try_start_41
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Lcom/google/android/gms/internal/ads/zzy;)Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object v4

    const-string v5, "network-parse-complete"

    .line 36
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->zzh()Z

    move-result v5

    if-eqz v5, :cond_64

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzaj;->zzbs:Lcom/google/android/gms/internal/ads/zzn;

    if-eqz v5, :cond_64

    .line 38
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzw;->zzn:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->zze()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzaj;->zzbs:Lcom/google/android/gms/internal/ads/zzn;

    invoke-interface {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)V

    const-string v5, "network-cache-written"

    .line 39
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    .line 40
    :cond_64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->zzk()V

    .line 41
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzw;->zzo:Lcom/google/android/gms/internal/ads/zzak;

    invoke-interface {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzb(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzaj;)V

    .line 42
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Lcom/google/android/gms/internal/ads/zzaj;)V
    :try_end_6f
    .catch Lcom/google/android/gms/internal/ads/zzao; {:try_start_41 .. :try_end_6f} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_6f} :catch_75
    .catchall {:try_start_41 .. :try_end_6f} :catchall_73

    .line 43
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaa;->zzd(I)V

    return-void

    :catchall_73
    move-exception v1

    goto :goto_b3

    :catch_75
    move-exception v4

    :try_start_76
    const-string v5, "Unhandled exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 53
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzaq;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v5, Lcom/google/android/gms/internal/ads/zzao;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/zzao;-><init>(Ljava/lang/Throwable;)V

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzao;->zza(J)V

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzo:Lcom/google/android/gms/internal/ads/zzak;

    invoke-interface {v1, v0, v5}, Lcom/google/android/gms/internal/ads/zzak;->zza(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzao;)V

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->zzm()V
    :try_end_9a
    .catchall {:try_start_76 .. :try_end_9a} :catchall_73

    .line 58
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaa;->zzd(I)V

    return-void

    :catch_9e
    move-exception v4

    .line 46
    :try_start_9f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzao;->zza(J)V

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzo:Lcom/google/android/gms/internal/ads/zzak;

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzak;->zza(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzao;)V

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->zzm()V
    :try_end_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_73

    .line 50
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaa;->zzd(I)V

    return-void

    .line 60
    :goto_b3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaa;->zzd(I)V

    .line 61
    throw v1
.end method


# virtual methods
.method public final quit()V
    .registers 2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzp:Z

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzw;->interrupt()V

    return-void
.end method

.method public final run()V
    .registers 3

    const/16 v0, 0xa

    .line 11
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 12
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzw;->processRequest()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_5

    .line 15
    :catch_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzp:Z

    if-eqz v0, :cond_15

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
