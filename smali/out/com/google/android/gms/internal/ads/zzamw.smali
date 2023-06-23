.class public abstract Lcom/google/android/gms/internal/ads/zzamw;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamx;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzamx;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzamx;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzamx;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzamz;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_cc

    const/4 p1, 0x0

    return p1

    .line 71
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamw;->zzc(ILjava/lang/String;)V

    goto/16 :goto_c6

    .line 68
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamw;->zzdn(Ljava/lang/String;)V

    goto/16 :goto_c6

    .line 66
    :pswitch_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->onVideoPlay()V

    goto/16 :goto_c6

    .line 63
    :pswitch_20
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamw;->zzb(Landroid/os/Bundle;)V

    goto/16 :goto_c6

    .line 61
    :pswitch_2d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zztu()V

    goto/16 :goto_c6

    .line 58
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamw;->zzdc(I)V

    goto/16 :goto_c6

    .line 55
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzao(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaud;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamw;->zza(Lcom/google/android/gms/internal/ads/zzaud;)V

    goto/16 :goto_c6

    .line 53
    :pswitch_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->onVideoPause()V

    goto/16 :goto_c6

    .line 50
    :pswitch_4d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaub;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaub;

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamw;->zzb(Lcom/google/android/gms/internal/ads/zzaub;)V

    goto/16 :goto_c6

    .line 48
    :pswitch_5a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zztt()V

    goto/16 :goto_c6

    .line 45
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamw;->zzdm(Ljava/lang/String;)V

    goto :goto_c6

    .line 43
    :pswitch_67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->onVideoEnd()V

    goto :goto_c6

    .line 39
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaeo;->zzr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaep;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamw;->zza(Lcom/google/android/gms/internal/ads/zzaep;Ljava/lang/String;)V

    goto :goto_c6

    .line 35
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamw;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    .line 33
    :pswitch_87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->onAdImpression()V

    goto :goto_c6

    .line 23
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_93

    const/4 p1, 0x0

    goto :goto_a7

    :cond_93
    const-string p2, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    .line 26
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 27
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzamy;

    if-eqz p4, :cond_a1

    .line 28
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzamy;

    goto :goto_a7

    .line 29
    :cond_a1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzanb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 31
    :goto_a7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamw;->zza(Lcom/google/android/gms/internal/ads/zzamy;)V

    goto :goto_c6

    .line 21
    :pswitch_ab
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->onAdLoaded()V

    goto :goto_c6

    .line 19
    :pswitch_af
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->onAdOpened()V

    goto :goto_c6

    .line 17
    :pswitch_b3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->onAdLeftApplication()V

    goto :goto_c6

    .line 14
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamw;->onAdFailedToLoad(I)V

    goto :goto_c6

    .line 12
    :pswitch_bf
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->onAdClosed()V

    goto :goto_c6

    .line 10
    :pswitch_c3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->onAdClicked()V

    .line 76
    :goto_c6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_bf
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_8b
        :pswitch_87
        :pswitch_7b
        :pswitch_6b
        :pswitch_67
        :pswitch_5f
        :pswitch_5a
        :pswitch_4d
        :pswitch_48
        :pswitch_3b
        :pswitch_32
        :pswitch_2d
        :pswitch_20
        :pswitch_1b
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method
