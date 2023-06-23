.class public abstract Lcom/google/android/gms/internal/ads/zzauh;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaui;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaui;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaui;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaui;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzauk;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_128

    const/4 p1, 0x0

    return p1

    .line 85
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzve;

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_17

    goto :goto_28

    .line 89
    :cond_17
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 90
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzauq;

    if-eqz v0, :cond_23

    .line 91
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauq;

    goto :goto_28

    .line 92
    :cond_23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaus;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(Landroid/os/IBinder;)V

    .line 94
    :goto_28
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzauh;->zzb(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzauq;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 81
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyb;->zzi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauh;->zza(Lcom/google/android/gms/internal/ads/zzyc;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 77
    :pswitch_40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauh;->zzkj()Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_126

    .line 73
    :pswitch_4c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauh;->zzqv()Lcom/google/android/gms/internal/ads/zzaud;

    move-result-object p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_126

    .line 68
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;)Z

    move-result p2

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzauh;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 64
    :pswitch_6c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauh;->getAdMetadata()Landroid/os/Bundle;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_126

    .line 60
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzya;->zzh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzxx;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauh;->zza(Lcom/google/android/gms/internal/ads/zzxx;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 56
    :pswitch_88
    sget-object p1, Lcom/google/android/gms/internal/ads/zzauz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauz;

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauh;->zza(Lcom/google/android/gms/internal/ads/zzauz;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 45
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_9f

    goto :goto_b2

    :cond_9f
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener"

    .line 48
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 49
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzaur;

    if-eqz p4, :cond_ad

    .line 50
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaur;

    goto :goto_b2

    .line 51
    :cond_ad
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzauu;-><init>(Landroid/os/IBinder;)V

    .line 53
    :goto_b2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzauh;->zza(Lcom/google/android/gms/internal/ads/zzaur;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 41
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauh;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_126

    .line 37
    :pswitch_c9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauh;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_126

    .line 33
    :pswitch_d4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauh;->isLoaded()Z

    move-result p1

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_126

    .line 22
    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_e6

    goto :goto_f9

    :cond_e6
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    .line 25
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 26
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzauj;

    if-eqz p4, :cond_f4

    .line 27
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauj;

    goto :goto_f9

    .line 28
    :cond_f4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaul;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaul;-><init>(Landroid/os/IBinder;)V

    .line 30
    :goto_f9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzauh;->zza(Lcom/google/android/gms/internal/ads/zzauj;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_126

    .line 10
    :pswitch_100
    sget-object p1, Lcom/google/android/gms/internal/ads/zzve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzve;

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_10f

    goto :goto_120

    .line 14
    :cond_10f
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 15
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzauq;

    if-eqz v0, :cond_11b

    .line 16
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauq;

    goto :goto_120

    .line 17
    :cond_11b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaus;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(Landroid/os/IBinder;)V

    .line 19
    :goto_120
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzauh;->zza(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzauq;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_126
    const/4 p1, 0x1

    return p1

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_100
        :pswitch_df
        :pswitch_d4
        :pswitch_c9
        :pswitch_ba
        :pswitch_98
        :pswitch_88
        :pswitch_78
        :pswitch_6c
        :pswitch_58
        :pswitch_4c
        :pswitch_40
        :pswitch_30
        :pswitch_8
    .end packed-switch
.end method
