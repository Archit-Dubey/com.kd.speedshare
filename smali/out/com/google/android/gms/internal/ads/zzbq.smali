.class public final Lcom/google/android/gms/internal/ads/zzbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public static zza(B)I
    .registers 1

    if-gez p0, :cond_4

    add-int/lit16 p0, p0, 0x100

    :cond_4
    return p0
.end method

.method public static zzf(Ljava/nio/ByteBuffer;)J
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_11

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    :cond_11
    return-wide v0
.end method

.method public static zzg(Ljava/nio/ByteBuffer;)I
    .registers 2

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbq;->zza(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x0

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbq;->zza(B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzh(Ljava/nio/ByteBuffer;)J
    .registers 6

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbq;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_14

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbq;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 11
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "I don\'t know how to deal with UInt64! long is not sufficient and I don\'t want to use BigInt"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzi(Ljava/nio/ByteBuffer;)D
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 15
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 16
    aget-byte v1, v0, p0

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    const/4 v1, 0x1

    .line 17
    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    const/4 v1, 0x2

    .line 18
    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    const/4 v1, 0x3

    .line 19
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p0, v0

    int-to-double v0, p0

    const-wide/high16 v2, 0x40f0000000000000L    # 65536.0

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static zzj(Ljava/nio/ByteBuffer;)D
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 22
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 23
    aget-byte v1, v0, p0

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    const/4 v1, 0x1

    .line 24
    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    const/4 v1, 0x2

    .line 25
    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    const/4 v1, 0x3

    .line 26
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p0, v0

    int-to-double v0, p0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static zzk(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 29
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 30
    :try_start_6
    new-instance p0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
