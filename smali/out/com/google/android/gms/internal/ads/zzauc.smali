.class public final Lcom/google/android/gms/internal/ads/zzauc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;


# instance fields
.field private final zzdut:Lcom/google/android/gms/internal/ads/zzatx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatx;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClicked."

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 57
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatx;->zzak(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 60
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 41
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatx;->zzaj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 44
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdFailedToLoad."

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 64
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzatx;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 67
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLeftApplication."

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 71
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatx;->zzal(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 74
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 20
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatx;->zzag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 27
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatx;->zzah(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 30
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitializationFailed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onInitializationFailed."

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 13
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzatx;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onInitializationSucceeded."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 6
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatx;->zzaf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onRewarded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V
    .registers 6

    const-string v0, "#008 Must be called on the main UI thread."

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onRewarded."

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    if-eqz p2, :cond_1b

    .line 49
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaub;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzaub;-><init>(Lcom/google/android/gms/ads/reward/RewardItem;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzatx;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaub;)V

    return-void

    .line 50
    :cond_1b
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaub;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaub;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzatx;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaub;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 53
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoCompleted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoCompleted."

    .line 77
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 78
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatx;->zzam(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 81
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoStarted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoStarted."

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 34
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatx;->zzai(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 37
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdMetadataChanged."

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzee(Ljava/lang/String;)V

    .line 85
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->zzdut:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatx;->zzb(Landroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 88
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
