.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;
.super Lcom/google/android/gms/ads/AdListener;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;
.implements Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;
.implements Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zze"
.end annotation


# instance fields
.field private final zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field private final zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onAdClosed()V
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void
.end method

.method public final onAdImpression()V
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdImpression(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onAdLoaded()V
    .registers 1

    return-void
.end method

.method public final onAdOpened()V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .registers 5

    .line 18
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;-><init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    return-void
.end method

.method public final onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$zza;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zza;-><init>(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    return-void
.end method

.method public final onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V

    return-void
.end method

.method public final onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method

.method public final onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .registers 5

    .line 20
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzmv:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzms:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;-><init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-void
.end method
