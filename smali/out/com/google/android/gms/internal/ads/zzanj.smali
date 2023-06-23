.class public abstract Lcom/google/android/gms/internal/ads/zzanj;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzang;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzae(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzang;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzang;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzani;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzani;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_134

    const/4 p1, 0x0

    return p1

    .line 103
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getVideoCurrentTime()F

    move-result p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_132

    .line 99
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getVideoDuration()F

    move-result p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_132

    .line 95
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getMediaContentAspectRatio()F

    move-result p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_132

    .line 91
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzanj;->zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_132

    .line 85
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p4

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 88
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzanj;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_132

    .line 81
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzanj;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_132

    .line 78
    :pswitch_69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->recordImpression()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_132

    .line 74
    :pswitch_71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getOverrideClickHandling()Z

    move-result p1

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_132

    .line 70
    :pswitch_7d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getOverrideImpressionRecording()Z

    move-result p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_132

    .line 66
    :pswitch_89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_132

    .line 62
    :pswitch_95
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->zzse()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_132

    .line 58
    :pswitch_a1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->zztw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_132

    .line 54
    :pswitch_ad
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->zztv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_132

    .line 50
    :pswitch_b9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->zzsd()Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_132

    .line 46
    :pswitch_c5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getVideoController()Lcom/google/android/gms/internal/ads/zzyi;

    move-result-object p1

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_132

    .line 42
    :pswitch_d0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getPrice()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_132

    .line 38
    :pswitch_db
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getStore()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_132

    .line 34
    :pswitch_e6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getStarRating()D

    move-result-wide p1

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_132

    .line 30
    :pswitch_f1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_132

    .line 26
    :pswitch_fc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_132

    .line 22
    :pswitch_107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->zzsc()Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_132

    .line 18
    :pswitch_112
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_132

    .line 14
    :pswitch_11d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getImages()Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_132

    .line 10
    :pswitch_128
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanj;->getHeadline()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_132
    const/4 p1, 0x1

    return p1

    :pswitch_data_134
    .packed-switch 0x2
        :pswitch_128
        :pswitch_11d
        :pswitch_112
        :pswitch_107
        :pswitch_fc
        :pswitch_f1
        :pswitch_e6
        :pswitch_db
        :pswitch_d0
        :pswitch_c5
        :pswitch_b9
        :pswitch_ad
        :pswitch_a1
        :pswitch_95
        :pswitch_89
        :pswitch_7d
        :pswitch_71
        :pswitch_69
        :pswitch_59
        :pswitch_39
        :pswitch_29
        :pswitch_1d
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method
