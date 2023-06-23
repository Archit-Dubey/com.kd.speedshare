.class final Lcom/google/android/gms/internal/ads/zzmb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlz;


# instance fields
.field private final zzbcx:I

.field private zzbcy:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzbcx:I

    return-void
.end method

.method private final zzhl()V
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzbcy:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_11

    .line 11
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzbcx:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzbcy:[Landroid/media/MediaCodecInfo;

    :cond_11
    return-void
.end method


# virtual methods
.method public final getCodecCount()I
    .registers 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmb;->zzhl()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzbcy:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public final getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .registers 3

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmb;->zzhl()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzbcy:[Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3

    const-string p1, "secure-playback"

    .line 9
    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzhk()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
