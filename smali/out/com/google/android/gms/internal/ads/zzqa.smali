.class final Lcom/google/android/gms/internal/ads/zzqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field private final synthetic zzbly:Lcom/google/android/gms/internal/ads/zzpz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzpz;Landroid/media/MediaCodec;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzbly:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpz;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzpy;)V
    .registers 4

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Lcom/google/android/gms/internal/ads/zzpz;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 6

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzbly:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpz;->zzblv:Lcom/google/android/gms/internal/ads/zzqa;

    if-eq p0, p1, :cond_7

    return-void

    .line 6
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzbly:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpz;->zzjj()V

    return-void
.end method
