.class public abstract Lcom/google/android/gms/internal/ads/zzane;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanf;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper"

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

    packed-switch p1, :pswitch_data_fc

    :pswitch_3
    const/4 p1, 0x0

    return p1

    .line 75
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p4

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 78
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_fa

    .line 71
    :pswitch_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->zzse()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_fa

    .line 67
    :pswitch_31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->zztw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_fa

    .line 63
    :pswitch_3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->zzsd()Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_fa

    .line 59
    :pswitch_49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->getVideoController()Lcom/google/android/gms/internal/ads/zzyi;

    move-result-object p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_fa

    .line 55
    :pswitch_55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->zztv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_fa

    .line 51
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_fa

    .line 47
    :pswitch_71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_fa

    .line 43
    :pswitch_7d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->getOverrideClickHandling()Z

    move-result p1

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_fa

    .line 39
    :pswitch_89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->getOverrideImpressionRecording()Z

    move-result p1

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_fa

    .line 35
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzv(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_fa

    .line 31
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_fa

    .line 28
    :pswitch_b2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->recordImpression()V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_fa

    .line 24
    :pswitch_b9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_fa

    .line 20
    :pswitch_c4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_fa

    .line 16
    :pswitch_cf
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->zzsf()Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_fa

    .line 12
    :pswitch_da
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_fa

    .line 8
    :pswitch_e5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->getImages()Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_fa

    .line 4
    :pswitch_f0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzane;->getHeadline()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_fa
    const/4 p1, 0x1

    return p1

    :pswitch_data_fc
    .packed-switch 0x2
        :pswitch_f0
        :pswitch_e5
        :pswitch_da
        :pswitch_cf
        :pswitch_c4
        :pswitch_b9
        :pswitch_b2
        :pswitch_a3
        :pswitch_94
        :pswitch_89
        :pswitch_7d
        :pswitch_71
        :pswitch_61
        :pswitch_55
        :pswitch_49
        :pswitch_3
        :pswitch_3
        :pswitch_3d
        :pswitch_31
        :pswitch_25
        :pswitch_5
    .end packed-switch
.end method
