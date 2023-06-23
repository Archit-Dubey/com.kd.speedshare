.class public abstract Lcom/google/android/gms/internal/ads/zzatp;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatq;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzam(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzatq;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzatq;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzatq;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzats;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzats;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_4a

    const/4 p1, 0x0

    return p1

    .line 33
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzatp;->onRewardedVideoCompleted()V

    goto :goto_44

    .line 30
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzatp;->onRewardedVideoAdFailedToLoad(I)V

    goto :goto_44

    .line 28
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzatp;->onRewardedVideoAdLeftApplication()V

    goto :goto_44

    .line 18
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1d

    const/4 p1, 0x0

    goto :goto_31

    :cond_1d
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardItem"

    .line 21
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 22
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzatg;

    if-eqz p4, :cond_2b

    .line 23
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatg;

    goto :goto_31

    .line 24
    :cond_2b
    new-instance p2, Lcom/google/android/gms/internal/ads/zzati;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzati;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 26
    :goto_31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzatp;->zza(Lcom/google/android/gms/internal/ads/zzatg;)V

    goto :goto_44

    .line 16
    :pswitch_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzatp;->onRewardedVideoAdClosed()V

    goto :goto_44

    .line 14
    :pswitch_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzatp;->onRewardedVideoStarted()V

    goto :goto_44

    .line 12
    :pswitch_3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzatp;->onRewardedVideoAdOpened()V

    goto :goto_44

    .line 10
    :pswitch_41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzatp;->onRewardedVideoAdLoaded()V

    .line 36
    :goto_44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_15
        :pswitch_11
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method
