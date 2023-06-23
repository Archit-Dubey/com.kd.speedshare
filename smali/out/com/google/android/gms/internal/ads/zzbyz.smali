.class public final Lcom/google/android/gms/internal/ads/zzbyz;
.super Lcom/google/android/gms/internal/ads/zzbwv;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbwv<",
        "Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field private zzeom:Z


# direct methods
.method protected constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbyg<",
            "Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbwv;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .registers 2

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzb;->zzfrq:Lcom/google/android/gms/internal/ads/zzbwx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwv;->zza(Lcom/google/android/gms/internal/ads/zzbwx;)V

    return-void
.end method

.method public final onVideoPause()V
    .registers 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyy;->zzfrq:Lcom/google/android/gms/internal/ads/zzbwx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwv;->zza(Lcom/google/android/gms/internal/ads/zzbwx;)V

    return-void
.end method

.method public final declared-synchronized onVideoPlay()V
    .registers 2

    monitor-enter p0

    .line 10
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzeom:Z

    if-nez v0, :cond_d

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzd;->zzfrq:Lcom/google/android/gms/internal/ads/zzbwx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwv;->zza(Lcom/google/android/gms/internal/ads/zzbwx;)V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzeom:Z

    .line 13
    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzc;->zzfrq:Lcom/google/android/gms/internal/ads/zzbwx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwv;->zza(Lcom/google/android/gms/internal/ads/zzbwx;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 14
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onVideoStart()V
    .registers 2

    monitor-enter p0

    .line 7
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbza;->zzfrq:Lcom/google/android/gms/internal/ads/zzbwx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwv;->zza(Lcom/google/android/gms/internal/ads/zzbwx;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzeom:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
