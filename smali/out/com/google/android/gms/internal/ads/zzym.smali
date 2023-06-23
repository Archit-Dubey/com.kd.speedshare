.class public abstract Lcom/google/android/gms/internal/ads/zzym;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyj;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

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

    if-eq p1, p4, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzym;->onVideoMute(Z)V

    goto :goto_28

    .line 10
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzym;->onVideoEnd()V

    goto :goto_28

    .line 8
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzym;->onVideoPause()V

    goto :goto_28

    .line 6
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzym;->onVideoPlay()V

    goto :goto_28

    .line 4
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzym;->onVideoStart()V

    .line 16
    :goto_28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
