.class Lcom/google/android/gms/internal/ads/zzis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private zzahh:I

.field protected zzaju:Landroid/media/AudioTrack;

.field private zzalp:Z

.field private zzalq:J

.field private zzalr:J

.field private zzals:J

.field private zzalt:J

.field private zzalu:J

.field private zzalv:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzip;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    return-void
.end method


# virtual methods
.method public final pause()V
    .registers 6

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalt:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    return-void

    .line 18
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzaju:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public zza(Landroid/media/AudioTrack;Z)V
    .registers 5

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzis;->zzaju:Landroid/media/AudioTrack;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalp:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalt:J

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalq:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalr:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzals:J

    if-eqz p1, :cond_1b

    .line 9
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzis;->zzahh:I

    :cond_1b
    return-void
.end method

.method public final zzdy(J)V
    .registers 7

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzis;->zzga()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalu:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalt:J

    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalv:J

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzis;->zzaju:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public zzfx()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzfy()J
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzfz()J
    .registers 2

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zzga()J
    .registers 9

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalt:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalt:J

    sub-long/2addr v0, v2

    .line 22
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzis;->zzahh:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 23
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalv:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalu:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 24
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzaju:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_35

    return-wide v2

    :cond_35
    const-wide v4, 0xffffffffL

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzis;->zzaju:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v6, v1

    and-long/2addr v4, v6

    .line 28
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalp:Z

    if-eqz v1, :cond_54

    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    cmp-long v0, v4, v2

    if-nez v0, :cond_51

    .line 30
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalq:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzals:J

    .line 31
    :cond_51
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzals:J

    add-long/2addr v4, v0

    .line 32
    :cond_54
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalq:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_61

    .line 33
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalr:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalr:J

    .line 34
    :cond_61
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalq:J

    .line 35
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zzalr:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public final zzgb()J
    .registers 5

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzis;->zzga()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzis;->zzahh:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method
