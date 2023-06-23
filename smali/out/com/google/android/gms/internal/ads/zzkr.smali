.class final Lcom/google/android/gms/internal/ads/zzkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzapl:Lcom/google/android/gms/internal/ads/zzpi;

.field private zzasl:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzapl:Lcom/google/android/gms/internal/ads/zzpi;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzjw;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzapl:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzjw;->zza([BII)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzapl:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_16

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_16
    const/16 v3, 0x80

    const/4 v4, 0x0

    :goto_19
    and-int v5, v0, v3

    if-nez v5, :cond_22

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_22
    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzapl:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    invoke-interface {p1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzjw;->zza([BII)V

    :goto_2c
    if-ge v1, v4, :cond_3c

    shl-int/lit8 p1, v0, 0x8

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzapl:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_2c

    .line 47
    :cond_3c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzasl:I

    add-int/2addr v4, v2

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzasl:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzjw;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjw;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_16

    cmp-long v8, v2, v4

    if-lez v8, :cond_15

    goto :goto_16

    :cond_15
    move-wide v4, v2

    :cond_16
    :goto_16
    long-to-int v5, v4

    .line 7
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzapl:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-interface {v1, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzjw;->zza([BII)V

    .line 8
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzapl:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v10

    .line 9
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzasl:I

    :goto_28
    const-wide/32 v12, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v9, v10, v12

    if-eqz v9, :cond_52

    .line 11
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzasl:I

    add-int/2addr v9, v4

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzasl:I

    if-ne v9, v5, :cond_38

    return v8

    .line 13
    :cond_38
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzapl:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    invoke-interface {v1, v9, v8, v4}, Lcom/google/android/gms/internal/ads/zzjw;->zza([BII)V

    const/16 v4, 0x8

    shl-long v9, v10, v4

    const-wide/16 v11, -0x100

    and-long/2addr v9, v11

    .line 15
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzapl:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    or-long/2addr v9, v11

    move-wide v10, v9

    goto :goto_28

    .line 16
    :cond_52
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzkr;->zzc(Lcom/google/android/gms/internal/ads/zzjw;)J

    move-result-wide v9

    .line 17
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzasl:I

    int-to-long v11, v5

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v5, v9, v13

    if-eqz v5, :cond_a5

    cmp-long v5, v2, v6

    if-eqz v5, :cond_6a

    add-long v5, v11, v9

    cmp-long v7, v5, v2

    if-ltz v7, :cond_6a

    goto :goto_a5

    .line 20
    :cond_6a
    :goto_6a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzasl:I

    int-to-long v5, v2

    add-long v15, v11, v9

    cmp-long v3, v5, v15

    if-gez v3, :cond_9f

    .line 21
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzkr;->zzc(Lcom/google/android/gms/internal/ads/zzjw;)J

    move-result-wide v2

    cmp-long v5, v2, v13

    if-nez v5, :cond_7c

    return v8

    .line 24
    :cond_7c
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzkr;->zzc(Lcom/google/android/gms/internal/ads/zzjw;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_9e

    const-wide/32 v15, 0x7fffffff

    cmp-long v7, v2, v15

    if-lez v7, :cond_8e

    goto :goto_9e

    :cond_8e
    cmp-long v7, v2, v5

    if-eqz v7, :cond_6a

    long-to-int v5, v2

    .line 28
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzjw;->zzai(I)V

    .line 29
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzasl:I

    int-to-long v5, v5

    add-long/2addr v5, v2

    long-to-int v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzkr;->zzasl:I

    goto :goto_6a

    :cond_9e
    :goto_9e
    return v8

    :cond_9f
    int-to-long v1, v2

    cmp-long v3, v1, v15

    if-nez v3, :cond_a5

    return v4

    :cond_a5
    :goto_a5
    return v8
.end method
