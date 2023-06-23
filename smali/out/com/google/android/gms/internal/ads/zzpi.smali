.class public final Lcom/google/android/gms/internal/ads/zzpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field public data:[B

.field private limit:I

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    .line 8
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    return-void
.end method


# virtual methods
.method public final capacity()I
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    array-length v0, v0

    return v0
.end method

.method public final getPosition()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    return v0
.end method

.method public final limit()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    return v0
.end method

.method public final readInt()I
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final readLong()J
    .registers 10

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x18

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public final readShort()S
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final readUnsignedByte()I
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedShort()I
    .registers 5

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    return-void
.end method

.method public final reset(I)V
    .registers 3

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_9

    new-array v0, p1, [B

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    :goto_b
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzpi;->zzc([BI)V

    return-void
.end method

.method public final zzbj(I)V
    .registers 3

    if-ltz p1, :cond_9

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(Z)V

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    return-void
.end method

.method public final zzbk(I)V
    .registers 3

    if-ltz p1, :cond_8

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(Z)V

    .line 27
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    return-void
.end method

.method public final zzbl(I)V
    .registers 3

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    return-void
.end method

.method public final zzbm(I)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    .line 56
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 57
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    aget-byte v0, v1, v0

    if-nez v0, :cond_17

    add-int/lit8 v0, p1, -0x1

    goto :goto_18

    :cond_17
    move v0, p1

    .line 59
    :goto_18
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 60
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    return-object v1
.end method

.method public final zzc([BI)V
    .registers 3

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    .line 13
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    return-void
.end method

.method public final zze([BII)V
    .registers 6

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    return-void
.end method

.method public final zziu()I
    .registers 3

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zziv()I
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final zziw()J
    .registers 10

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public final zzix()J
    .registers 10

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public final zziy()I
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x2

    .line 43
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    return v0
.end method

.method public final zziz()I
    .registers 5

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    .line 47
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zzja()J
    .registers 6

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_b

    return-wide v0

    .line 51
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final zzjb()Ljava/lang/String;
    .registers 6

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->zziu()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    .line 65
    :goto_a
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 67
    :cond_17
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    sub-int v4, v0, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 68
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    .line 69
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpi;->limit:I

    if-ge v0, v2, :cond_2c

    add-int/lit8 v0, v0, 0x1

    .line 70
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->position:I

    :cond_2c
    return-object v1
.end method
