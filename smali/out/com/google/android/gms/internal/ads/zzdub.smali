.class abstract Lcom/google/android/gms/internal/ads/zzdub;
.super Lcom/google/android/gms/internal/ads/zzdue;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdub$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdue<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdsr<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "+TInputT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private final zzhnu:Z

.field private final zzhnv:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 96
    const-class v0, Lcom/google/android/gms/internal/ads/zzdub;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdub;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsr;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdsr<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsr;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdue;-><init>(I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnu:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnv:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdub;Lcom/google/android/gms/internal/ads/zzdsr;)Lcom/google/android/gms/internal/ads/zzdsr;
    .registers 2

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    return-object p1
.end method

.method private final zza(ILjava/util/concurrent/Future;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    .line 59
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdux;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdub;->zzb(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_d
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception p1

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdub;->zzj(Ljava/lang/Throwable;)V

    return-void

    :catch_d
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdub;->zzj(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdsr;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/ads/zzdsr;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdsr<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdue;->zzawz()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_3a

    if-nez v0, :cond_39

    if-eqz p1, :cond_2e

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsr;->iterator()Ljava/util/Iterator;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtn;

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 76
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 77
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdub;->zza(ILjava/util/concurrent/Future;)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 80
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdue;->zzaxa()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdub;->zzawx()V

    .line 82
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdub$zza;->zzhnx:Lcom/google/android/gms/internal/ads/zzdub$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdub;->zza(Lcom/google/android/gms/internal/ads/zzdub$zza;)V

    :cond_39
    return-void

    .line 70
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Less than 0 remaining futures"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :goto_42
    throw p1

    :goto_43
    goto :goto_42
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdub;ILjava/util/concurrent/Future;)V
    .registers 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdub;->zza(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private static zza(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_f

    .line 88
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdub;Lcom/google/android/gms/internal/ads/zzdsr;)V
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdub;->zza(Lcom/google/android/gms/internal/ads/zzdsr;)V

    return-void
.end method

.method private final zzj(Ljava/lang/Throwable;)V
    .registers 3

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnu:Z

    if-eqz v0, :cond_1b

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtu;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdue;->zzawy()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdub;->zza(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdub;->zzk(Ljava/lang/Throwable;)V

    return-void

    .line 47
    :cond_1b
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_22

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdub;->zzk(Ljava/lang/Throwable;)V

    :cond_22
    return-void
.end method

.method private static zzk(Ljava/lang/Throwable;)V
    .registers 8

    .line 50
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_7

    const-string v0, "Input Future failed with Error"

    goto :goto_9

    :cond_7
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_9
    move-object v5, v0

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdub;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected final afterDone()V
    .registers 4

    .line 6
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdue;->afterDone()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdub$zza;->zzhnw:Lcom/google/android/gms/internal/ads/zzdub$zza;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdub;->zza(Lcom/google/android/gms/internal/ads/zzdub$zza;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdtu;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    and-int/2addr v1, v2

    if-eqz v1, :cond_30

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdtu;->wasInterrupted()Z

    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsr;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtn;

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 12
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_20

    :cond_30
    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    if-eqz v0, :cond_24

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "futures="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 18
    :cond_24
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdue;->pendingToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zza(Lcom/google/android/gms/internal/ads/zzdub$zza;)V
    .registers 2

    .line 84
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    return-void
.end method

.method final zzaww()V
    .registers 6

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdub;->zzawx()V

    return-void

    .line 22
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnu:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsr;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdtn;

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdvf;

    add-int/lit8 v3, v0, 0x1

    .line 26
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdua;

    invoke-direct {v4, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdua;-><init>(Lcom/google/android/gms/internal/ads/zzdub;Lcom/google/android/gms/internal/ads/zzdvf;I)V

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdum;->zzhoh:Lcom/google/android/gms/internal/ads/zzdum;

    .line 28
    invoke-interface {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzdvf;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v3

    goto :goto_19

    :cond_33
    return-void

    .line 31
    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnv:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    .line 32
    :goto_3c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzduc;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzduc;-><init>(Lcom/google/android/gms/internal/ads/zzdub;Lcom/google/android/gms/internal/ads/zzdsr;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdub;->zzhnt:Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsr;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtn;

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdvf;

    .line 35
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdum;->zzhoh:Lcom/google/android/gms/internal/ads/zzdum;

    .line 36
    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzdvf;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_49

    :cond_5b
    return-void
.end method

.method abstract zzawx()V
.end method

.method abstract zzb(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method final zzh(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdtu;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwa;->zzawt()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdub;->zza(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_10
    return-void
.end method
