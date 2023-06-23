.class public Lcom/google/android/gms/ads/MobileAds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/MobileAds$Settings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableMediationAdapterInitialization(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzyt;->disableMediationAdapterInitialization(Landroid/content/Context;)V

    return-void
.end method

.method public static getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 1

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyt;->getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;
    .registers 1

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyt;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 2

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzyt;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionString()Ljava/lang/String;
    .registers 1

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyt;->getVersionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, v0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .registers 4

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzyt;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object p2

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzyt;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public static openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzyt;->openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static registerRtbAdapter(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzyt;->registerRtbAdapter(Ljava/lang/Class;)V

    return-void
.end method

.method public static setAppMuted(Z)V
    .registers 2

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzyt;->setAppMuted(Z)V

    return-void
.end method

.method public static setAppVolume(F)V
    .registers 2

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzyt;->setAppVolume(F)V

    return-void
.end method

.method public static setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .registers 2

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzqs()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzyt;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method
