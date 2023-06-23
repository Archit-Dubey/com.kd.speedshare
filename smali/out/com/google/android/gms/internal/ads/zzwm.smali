.class public abstract Lcom/google/android/gms/internal/ads/zzwm;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwj;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"

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

    packed-switch p1, :pswitch_data_36

    const/4 p1, 0x0

    return p1

    .line 19
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzuy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzuy;

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwm;->zza(Lcom/google/android/gms/internal/ads/zzuy;)V

    goto :goto_30

    .line 17
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwm;->onAdImpression()V

    goto :goto_30

    .line 15
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwm;->onAdClicked()V

    goto :goto_30

    .line 13
    :pswitch_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwm;->onAdOpened()V

    goto :goto_30

    .line 11
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwm;->onAdLoaded()V

    goto :goto_30

    .line 9
    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwm;->onAdLeftApplication()V

    goto :goto_30

    .line 6
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwm;->onAdFailedToLoad(I)V

    goto :goto_30

    .line 4
    :pswitch_2d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwm;->onAdClosed()V

    .line 23
    :goto_30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method
