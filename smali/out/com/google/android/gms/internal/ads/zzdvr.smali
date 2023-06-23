.class final Lcom/google/android/gms/internal/ads/zzdvr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private zzhpe:Lcom/google/android/gms/internal/ads/zzdvp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdvp<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdvp;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdvp<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhpe:Lcom/google/android/gms/internal/ads/zzdvp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhpe:Lcom/google/android/gms/internal/ads/zzdvp;

    if-nez v0, :cond_5

    return-void

    .line 7
    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvp;->zza(Lcom/google/android/gms/internal/ads/zzdvp;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhpe:Lcom/google/android/gms/internal/ads/zzdvp;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdvf;->isDone()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtu;->setFuture(Lcom/google/android/gms/internal/ads/zzdvf;)Z

    return-void

    :cond_19
    const/4 v3, 0x1

    .line 13
    :try_start_1a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvp;->zzb(Lcom/google/android/gms/internal/ads/zzdvp;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    .line 14
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdvp;->zza(Lcom/google/android/gms/internal/ads/zzdvp;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    const-string v5, "Timed out"
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_9a

    if-eqz v4, :cond_55

    .line 17
    :try_start_25
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0xa

    cmp-long v4, v6, v8

    if-lez v4, :cond_55

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x42

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (timeout delayed by "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms after scheduled time)"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 20
    :cond_55
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_84
    .catchall {:try_start_25 .. :try_end_84} :catchall_90

    .line 21
    :try_start_84
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdvu;

    invoke-direct {v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzdvu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdvs;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzdtu;->setException(Ljava/lang/Throwable;)Z
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_9a

    .line 25
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzdvf;->cancel(Z)Z

    return-void

    :catchall_90
    move-exception v4

    .line 23
    :try_start_91
    new-instance v6, Lcom/google/android/gms/internal/ads/zzdvu;

    invoke-direct {v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzdvu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdvs;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzdtu;->setException(Ljava/lang/Throwable;)Z

    .line 24
    throw v4
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v0

    .line 27
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzdvf;->cancel(Z)Z

    .line 28
    throw v0
.end method
