.class final Lcom/google/android/gms/internal/ads/zzox;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/zzow;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private volatile zzafn:Z

.field private final zzbjc:Lcom/google/android/gms/internal/ads/zzow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzbjd:Lcom/google/android/gms/internal/ads/zzou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzou<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final zzbje:I

.field private final zzbjf:J

.field private zzbjg:Ljava/io/IOException;

.field private zzbjh:I

.field private volatile zzbji:Ljava/lang/Thread;

.field private final synthetic zzbjj:Lcom/google/android/gms/internal/ads/zzov;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzov;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzow;Lcom/google/android/gms/internal/ads/zzou;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/gms/internal/ads/zzou<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjj:Lcom/google/android/gms/internal/ads/zzov;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjd:Lcom/google/android/gms/internal/ads/zzou;

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbje:I

    .line 6
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjf:J

    return-void
.end method

.method private final execute()V
    .registers 3

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjg:Ljava/io/IOException;

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjj:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzov;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjj:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final finish()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjj:Lcom/google/android/gms/internal/ads/zzov;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;Lcom/google/android/gms/internal/ads/zzox;)Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzafn:Z

    if-eqz v0, :cond_5

    return-void

    .line 68
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzox;->execute()V

    return-void

    .line 71
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7d

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzox;->finish()V

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 75
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjf:J

    sub-long v6, v4, v0

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzow;->zzhw()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjd:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzou;->zza(Lcom/google/android/gms/internal/ads/zzow;JJZ)V

    return-void

    .line 79
    :cond_2e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_74

    const/4 v9, 0x2

    if-eq v0, v9, :cond_6c

    const/4 v10, 0x3

    if-eq v0, v10, :cond_3a

    goto :goto_6b

    .line 84
    :cond_3a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjg:Ljava/io/IOException;

    .line 85
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjd:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzou;->zza(Lcom/google/android/gms/internal/ads/zzow;JJLjava/io/IOException;)I

    move-result p1

    if-ne p1, v10, :cond_53

    .line 87
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjj:Lcom/google/android/gms/internal/ads/zzov;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjg:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    :cond_53
    if-eq p1, v9, :cond_6b

    if-ne p1, v1, :cond_59

    const/4 p1, 0x1

    goto :goto_5c

    .line 89
    :cond_59
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjh:I

    add-int/2addr p1, v1

    :goto_5c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjh:I

    sub-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    .line 91
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzox;->zzek(J)V

    :cond_6b
    :goto_6b
    return-void

    .line 82
    :cond_6c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjd:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzou;->zza(Lcom/google/android/gms/internal/ads/zzow;JJ)V

    return-void

    .line 80
    :cond_74
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjd:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzou;->zza(Lcom/google/android/gms/internal/ads/zzow;JJZ)V

    return-void

    .line 72
    :cond_7d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final run()V
    .registers 7

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 31
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbji:Ljava/lang/Thread;

    .line 32
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzow;->zzhw()Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "load:"

    .line 33
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_33

    :cond_2d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_33
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzpp;->beginSection(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_36} :catch_9f
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_36} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_36} :catch_5f
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_36} :catch_4c

    .line 34
    :try_start_36
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzow;->zzhx()V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3f

    .line 35
    :try_start_3b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpp;->endSection()V

    goto :goto_44

    :catchall_3f
    move-exception v3

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpp;->endSection()V

    .line 38
    throw v3

    .line 39
    :cond_44
    :goto_44
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzox;->zzafn:Z

    if-nez v3, :cond_4b

    .line 40
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzox;->sendEmptyMessage(I)Z
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4b} :catch_9f
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_4b} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4b} :catch_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3b .. :try_end_4b} :catch_5f
    .catch Ljava/lang/Error; {:try_start_3b .. :try_end_4b} :catch_4c

    :cond_4b
    return-void

    :catch_4c
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    .line 62
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzafn:Z

    if-nez v0, :cond_5e

    const/4 v0, 0x4

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzox;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 65
    :cond_5e
    throw v1

    :catch_5f
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    .line 57
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzafn:Z

    if-nez v0, :cond_75

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/zzoz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzoz;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzox;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_75
    return-void

    :catch_76
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    .line 52
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzafn:Z

    if-nez v0, :cond_8c

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/zzoz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzoz;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzox;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_8c
    return-void

    :catch_8d
    nop

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzow;->zzhw()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzafn:Z

    if-nez v0, :cond_9e

    .line 49
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzox;->sendEmptyMessage(I)Z

    :cond_9e
    return-void

    :catch_9f
    move-exception v0

    .line 43
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzox;->zzafn:Z

    if-nez v1, :cond_ab

    .line 44
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzox;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_ab
    return-void
.end method

.method public final zzbi(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjg:Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjh:I

    if-gt v1, p1, :cond_9

    goto :goto_a

    .line 9
    :cond_9
    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public final zzek(J)V
    .registers 7

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjj:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjj:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;Lcom/google/android/gms/internal/ads/zzox;)Lcom/google/android/gms/internal/ads/zzox;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1e

    .line 14
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzox;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 15
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzox;->execute()V

    return-void
.end method

.method public final zzl(Z)V
    .registers 10

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzox;->zzafn:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjg:Ljava/io/IOException;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzox;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzox;->removeMessages(I)V

    if-nez p1, :cond_24

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzox;->sendEmptyMessage(I)Z

    goto :goto_24

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzow;->cancelLoad()V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbji:Ljava/lang/Thread;

    if-eqz v0, :cond_24

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbji:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    :goto_24
    if-eqz p1, :cond_39

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzox;->finish()V

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjd:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjc:Lcom/google/android/gms/internal/ads/zzow;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzox;->zzbjf:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzou;->zza(Lcom/google/android/gms/internal/ads/zzow;JJZ)V

    :cond_39
    return-void
.end method
