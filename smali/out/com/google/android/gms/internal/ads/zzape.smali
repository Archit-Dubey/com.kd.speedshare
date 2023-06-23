.class final Lcom/google/android/gms/internal/ads/zzape;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
        "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
        "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdlb:Lcom/google/android/gms/internal/ads/zzaom;

.field private final synthetic zzdlc:Lcom/google/android/gms/internal/ads/zzamx;

.field private final synthetic zzdld:Lcom/google/android/gms/internal/ads/zzapc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapc;Lcom/google/android/gms/internal/ads/zzaom;Lcom/google/android/gms/internal/ads/zzamx;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzdld:Lcom/google/android/gms/internal/ads/zzapc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzape;->zzdlb:Lcom/google/android/gms/internal/ads/zzaom;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzape;->zzdlc:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;
    .registers 4

    const-string v0, ""

    if-nez p1, :cond_17

    const-string p1, "Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfd(Ljava/lang/String;)V

    .line 4
    :try_start_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzdlb:Lcom/google/android/gms/internal/ads/zzaom;

    const-string v1, "Adapter returned null."

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzaom;->zzdp(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p1

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzdld:Lcom/google/android/gms/internal/ads/zzapc;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzapc;->zza(Lcom/google/android/gms/internal/ads/zzapc;Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzdlb:Lcom/google/android/gms/internal/ads/zzaom;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaom;->zzuc()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_26
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzape;->zzdlc:Lcom/google/android/gms/internal/ads/zzamx;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzapi;-><init>(Lcom/google/android/gms/internal/ads/zzamx;)V

    return-object p1
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .registers 3

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzape;->zzdlb:Lcom/google/android/gms/internal/ads/zzaom;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaom;->zzdp(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 18
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 20
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzape;->zza(Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    move-result-object p1

    return-object p1
.end method
