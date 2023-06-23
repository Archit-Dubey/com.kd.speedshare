.class public abstract Lcom/google/android/gms/internal/ads/zzyh;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyi;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzyi;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzyi;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzyi;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzyk;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_a6

    const/4 p1, 0x0

    return p1

    .line 63
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->stop()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a4

    .line 59
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->isClickToExpandEnabled()Z

    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_a4

    .line 55
    :pswitch_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->zzqi()Lcom/google/android/gms/internal/ads/zzyj;

    move-result-object p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_a4

    .line 51
    :pswitch_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->isCustomControlsEnabled()Z

    move-result p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_a4

    .line 47
    :pswitch_31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->getAspectRatio()F

    move-result p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a4

    .line 36
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_45

    const/4 p1, 0x0

    goto :goto_59

    :cond_45
    const-string p2, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    .line 39
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 40
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzyj;

    if-eqz p4, :cond_53

    .line 41
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyj;

    goto :goto_59

    .line 42
    :cond_53
    new-instance p2, Lcom/google/android/gms/internal/ads/zzyl;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzyl;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 44
    :goto_59
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzyh;->zza(Lcom/google/android/gms/internal/ads/zzyj;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a4

    .line 32
    :pswitch_60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->getCurrentTime()F

    move-result p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_a4

    .line 28
    :pswitch_6b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->getDuration()F

    move-result p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_a4

    .line 24
    :pswitch_76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->getPlaybackState()I

    move-result p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a4

    .line 20
    :pswitch_81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->isMuted()Z

    move-result p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_a4

    .line 16
    :pswitch_8c
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzyh;->mute(Z)V

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a4

    .line 13
    :pswitch_97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->pause()V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a4

    .line 10
    :pswitch_9e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyh;->play()V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_a4
    const/4 p1, 0x1

    return p1

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_97
        :pswitch_8c
        :pswitch_81
        :pswitch_76
        :pswitch_6b
        :pswitch_60
        :pswitch_3d
        :pswitch_31
        :pswitch_25
        :pswitch_19
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method
