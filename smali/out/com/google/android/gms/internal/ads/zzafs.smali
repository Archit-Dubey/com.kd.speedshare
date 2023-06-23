.class public abstract Lcom/google/android/gms/internal/ads/zzafs;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaft;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_194

    const/4 p1, 0x0

    return p1

    .line 128
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyb;->zzi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lcom/google/android/gms/internal/ads/zzyc;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_192

    .line 124
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->zzkj()Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object p1

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_192

    .line 120
    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->isCustomClickGestureEnabled()Z

    move-result p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_192

    .line 116
    :pswitch_2d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->zzsn()Lcom/google/android/gms/internal/ads/zzado;

    move-result-object p1

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_192

    .line 113
    :pswitch_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->recordCustomClickGesture()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_192

    .line 110
    :pswitch_41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->zzsm()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_192

    .line 106
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxs;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lcom/google/android/gms/internal/ads/zzxp;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_192

    .line 102
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxw;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lcom/google/android/gms/internal/ads/zzxt;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_192

    .line 98
    :pswitch_69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->isCustomMuteThisAdEnabled()Z

    move-result p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_192

    .line 94
    :pswitch_75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object p1

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_192

    .line 91
    :pswitch_81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->cancelUnconfirmedClick()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_192

    .line 80
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_91

    const/4 p1, 0x0

    goto :goto_a5

    :cond_91
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    .line 83
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 84
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzafo;

    if-eqz p4, :cond_9f

    .line 85
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzafo;

    goto :goto_a5

    .line 86
    :cond_9f
    new-instance p2, Lcom/google/android/gms/internal/ads/zzafq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzafq;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 88
    :goto_a5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lcom/google/android/gms/internal/ads/zzafo;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_192

    .line 76
    :pswitch_ad
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_192

    .line 72
    :pswitch_b9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->zzse()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_192

    .line 68
    :pswitch_c5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->zzsb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_192

    .line 64
    :pswitch_d1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzafs;->reportTouchEvent(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_192

    .line 59
    :pswitch_e1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzafs;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_192

    .line 55
    :pswitch_f5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzafs;->performClick(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_192

    .line 51
    :pswitch_105
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->zzsd()Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_192

    .line 48
    :pswitch_111
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->destroy()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_192

    .line 44
    :pswitch_119
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_192

    .line 40
    :pswitch_125
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getVideoController()Lcom/google/android/gms/internal/ads/zzyi;

    move-result-object p1

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_192

    .line 36
    :pswitch_130
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getPrice()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_192

    .line 32
    :pswitch_13b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getStore()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_192

    .line 28
    :pswitch_146
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getStarRating()D

    move-result-wide p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_192

    .line 24
    :pswitch_151
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_192

    .line 20
    :pswitch_15c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_192

    .line 16
    :pswitch_167
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->zzsc()Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_192

    .line 12
    :pswitch_172
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_192

    .line 8
    :pswitch_17d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getImages()Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_192

    .line 4
    :pswitch_188
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafs;->getHeadline()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_192
    const/4 p1, 0x1

    return p1

    :pswitch_data_194
    .packed-switch 0x2
        :pswitch_188
        :pswitch_17d
        :pswitch_172
        :pswitch_167
        :pswitch_15c
        :pswitch_151
        :pswitch_146
        :pswitch_13b
        :pswitch_130
        :pswitch_125
        :pswitch_119
        :pswitch_111
        :pswitch_105
        :pswitch_f5
        :pswitch_e1
        :pswitch_d1
        :pswitch_c5
        :pswitch_b9
        :pswitch_ad
        :pswitch_89
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_59
        :pswitch_49
        :pswitch_41
        :pswitch_39
        :pswitch_2d
        :pswitch_21
        :pswitch_15
        :pswitch_5
    .end packed-switch
.end method
