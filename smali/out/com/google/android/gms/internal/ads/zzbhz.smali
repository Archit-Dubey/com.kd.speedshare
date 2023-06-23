.class public abstract Lcom/google/android/gms/internal/ads/zzbhz;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbia;


# direct methods
.method public static zzas(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbia;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.measurement.IMeasurementManager"

    .line 3
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbia;

    if-eqz v1, :cond_11

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbia;

    return-object v0

    .line 6
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbib;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbib;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
