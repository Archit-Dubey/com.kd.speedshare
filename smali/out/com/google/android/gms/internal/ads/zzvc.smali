.class public final Lcom/google/android/gms/internal/ads/zzvc;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lcom/google/android/gms/internal/ads/zzwx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    .line 22
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzwx;

    if-eqz v1, :cond_11

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/ads/zzwx;

    return-object v0

    .line 25
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamr;I)Lcom/google/android/gms/internal/ads/zzww;
    .registers 14

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzvc;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwx;

    const v6, 0xc043ba0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    .line 6
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzwx;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamr;II)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1a

    return-object v0

    :cond_1a
    const-string p2, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 10
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 11
    instance-of p3, p2, Lcom/google/android/gms/internal/ads/zzww;

    if-eqz p3, :cond_27

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/ads/zzww;

    return-object p2

    .line 13
    :cond_27
    new-instance p2, Lcom/google/android/gms/internal/ads/zzwy;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzwy;-><init>(Landroid/os/IBinder;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2c} :catch_2f
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_1 .. :try_end_2c} :catch_2d

    return-object p2

    :catch_2d
    move-exception p1

    goto :goto_30

    :catch_2f
    move-exception p1

    :goto_30
    const-string p2, "Could not create remote AdManager."

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
