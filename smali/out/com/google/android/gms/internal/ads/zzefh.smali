.class final Lcom/google/android/gms/internal/ads/zzefh;
.super Lcom/google/android/gms/internal/ads/zzefc;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private final buffer:[B

.field private pos:I

.field private zzajz:I

.field private zzian:I

.field private zziap:I

.field private zziaq:I

.field private final zziar:Ljava/io/InputStream;

.field private zzias:I

.field private zziat:Lcom/google/android/gms/internal/ads/zzefg;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefc;-><init>(Lcom/google/android/gms/internal/ads/zzeff;)V

    const v1, 0x7fffffff

    .line 2
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaq:I

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziat:Lcom/google/android/gms/internal/ads/zzefg;

    const-string v0, "input"

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzegd;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziar:Ljava/io/InputStream;

    .line 6
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/zzeff;)V
    .registers 4

    const/16 p2, 0x1000

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefh;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private final zzbee()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 129
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    if-eq v1, v0, :cond_6b

    .line 130
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 131
    aget-byte v0, v2, v0

    if-ltz v0, :cond_11

    .line 132
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    return v0

    :cond_11
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6b

    add-int/lit8 v1, v3, 0x1

    .line 135
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_22

    xor-int/lit8 v0, v0, -0x80

    goto :goto_68

    :cond_22
    add-int/lit8 v3, v1, 0x1

    .line 137
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2f

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2d
    move v1, v3

    goto :goto_68

    :cond_2f
    add-int/lit8 v1, v3, 0x1

    .line 139
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3d

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_68

    :cond_3d
    add-int/lit8 v3, v1, 0x1

    .line 141
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    .line 144
    aget-byte v3, v2, v3

    if-gez v3, :cond_68

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_68

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6b

    .line 145
    :cond_68
    :goto_68
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    return v0

    .line 147
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefc;->zzbeb()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private final zzbef()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 149
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    if-eq v1, v0, :cond_b8

    .line 150
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 151
    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    .line 152
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    int-to-long v0, v0

    return-wide v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_b8

    add-int/lit8 v1, v3, 0x1

    .line 155
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_25

    xor-int/lit8 v0, v0, -0x80

    :goto_22
    int-to-long v2, v0

    goto/16 :goto_b5

    :cond_25
    add-int/lit8 v3, v1, 0x1

    .line 157
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_36

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_b5

    :cond_36
    add-int/lit8 v1, v3, 0x1

    .line 159
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_44

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_22

    :cond_44
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    .line 161
    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5b

    const-wide/32 v1, 0xfe03f80

    :goto_57
    xor-long/2addr v1, v3

    move-wide v2, v1

    move v1, v0

    goto :goto_b5

    :cond_5b
    add-int/lit8 v1, v0, 0x1

    .line 163
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_70

    const-wide v5, -0x7f01fc080L

    :goto_6d
    xor-long/2addr v3, v5

    :goto_6e
    move-wide v2, v3

    goto :goto_b5

    :cond_70
    add-int/lit8 v0, v1, 0x1

    .line 165
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_83

    const-wide v1, 0x3f80fe03f80L

    goto :goto_57

    :cond_83
    add-int/lit8 v1, v0, 0x1

    .line 167
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_96

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_6d

    :cond_96
    add-int/lit8 v0, v1, 0x1

    .line 169
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_b3

    add-int/lit8 v1, v0, 0x1

    .line 172
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_b8

    goto :goto_6e

    :cond_b3
    move v1, v0

    goto :goto_6e

    .line 173
    :goto_b5
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    return-wide v2

    .line 175
    :cond_b8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefc;->zzbeb()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzbeg()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 185
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 186
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzefh;->zzgd(I)V

    .line 187
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 188
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    .line 189
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 190
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private final zzbeh()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 192
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 193
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzefh;->zzgd(I)V

    .line 194
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 195
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    add-int/lit8 v3, v0, 0x8

    .line 196
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 197
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method private final zzbei()V
    .registers 4

    .line 207
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzian:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    .line 208
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    add-int/2addr v1, v0

    .line 209
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaq:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    .line 210
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzian:I

    sub-int/2addr v0, v1

    .line 211
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    return-void

    :cond_15
    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzian:I

    return-void
.end method

.method private final zzbej()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    .line 249
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefh;->zzgd(I)V

    .line 250
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private final zzg(IZ)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefh;->zzgf(I)[B

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p2

    .line 254
    :cond_7
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 255
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    sub-int v1, v0, p2

    .line 256
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 258
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    sub-int v2, p1, v1

    .line 260
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzefh;->zzgg(I)Ljava/util/List;

    move-result-object v2

    .line 261
    new-array p1, p1, [B

    .line 262
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 265
    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_28

    :cond_3b
    return-object p1
.end method

.method private final zzgc(I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    if-ltz p1, :cond_d

    add-int/2addr v1, p1

    .line 313
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    return-void

    :cond_d
    if-ltz p1, :cond_ae

    .line 317
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaq:I

    if-gt v2, v3, :cond_a4

    add-int/2addr v0, v1

    .line 321
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    .line 322
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 323
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    .line 324
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    :goto_25
    if-ge v0, p1, :cond_7e

    sub-int v1, p1, v0

    .line 327
    :try_start_29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziar:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_41

    cmp-long v7, v1, v3

    if-gtz v7, :cond_41

    cmp-long v3, v1, v5

    if-eqz v3, :cond_7e

    long-to-int v2, v1

    add-int/2addr v0, v2

    goto :goto_25

    .line 329
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziar:Ljava/io/InputStream;

    .line 330
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#skip returned invalid result: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_74
    .catchall {:try_start_29 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception p1

    .line 337
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    .line 338
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbei()V

    .line 339
    throw p1

    .line 334
    :cond_7e
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    .line 335
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbei()V

    if-ge v0, p1, :cond_a3

    .line 341
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sub-int v1, v0, v1

    .line 342
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    const/4 v0, 0x1

    .line 343
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefh;->zzgd(I)V

    :goto_94
    sub-int v2, p1, v1

    .line 344
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    if-le v2, v3, :cond_a1

    add-int/2addr v1, v3

    .line 346
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 347
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefh;->zzgd(I)V

    goto :goto_94

    .line 348
    :cond_a1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    :cond_a3
    return-void

    :cond_a4
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 318
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzefh;->zzgc(I)V

    .line 319
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    .line 316
    :cond_ae
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfv()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    goto :goto_b4

    :goto_b3
    throw p1

    :goto_b4
    goto :goto_b3
.end method

.method private final zzgd(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefh;->zzge(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 220
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaj:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_15

    .line 221
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbga()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    .line 222
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    :cond_1a
    return-void
.end method

.method private final zzge(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    if-le v0, v1, :cond_98

    .line 226
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaj:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-le p1, v0, :cond_13

    return v3

    :cond_13
    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 228
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaq:I

    if-le v1, v0, :cond_1a

    return v3

    :cond_1a
    if-lez v2, :cond_32

    .line 232
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    if-le v0, v2, :cond_26

    .line 233
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    :cond_26
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    .line 235
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    .line 236
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 237
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziar:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    array-length v4, v1

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaj:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    sub-int/2addr v5, v6

    .line 238
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 239
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_65

    const/4 v1, -0x1

    if-lt v0, v1, :cond_65

    .line 240
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_65

    if-lez v0, :cond_64

    .line 244
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    .line 245
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbei()V

    .line 246
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_64
    return v3

    .line 241
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziar:Ljava/io/InputStream;

    .line 242
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#read(byte[]) returned invalid result: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_98
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "refillBuffer() called when "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b7

    :goto_b6
    throw v0

    :goto_b7
    goto :goto_b6
.end method

.method private final zzgf(I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    .line 270
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegd;->zziab:[B

    return-object p1

    :cond_5
    if-ltz p1, :cond_6f

    .line 273
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 274
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaj:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6a

    .line 276
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaq:I

    if-gt v0, v1, :cond_5c

    .line 279
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2d

    .line 281
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziar:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v1, v2, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    return-object p1

    .line 282
    :cond_2d
    :goto_2d
    new-array v1, p1, [B

    .line 283
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    .line 285
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 286
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    :goto_42
    if-ge v0, p1, :cond_5b

    .line 289
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziar:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_56

    .line 292
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    add-int/2addr v0, v2

    goto :goto_42

    .line 291
    :cond_56
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    :cond_5b
    return-object v1

    .line 277
    :cond_5c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sub-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzefh;->zzgc(I)V

    .line 278
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    .line 275
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbga()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    .line 272
    :cond_6f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfv()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    goto :goto_75

    :goto_74
    throw p1

    :goto_75
    goto :goto_74
.end method

.method private final zzgg(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-lez p1, :cond_2e

    const/16 v1, 0x1000

    .line 299
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_29

    .line 302
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziar:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    .line 305
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    add-int/2addr v3, v4

    goto :goto_10

    .line 304
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    :cond_29
    sub-int/2addr p1, v1

    .line 309
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2e
    return-object v0
.end method


# virtual methods
.method public final readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbeh()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbeg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbee()I

    move-result v0

    if-lez v0, :cond_1e

    .line 67
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    .line 68
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzegd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 69
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    return-object v1

    :cond_1e
    if-nez v0, :cond_23

    const-string v0, ""

    return-object v0

    .line 73
    :cond_23
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    if-gt v0, v1, :cond_3b

    .line 74
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefh;->zzgd(I)V

    .line 75
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzegd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 76
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    return-object v1

    .line 78
    :cond_3b
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzefh;->zzg(IZ)[B

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzegd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final zzbdm()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefc;->zzbec()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziap:I

    return v0

    .line 14
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbee()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziap:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_15

    return v0

    .line 18
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfx()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v0

    throw v0
.end method

.method public final zzbdn()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbef()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbdo()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbef()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbdp()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbee()I

    move-result v0

    return v0
.end method

.method public final zzbdq()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbeh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbdr()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbeg()I

    move-result v0

    return v0
.end method

.method public final zzbds()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbef()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbdt()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbee()I

    move-result v0

    .line 80
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 81
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_15

    if-lez v0, :cond_15

    .line 82
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    add-int v3, v1, v0

    .line 83
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    goto :goto_2b

    :cond_15
    if-nez v0, :cond_1a

    const-string v0, ""

    return-object v0

    .line 87
    :cond_1a
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    if-gt v0, v1, :cond_26

    .line 88
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefh;->zzgd(I)V

    .line 89
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    .line 91
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    goto :goto_2a

    .line 92
    :cond_26
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzefh;->zzg(IZ)[B

    move-result-object v2

    :goto_2a
    const/4 v1, 0x0

    .line 94
    :goto_2b
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzeji;->zzo([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbdu()Lcom/google/android/gms/internal/ads/zzeer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbee()I

    move-result v0

    .line 96
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    if-lez v0, :cond_19

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzeer;->zzi([BII)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v1

    .line 98
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    return-object v0

    .line 103
    :cond_1e
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefh;->zzgf(I)[B

    move-result-object v1

    if-eqz v1, :cond_29

    .line 105
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v0

    return-object v0

    .line 106
    :cond_29
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 107
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    sub-int v3, v2, v1

    .line 108
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    const/4 v2, 0x0

    .line 109
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    .line 110
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    sub-int v4, v0, v3

    .line 112
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzefh;->zzgg(I)Ljava/util/List;

    move-result-object v4

    .line 113
    new-array v0, v0, [B

    .line 114
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 117
    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_4a

    .line 120
    :cond_5d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeer;->zzv([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v0

    return-object v0
.end method

.method public final zzbdv()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbee()I

    move-result v0

    return v0
.end method

.method public final zzbdw()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbee()I

    move-result v0

    return v0
.end method

.method public final zzbdx()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbeg()I

    move-result v0

    return v0
.end method

.method public final zzbdy()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbeh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbdz()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbee()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefh;->zzgb(I)I

    move-result v0

    return v0
.end method

.method public final zzbea()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbef()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzefh;->zzfh(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final zzbeb()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 178
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbej()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 183
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfw()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v0

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method

.method public final zzbec()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefh;->zzge(I)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbed()I
    .registers 3

    .line 218
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzfx(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziap:I

    if-ne v0, p1, :cond_5

    return-void

    .line 21
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfy()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1
.end method

.method public final zzfy(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    if-eq v0, v2, :cond_39

    const/4 v3, 0x2

    if-eq v0, v3, :cond_31

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1e

    if-eq v0, v3, :cond_1d

    const/4 p1, 0x5

    if-ne v0, p1, :cond_18

    .line 55
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzefh;->zzgc(I)V

    return v2

    .line 57
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfz()Lcom/google/android/gms/internal/ads/zzego;

    move-result-object p1

    throw p1

    :cond_1d
    return v1

    .line 45
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefc;->zzbdm()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzefc;->zzfy(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_2a
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefc;->zzfx(I)V

    return v2

    .line 42
    :cond_31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbee()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefh;->zzgc(I)V

    return v2

    :cond_39
    const/16 p1, 0x8

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefh;->zzgc(I)V

    return v2

    .line 27
    :cond_3f
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzajz:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_5e

    :goto_48
    if-ge v1, v0, :cond_59

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_69

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 32
    :cond_59
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfw()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    :cond_5e
    :goto_5e
    if-ge v1, v0, :cond_6a

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbej()B

    move-result p1

    if-gez p1, :cond_69

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_69
    return v2

    .line 38
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfw()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    goto :goto_70

    :goto_6f
    throw p1

    :goto_70
    goto :goto_6f
.end method

.method public final zzfz(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    if-ltz p1, :cond_17

    .line 200
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzias:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->pos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 201
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaq:I

    if-gt p1, v0, :cond_12

    .line 204
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaq:I

    .line 205
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbei()V

    return v0

    .line 203
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    .line 199
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfv()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1
.end method

.method public final zzga(I)V
    .registers 2

    .line 214
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zziaq:I

    .line 215
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefh;->zzbei()V

    return-void
.end method
