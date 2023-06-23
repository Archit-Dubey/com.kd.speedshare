.class public final Lcom/google/android/gms/internal/ads/zzano;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerListener;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeListener;


# instance fields
.field private final zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

.field private zzdkg:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

.field private zzdkh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

.field private zzdki:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamx;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V
    .registers 4

    .line 115
    instance-of p0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p0, :cond_5

    return-void

    .line 117
    :cond_5
    new-instance p0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    .line 118
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzyi;)V

    if-eqz p1, :cond_1d

    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->hasVideoContent()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 120
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zza(Lcom/google/android/gms/ads/VideoController;)V

    :cond_1d
    if-eqz p2, :cond_28

    .line 121
    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->hasVideoContent()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 122
    invoke-virtual {p2, p0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->zza(Lcom/google/android/gms/ads/VideoController;)V

    :cond_28
    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 13
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdClicked()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 16
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 55
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdClicked()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 58
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClicked(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    .line 170
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkg:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 178
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdki:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_32

    if-nez p1, :cond_18

    if-nez v0, :cond_18

    const/4 p1, 0x0

    .line 182
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_18
    const-string v1, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    if-eqz v0, :cond_26

    .line 184
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_26

    .line 185
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    return-void

    :cond_26
    if-eqz p1, :cond_32

    .line 187
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideClickHandling()Z

    move-result p1

    if-nez p1, :cond_32

    .line 188
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    return-void

    :cond_32
    const-string p1, "Adapter called onAdClicked."

    .line 190
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 191
    :try_start_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdClicked()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    .line 194
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 20
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 62
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 65
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 156
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    .line 157
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 158
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 161
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 27
    :try_start_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzamx;->onAdFailedToLoad(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 30
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 69
    :try_start_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzamx;->onAdFailedToLoad(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 72
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    .line 142
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 144
    :try_start_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzamx;->onAdFailedToLoad(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 147
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdImpression(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    .line 196
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkg:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 204
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdki:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_32

    if-nez p1, :cond_18

    if-nez v0, :cond_18

    const/4 p1, 0x0

    .line 208
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_18
    const-string v1, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    if-eqz v0, :cond_26

    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_26

    .line 211
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    return-void

    :cond_26
    if-eqz p1, :cond_32

    .line 213
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_32

    .line 214
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    return-void

    :cond_32
    const-string p1, "Adapter called onAdImpression."

    .line 216
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 217
    :try_start_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdImpression()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    .line 220
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 34
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdLeftApplication()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 37
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 74
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 76
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdLeftApplication()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 79
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 163
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    .line 164
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 165
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdLeftApplication()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 168
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 48
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdLoaded()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 51
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 88
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 90
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdLoaded()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 93
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    .line 95
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    .line 96
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 97
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkg:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 99
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzano;->zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    .line 100
    :try_start_12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdLoaded()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 103
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    .line 106
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 107
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkg:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    .line 109
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzano;->zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    .line 110
    :try_start_12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdLoaded()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 113
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 41
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 44
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 83
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 86
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 149
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    .line 150
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 151
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 154
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoEnd(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 222
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onVideoEnd."

    .line 223
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 224
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onVideoEnd()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 227
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAppEvent."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 6
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamx;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    .line 124
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 125
    invoke-interface {p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Adapter called onAdLoaded with template id "

    if-eqz v0, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    :cond_1a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 126
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdki:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    .line 127
    :try_start_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzamx;->onAdLoaded()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 130
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V
    .registers 4

    .line 132
    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzaeq;

    if-eqz p1, :cond_17

    .line 133
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkf:Lcom/google/android/gms/internal/ads/zzamx;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaeq;

    .line 134
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaeq;->zzsk()Lcom/google/android/gms/internal/ads/zzaep;

    move-result-object p2

    .line 135
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamx;->zza(Lcom/google/android/gms/internal/ads/zzaep;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 138
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    const-string p1, "Unexpected native custom template ad type."

    .line 140
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zztx()Lcom/google/android/gms/ads/mediation/NativeAdMapper;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkg:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    return-object v0
.end method

.method public final zzty()Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdkh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    return-object v0
.end method

.method public final zztz()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzano;->zzdki:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    return-object v0
.end method
