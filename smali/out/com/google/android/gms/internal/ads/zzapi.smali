.class final Lcom/google/android/gms/internal/ads/zzapi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;


# instance fields
.field private zzdlh:Lcom/google/android/gms/internal/ads/zzamx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamx;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 2

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamx;->onAdClosed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onAdFailedToShow(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    const-string v0, "Mediated ad failed to show: "

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzfd(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzamx;->zzdn(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 2

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamx;->onAdLeftApplication()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onAdOpened()V
    .registers 2

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamx;->onAdOpened()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 4

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzave;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzave;-><init>(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzamx;->zza(Lcom/google/android/gms/internal/ads/zzaud;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public final onVideoComplete()V
    .registers 2

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamx;->onVideoEnd()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onVideoMute()V
    .registers 1

    return-void
.end method

.method public final onVideoPause()V
    .registers 1

    return-void
.end method

.method public final onVideoPlay()V
    .registers 2

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamx;->onVideoPlay()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onVideoStart()V
    .registers 2

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamx;->zztt()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onVideoUnmute()V
    .registers 1

    return-void
.end method

.method public final reportAdClicked()V
    .registers 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamx;->onAdClicked()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final reportAdImpression()V
    .registers 2

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapi;->zzdlh:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamx;->onAdImpression()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
