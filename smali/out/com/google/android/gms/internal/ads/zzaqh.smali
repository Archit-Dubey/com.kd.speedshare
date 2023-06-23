.class public abstract Lcom/google/android/gms/internal/ads/zzaqh;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqi;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzag(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaqi;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaqi;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqi;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqk;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_92

    const/4 p1, 0x0

    return p1

    .line 53
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqh;->zzad(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f

    .line 47
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 49
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzaqh;->onActivityResult(IILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    .line 43
    :pswitch_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqh;->zzul()Z

    move-result p1

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_8f

    .line 40
    :pswitch_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqh;->onBackPressed()V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    .line 37
    :pswitch_3e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqh;->zzdp()V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    .line 34
    :pswitch_45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqh;->onDestroy()V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    .line 31
    :pswitch_4c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqh;->onStop()V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    .line 26
    :pswitch_53
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqh;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_8f

    .line 23
    :pswitch_65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqh;->onPause()V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    .line 20
    :pswitch_6c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqh;->onResume()V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    .line 17
    :pswitch_73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqh;->onStart()V

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    .line 14
    :pswitch_7a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqh;->onRestart()V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    .line 10
    :pswitch_81
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqh;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_8f
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_65
        :pswitch_53
        :pswitch_4c
        :pswitch_45
        :pswitch_3e
        :pswitch_37
        :pswitch_2c
        :pswitch_15
        :pswitch_5
    .end packed-switch
.end method
