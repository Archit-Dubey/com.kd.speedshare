.class public final Lcom/google/android/gms/internal/ads/zzdll;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzgad:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzhbk:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final zzhbl:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzdvi;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/zzdvi;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdll;->zzhbk:Ljava/util/Deque;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdll;->zzhbl:Ljava/util/concurrent/Callable;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdll;->zzgad:Lcom/google/android/gms/internal/ads/zzdvi;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzass()Lcom/google/android/gms/internal/ads/zzdvf;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 11
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdll;->zzeb(I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdll;->zzhbk:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdvf;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzdvf;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdll;->zzhbk:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 14
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzeb(I)V
    .registers 6

    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdll;->zzhbk:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdll;->zzhbk:Ljava/util/Deque;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdll;->zzgad:Lcom/google/android/gms/internal/ads/zzdvi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdll;->zzhbl:Ljava/util/concurrent/Callable;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzdvi;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 10
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    goto :goto_21

    :goto_20
    throw p1

    :goto_21
    goto :goto_20
.end method
