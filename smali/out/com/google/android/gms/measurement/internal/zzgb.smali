.class final Lcom/google/android/gms/measurement/internal/zzgb;
.super Ljava/util/concurrent/FutureTask;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/measurement/internal/zzgb<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final zza:Z

.field private final zzb:J

.field private final zzc:Ljava/lang/String;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzfw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfw;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .registers 7

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzd:Lcom/google/android/gms/measurement/internal/zzfw;

    const/4 p3, 0x0

    .line 11
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 12
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfw;->zzh()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzb:J

    .line 14
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Ljava/lang/String;

    const/4 p4, 0x0

    .line 15
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zza:Z

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p4, p2, v0

    if-nez p4, :cond_2e

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfw;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzd:Lcom/google/android/gms/measurement/internal/zzfw;

    .line 2
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfw;->zzh()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzb:J

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zza:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p4, v0, p2

    if-nez p4, :cond_2c

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 8

    .line 25
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzgb;

    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zza:Z

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzgb;->zza:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_e

    if-eqz v0, :cond_d

    return v3

    :cond_d
    return v2

    .line 28
    :cond_e
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzb:J

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzgb;->zzb:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_17

    return v3

    :cond_17
    cmp-long p1, v0, v4

    if-lez p1, :cond_1c

    return v2

    .line 32
    :cond_1c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzd:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzg()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzb:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Two tasks share the same index. index"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected final setException(Ljava/lang/Throwable;)V
    .registers 4

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzd:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzfz;

    if-eqz v0, :cond_1e

    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 23
    :cond_1e
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
