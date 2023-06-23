.class public Lcom/google/android/gms/internal/ads/zzwf;
.super Lcom/google/android/gms/ads/AdListener;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzcik:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_c

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 9
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onAdFailedToLoad(I)V
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_c

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 13
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public onAdLeftApplication()V
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_c

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 17
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onAdLoaded()V
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_c

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 25
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onAdOpened()V
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_c

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 21
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzcik:Lcom/google/android/gms/ads/AdListener;

    .line 5
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method
