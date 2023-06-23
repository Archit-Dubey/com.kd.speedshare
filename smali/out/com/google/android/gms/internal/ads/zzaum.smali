.class public abstract Lcom/google/android/gms/internal/ads/zzaum;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzauj;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_49

    const/4 v0, 0x2

    if-eq p1, v0, :cond_45

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 21
    :cond_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzuy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzuy;

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaum;->zzb(Lcom/google/android/gms/internal/ads/zzuy;)V

    goto :goto_4c

    .line 18
    :cond_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaum;->onRewardedAdFailedToShow(I)V

    goto :goto_4c

    .line 8
    :cond_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2d

    const/4 p1, 0x0

    goto :goto_41

    :cond_2d
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem"

    .line 11
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 12
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzaud;

    if-eqz v0, :cond_3b

    .line 13
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaud;

    goto :goto_41

    .line 14
    :cond_3b
    new-instance p2, Lcom/google/android/gms/internal/ads/zzauf;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 16
    :goto_41
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaum;->zza(Lcom/google/android/gms/internal/ads/zzaud;)V

    goto :goto_4c

    .line 6
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaum;->onRewardedAdClosed()V

    goto :goto_4c

    .line 4
    :cond_49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaum;->onRewardedAdOpened()V

    .line 25
    :goto_4c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
