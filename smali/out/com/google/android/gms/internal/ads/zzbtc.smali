.class public final Lcom/google/android/gms/internal/ads/zzbtc;
.super Lcom/google/android/gms/internal/ads/zzbwv;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbwv<",
        "Lcom/google/android/gms/internal/ads/zzbtd;",
        ">;"
    }
.end annotation


# instance fields
.field private zzfrt:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbyg<",
            "Lcom/google/android/gms/internal/ads/zzbtd;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbwv;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbtc;->zzfrt:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .registers 2

    monitor-enter p0

    .line 4
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtc;->zzfrt:Z

    if-nez v0, :cond_d

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbtb;->zzfrq:Lcom/google/android/gms/internal/ads/zzbwx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwv;->zza(Lcom/google/android/gms/internal/ads/zzbwx;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtc;->zzfrt:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 7
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
