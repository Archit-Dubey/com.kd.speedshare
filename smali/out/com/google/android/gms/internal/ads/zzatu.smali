.class public final Lcom/google/android/gms/internal/ads/zzatu;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lcom/google/android/gms/internal/ads/zzato;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator"

    .line 22
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzato;

    if-eqz v1, :cond_11

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/ads/zzato;

    return-object v0

    .line 25
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzatn;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzamr;)Lcom/google/android/gms/internal/ads/zzatj;
    .registers 6

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzatu;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzato;

    const v2, 0xc043ba0

    .line 6
    invoke-interface {p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzato;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzamr;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_15

    return-object v0

    :cond_15
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    .line 10
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 11
    instance-of v1, p2, Lcom/google/android/gms/internal/ads/zzatj;

    if-eqz v1, :cond_22

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/ads/zzatj;

    return-object p2

    .line 13
    :cond_22
    new-instance p2, Lcom/google/android/gms/internal/ads/zzatl;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzatl;-><init>(Landroid/os/IBinder;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_27} :catch_2a
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_1 .. :try_end_27} :catch_28

    return-object p2

    :catch_28
    move-exception p1

    goto :goto_2b

    :catch_2a
    move-exception p1

    :goto_2b
    const-string p2, "Could not get remote RewardedVideoAd."

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
