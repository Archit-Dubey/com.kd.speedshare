.class public abstract Lcom/google/android/gms/internal/ads/zzse;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsf;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

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

    const/4 p4, 0x2

    if-eq p1, p4, :cond_2b

    const/4 p4, 0x3

    if-eq p1, p4, :cond_8

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p1, 0x0

    goto :goto_24

    :cond_10
    const-string p2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback"

    .line 11
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 12
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzsl;

    if-eqz p4, :cond_1e

    .line 13
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsl;

    goto :goto_24

    .line 14
    :cond_1e
    new-instance p2, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzsn;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 16
    :goto_24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzse;->zza(Lcom/google/android/gms/internal/ads/zzsl;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_35

    .line 4
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzse;->zzdv()Lcom/google/android/gms/internal/ads/zzww;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_35
    const/4 p1, 0x1

    return p1
.end method
