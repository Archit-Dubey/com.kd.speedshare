.class public final Lcom/google/android/gms/internal/ads/zzatt;
.super Lcom/google/android/gms/internal/ads/zzatp;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatp;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method


# virtual methods
.method public final getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-object v0
.end method

.method public final onRewardedVideoAdClosed()V
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdClosed()V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoAdFailedToLoad(I)V
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 23
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdFailedToLoad(I)V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLeftApplication()V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoAdLoaded()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLoaded()V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdOpened()V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoStarted()V

    :cond_7
    return-void
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzatg;)V
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzcjv:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_c

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzatr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzatr;-><init>(Lcom/google/android/gms/internal/ads/zzatg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V

    :cond_c
    return-void
.end method
