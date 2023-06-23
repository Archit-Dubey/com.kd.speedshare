.class abstract Lcom/google/android/gms/internal/ads/zzdve;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final zzhoq:Ljava/lang/Runnable;

.field private static final zzhor:Ljava/lang/Runnable;

.field private static final zzhos:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 81
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(Lcom/google/android/gms/internal/ads/zzdvd;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdve;->zzhoq:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(Lcom/google/android/gms/internal/ads/zzdvd;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdve;->zzhor:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(Lcom/google/android/gms/internal/ads/zzdvd;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdve;->zzhos:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method final interruptTask()V
    .registers 5

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdve;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 61
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdve;->zzhor:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdve;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 62
    :try_start_12
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_2a

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdve;->zzhoq:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdve;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 64
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdve;->zzhos:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_29

    .line 65
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_29
    return-void

    :catchall_2a
    move-exception v1

    .line 67
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdve;->zzhoq:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzdve;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 68
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdve;->zzhos:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_3c

    .line 69
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 70
    :cond_3c
    throw v1

    :cond_3d
    return-void
.end method

.method abstract isDone()Z
.end method

.method public final run()V
    .registers 12

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdve;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return-void

    .line 5
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdve;->isDone()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    if-eqz v2, :cond_6b

    .line 8
    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdve;->zzaxb()Ljava/lang/Object;

    move-result-object v6
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1c

    goto :goto_6c

    :catchall_1c
    move-exception v6

    .line 26
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdve;->zzhoq:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/ads/zzdve;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_65

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdve;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 30
    :goto_2d
    sget-object v10, Lcom/google/android/gms/internal/ads/zzdve;->zzhor:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_3c

    sget-object v10, Lcom/google/android/gms/internal/ads/zzdve;->zzhos:Ljava/lang/Runnable;

    if-ne v7, v10, :cond_36

    goto :goto_3c

    :cond_36
    if-eqz v8, :cond_65

    .line 39
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_65

    :cond_3c
    :goto_3c
    add-int/2addr v9, v3

    if-le v9, v4, :cond_5b

    .line 33
    sget-object v10, Lcom/google/android/gms/internal/ads/zzdve;->zzhos:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_4b

    sget-object v7, Lcom/google/android/gms/internal/ads/zzdve;->zzhor:Ljava/lang/Runnable;

    invoke-virtual {p0, v7, v10}, Lcom/google/android/gms/internal/ads/zzdve;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 34
    :cond_4b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_56

    if-eqz v8, :cond_54

    goto :goto_56

    :cond_54
    const/4 v8, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    const/4 v8, 0x1

    .line 35
    :goto_57
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_5e

    .line 36
    :cond_5b
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 37
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdve;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_2d

    :cond_65
    :goto_65
    if-eqz v2, :cond_b9

    .line 41
    invoke-virtual {p0, v1, v6}, Lcom/google/android/gms/internal/ads/zzdve;->zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_6b
    move-object v6, v1

    .line 9
    :goto_6c
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdve;->zzhoq:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/ads/zzdve;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b4

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdve;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 13
    :goto_7c
    sget-object v10, Lcom/google/android/gms/internal/ads/zzdve;->zzhor:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_8b

    sget-object v10, Lcom/google/android/gms/internal/ads/zzdve;->zzhos:Ljava/lang/Runnable;

    if-ne v7, v10, :cond_85

    goto :goto_8b

    :cond_85
    if-eqz v8, :cond_b4

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_b4

    :cond_8b
    :goto_8b
    add-int/2addr v9, v3

    if-le v9, v4, :cond_aa

    .line 16
    sget-object v10, Lcom/google/android/gms/internal/ads/zzdve;->zzhos:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_9a

    sget-object v7, Lcom/google/android/gms/internal/ads/zzdve;->zzhor:Ljava/lang/Runnable;

    invoke-virtual {p0, v7, v10}, Lcom/google/android/gms/internal/ads/zzdve;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 17
    :cond_9a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_a5

    if-eqz v8, :cond_a3

    goto :goto_a5

    :cond_a3
    const/4 v8, 0x0

    goto :goto_a6

    :cond_a5
    :goto_a5
    const/4 v8, 0x1

    .line 18
    :goto_a6
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_ad

    .line 19
    :cond_aa
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 20
    :cond_ad
    :goto_ad
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdve;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_7c

    :cond_b4
    :goto_b4
    if-eqz v2, :cond_b9

    .line 24
    invoke-virtual {p0, v6, v1}, Lcom/google/android/gms/internal/ads/zzdve;->zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b9
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdve;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 73
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdve;->zzhoq:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_d

    const-string v0, "running=[DONE]"

    goto :goto_41

    .line 75
    :cond_d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdve;->zzhor:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_14

    const-string v0, "running=[INTERRUPTED]"

    goto :goto_41

    .line 77
    :cond_14
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_3f

    .line 78
    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "running=[RUNNING ON "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_3f
    const-string v0, "running=[NOT STARTED YET]"

    .line 80
    :goto_41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdve;->zzaxc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract zzaxb()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract zzaxc()Ljava/lang/String;
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method
