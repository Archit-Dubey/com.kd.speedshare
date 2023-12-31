.class public final Lcom/google/android/gms/internal/ads/zzadm;
.super Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private text:Ljava/lang/String;

.field private final zzdbw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdch:Lcom/google/android/gms/internal/ads/zzadl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadl;)V
    .registers 6

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadm;->zzdbw:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadm;->zzdch:Lcom/google/android/gms/internal/ads/zzadl;

    .line 4
    :try_start_e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadl;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadm;->text:Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v1

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadm;->text:Ljava/lang/String;

    .line 9
    :goto_1b
    :try_start_1b
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadl;->zzrt()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_48

    .line 12
    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_48

    const-string v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 14
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 15
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzadt;

    if-eqz v3, :cond_42

    .line 16
    check-cast v2, Lcom/google/android/gms/internal/ads/zzadt;

    goto :goto_49

    .line 17
    :cond_42
    new-instance v2, Lcom/google/android/gms/internal/ads/zzadv;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzadv;-><init>(Landroid/os/IBinder;)V

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    if-eqz v2, :cond_23

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadm;->zzdbw:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadu;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Lcom/google/android/gms/internal/ads/zzadt;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_55} :catch_57

    goto :goto_23

    :cond_56
    return-void

    :catch_57
    move-exception p1

    .line 26
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadm;->zzdbw:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadm;->text:Ljava/lang/String;

    return-object v0
.end method
