.class public Lcom/google/android/gms/ads/formats/MediaView;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private zzbmz:Lcom/google/android/gms/ads/MediaContent;

.field private zzbna:Z

.field private zzbnb:Lcom/google/android/gms/internal/ads/zzade;

.field private zzbnc:Landroid/widget/ImageView$ScaleType;

.field private zzbnd:Z

.field private zzbne:Lcom/google/android/gms/internal/ads/zzadg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbnd:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbnc:Landroid/widget/ImageView$ScaleType;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbne:Lcom/google/android/gms/internal/ads/zzadg;

    if-eqz v0, :cond_c

    .line 21
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_c
    return-void
.end method

.method public setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V
    .registers 3

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbna:Z

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbmz:Lcom/google/android/gms/ads/MediaContent;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbnb:Lcom/google/android/gms/internal/ads/zzade;

    if-eqz v0, :cond_c

    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzade;->setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V

    :cond_c
    return-void
.end method

.method protected final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzade;)V
    .registers 3

    monitor-enter p0

    .line 14
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbnb:Lcom/google/android/gms/internal/ads/zzade;

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbna:Z

    if-eqz v0, :cond_c

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbmz:Lcom/google/android/gms/ads/MediaContent;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzade;->setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 17
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzadg;)V
    .registers 3

    monitor-enter p0

    .line 23
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbne:Lcom/google/android/gms/internal/ads/zzadg;

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbnd:Z

    if-eqz v0, :cond_c

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbnc:Landroid/widget/ImageView$ScaleType;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadg;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 26
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
