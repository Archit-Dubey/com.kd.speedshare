.class public abstract Lcom/google/ads/mediation/AbstractAdViewAdapter;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;
.implements Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;
.implements Lcom/google/android/gms/ads/mediation/zza;
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/google/android/gms/internal/ads/zzbic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zza;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zzf;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zzc;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID_PARAMETER:Ljava/lang/String; = "pubid"


# instance fields
.field private zzmi:Lcom/google/android/gms/ads/AdView;

.field private zzmj:Lcom/google/android/gms/ads/InterstitialAd;

.field private zzmk:Lcom/google/android/gms/ads/AdLoader;

.field private zzml:Landroid/content/Context;

.field private zzmm:Lcom/google/android/gms/ads/InterstitialAd;

.field private zzmn:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

.field private final zzmo:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/ads/mediation/zzb;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/zzb;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmo:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method

.method private final zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;
    .registers 8

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 7
    :cond_e
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v1

    if-eqz v1, :cond_17

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 10
    :cond_17
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_21

    .line 15
    :cond_31
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 18
    :cond_3a
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 20
    :cond_4a
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->taggedForChildDirectedTreatment()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5d

    .line 22
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->taggedForChildDirectedTreatment()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    .line 23
    :goto_5a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 24
    :cond_5d
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isDesignedForFamilies()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 25
    invoke-virtual {p0, p3, p4}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 26
    const-class p2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 2

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmn:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p0
.end method


# virtual methods
.method public getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const-string v0, "pubid"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmi:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public getInterstitialAdapterInfo()Landroid/os/Bundle;
    .registers 3

    .line 69
    new-instance v0, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;-><init>()V

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;->zzdt(I)Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;->zzacx()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/internal/ads/zzyi;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmi:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_f

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->zzdu()Lcom/google/android/gms/internal/ads/zzyi;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzml:Landroid/content/Context;

    .line 101
    iput-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmn:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    .line 102
    invoke-interface {p4, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmn:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzml:Landroid/content/Context;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmn:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-nez v0, :cond_9

    goto :goto_3c

    .line 107
    :cond_9
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzml:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->zzd(Z)V

    .line 109
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmo:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 111
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/ads/mediation/zza;

    invoke-direct {v1, p0}, Lcom/google/ads/mediation/zza;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdMetadataListener(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    .line 112
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzml:Landroid/content/Context;

    .line 113
    invoke-direct {p0, v1, p1, p3, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    .line 114
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void

    :cond_3c
    :goto_3c
    const-string p1, "AdMobAdapter.loadAd called before initialize."

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfb(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmi:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 30
    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmi:Lcom/google/android/gms/ads/AdView;

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmj:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_10

    .line 32
    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmj:Lcom/google/android/gms/ads/InterstitialAd;

    .line 33
    :cond_10
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmk:Lcom/google/android/gms/ads/AdLoader;

    if-eqz v0, :cond_16

    .line 34
    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmk:Lcom/google/android/gms/ads/AdLoader;

    .line 35
    :cond_16
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_1c

    .line 36
    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    :cond_1c
    return-void
.end method

.method public onImmersiveModeUpdated(Z)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmj:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_7

    .line 58
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setImmersiveMode(Z)V

    .line 59
    :cond_7
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_e

    .line 60
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setImmersiveMode(Z)V

    :cond_e
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmi:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmi:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_7

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    :cond_7
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 10

    .line 45
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmi:Lcom/google/android/gms/ads/AdView;

    .line 46
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p4

    invoke-direct {v1, v2, p4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 47
    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmi:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 48
    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmi:Lcom/google/android/gms/ads/AdView;

    new-instance v0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzc;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzc;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V

    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 49
    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmi:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0, p1, p5, p6, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 8

    .line 52
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmj:Lcom/google/android/gms/ads/InterstitialAd;

    .line 53
    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmj:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzf;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzf;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 55
    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmj:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .registers 10

    .line 73
    new-instance v0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;)V

    const-string p2, "pubid"

    .line 75
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 76
    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p2

    .line 79
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 81
    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 82
    :cond_1d
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isUnifiedNativeAdRequested()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 83
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 84
    :cond_26
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isAppInstallAdRequested()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 85
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 86
    :cond_2f
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isContentAdRequested()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 87
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 88
    :cond_38
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->zzua()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 89
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->zzub()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->zzub()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_68

    move-object v3, v0

    goto :goto_69

    :cond_68
    const/4 v3, 0x0

    .line 95
    :goto_69
    invoke-virtual {p2, v2, v0, v3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forCustomTemplateAd(Ljava/lang/String;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    goto :goto_4a

    .line 97
    :cond_6d
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmk:Lcom/google/android/gms/ads/AdLoader;

    .line 98
    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public showInterstitial()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmj:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    return-void
.end method

.method public showVideo()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmm:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    return-void
.end method

.method protected abstract zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
