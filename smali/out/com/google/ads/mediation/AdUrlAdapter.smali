.class public final Lcom/google/ads/mediation/AdUrlAdapter;
.super Lcom/google/ads/mediation/AbstractAdViewAdapter;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string p1, "adurl"

    return-object p1
.end method

.method protected final zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    if-eqz p1, :cond_3

    goto :goto_8

    .line 2
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_8
    const-string v0, "sdk_less_server_data"

    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    const-string v0, "_noRefresh"

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method
