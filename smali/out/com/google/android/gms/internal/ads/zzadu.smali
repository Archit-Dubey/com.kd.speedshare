.class public final Lcom/google/android/gms/internal/ads/zzadu;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private final height:I

.field private final uri:Landroid/net/Uri;

.field private final width:I

.field private final zzdce:D

.field private final zzdcj:Lcom/google/android/gms/internal/ads/zzadt;

.field private final zzdck:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadt;)V
    .registers 5

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadu;->zzdcj:Lcom/google/android/gms/internal/ads/zzadt;

    const/4 v1, 0x0

    .line 4
    :try_start_8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadt;->zzry()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception p1

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    move-object p1, v1

    .line 10
    :goto_1a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadu;->zzdck:Landroid/graphics/drawable/Drawable;

    .line 12
    :try_start_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadu;->zzdcj:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadt;->getUri()Landroid/net/Uri;

    move-result-object v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    .line 15
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadu;->uri:Landroid/net/Uri;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 18
    :try_start_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadu;->zzdcj:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadt;->getScale()D

    move-result-wide v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :goto_36
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzadu;->zzdce:D

    const/4 p1, -0x1

    .line 24
    :try_start_39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadu;->zzdcj:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadt;->getWidth()I

    move-result v1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3f} :catch_40

    goto :goto_45

    :catch_40
    move-exception v1

    .line 27
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    .line 28
    :goto_45
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzadu;->width:I

    .line 30
    :try_start_47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadu;->zzdcj:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadt;->getHeight()I

    move-result p1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v1

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :goto_52
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadu;->height:I

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadu;->zzdck:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getHeight()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadu;->height:I

    return v0
.end method

.method public final getScale()D
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadu;->zzdce:D

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadu;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadu;->width:I

    return v0
.end method
