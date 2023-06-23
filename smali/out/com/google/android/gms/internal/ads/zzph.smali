.class public final Lcom/google/android/gms/internal/ads/zzph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field public static final zzbjk:[B

.field private static final zzbjw:[F

.field private static final zzbjx:Ljava/lang/Object;

.field private static zzbjy:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 142
    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/gms/internal/ads/zzph;->zzbjk:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    .line 143
    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/android/gms/internal/ads/zzph;->zzbjw:[F

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzph;->zzbjx:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 145
    sput-object v0, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static zza(Ljava/lang/String;B)Z
    .registers 5

    const-string v0, "video/avc"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1d

    :cond_e
    const-string v0, "video/hevc"

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_1e

    :cond_1d
    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb([BI)I
    .registers 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzph;->zzbjx:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    :goto_6
    if-ge v2, p1, :cond_40

    :goto_8
    add-int/lit8 v4, p1, -0x2

    if-ge v2, v4, :cond_21

    .line 7
    :try_start_c
    aget-byte v4, p0, v2

    if-nez v4, :cond_1e

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_1e

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1e

    goto :goto_22

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    move v2, p1

    :goto_22
    if-ge v2, p1, :cond_6

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:[I

    array-length v4, v4

    if-gt v4, v3, :cond_36

    .line 14
    sget-object v4, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:[I

    sget-object v5, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:[I

    array-length v5, v5

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:[I

    .line 15
    :cond_36
    sget-object v4, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    :cond_40
    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_44
    if-ge v2, v3, :cond_5d

    .line 21
    sget-object v6, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 23
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 25
    aput-byte v1, p0, v4

    add-int/lit8 v4, v7, 0x1

    .line 26
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_5d
    sub-int v1, p1, v4

    .line 30
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    monitor-exit v0

    return p1

    :catchall_64
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_c .. :try_end_66} :catchall_64

    goto :goto_68

    :goto_67
    throw p0

    :goto_68
    goto :goto_67
.end method

.method public static zzd([BII)Lcom/google/android/gms/internal/ads/zzpg;
    .registers 21

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpl;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzpl;-><init>([BII)V

    const/16 v1, 0x8

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpl;->zzbo(I)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpl;->zzbn(I)I

    move-result v2

    const/16 v3, 0x10

    .line 60
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpl;->zzbo(I)V

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v5

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x64

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x6e

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x7a

    if-eq v2, v8, :cond_4c

    const/16 v8, 0xf4

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x2c

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x53

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x56

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x76

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x80

    if-eq v2, v8, :cond_4c

    const/16 v8, 0x8a

    if-ne v2, v8, :cond_49

    goto :goto_4c

    :cond_49
    const/4 v2, 0x1

    const/4 v9, 0x0

    goto :goto_9c

    .line 65
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v2

    if-ne v2, v4, :cond_57

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjc()Z

    move-result v8

    goto :goto_58

    :cond_57
    const/4 v8, 0x0

    .line 68
    :goto_58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    .line 70
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzpl;->zzbo(I)V

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjc()Z

    move-result v9

    if-eqz v9, :cond_9b

    if-eq v2, v4, :cond_6c

    const/16 v9, 0x8

    goto :goto_6e

    :cond_6c
    const/16 v9, 0xc

    :goto_6e
    const/4 v10, 0x0

    :goto_6f
    if-ge v10, v9, :cond_9b

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjc()Z

    move-result v11

    if-eqz v11, :cond_98

    const/4 v11, 0x6

    if-ge v10, v11, :cond_7d

    const/16 v11, 0x10

    goto :goto_7f

    :cond_7d
    const/16 v11, 0x40

    :goto_7f
    const/4 v12, 0x0

    const/16 v13, 0x8

    const/16 v14, 0x8

    :goto_84
    if-ge v12, v11, :cond_98

    if-eqz v13, :cond_91

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzje()I

    move-result v13

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x100

    .line 83
    rem-int/lit16 v13, v13, 0x100

    :cond_91
    if-nez v13, :cond_94

    goto :goto_95

    :cond_94
    move v14, v13

    :goto_95
    add-int/lit8 v12, v12, 0x1

    goto :goto_84

    :cond_98
    add-int/lit8 v10, v10, 0x1

    goto :goto_6f

    :cond_9b
    move v9, v8

    .line 87
    :goto_9c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v8

    add-int/lit8 v11, v8, 0x4

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v12

    if-nez v12, :cond_b0

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    move v13, v8

    goto :goto_d1

    :cond_b0
    if-ne v12, v7, :cond_d0

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjc()Z

    move-result v8

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzje()I

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzje()I

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v10

    int-to-long v13, v10

    const/4 v10, 0x0

    :goto_c2
    int-to-long v3, v10

    cmp-long v15, v3, v13

    if-gez v15, :cond_cd

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_c2

    :cond_cd
    move v14, v8

    const/4 v13, 0x0

    goto :goto_d2

    :cond_d0
    const/4 v13, 0x0

    :goto_d1
    const/4 v14, 0x0

    .line 101
    :goto_d2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    .line 102
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzpl;->zzbo(I)V

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v3

    add-int/2addr v3, v7

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v4

    add-int/2addr v4, v7

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjc()Z

    move-result v10

    rsub-int/lit8 v6, v10, 0x2

    mul-int v6, v6, v4

    if-nez v10, :cond_ef

    .line 108
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzpl;->zzbo(I)V

    .line 109
    :cond_ef
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzpl;->zzbo(I)V

    shl-int/lit8 v3, v3, 0x4

    shl-int/lit8 v4, v6, 0x4

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjc()Z

    move-result v6

    if-eqz v6, :cond_12a

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v6

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v8

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v15

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjd()I

    move-result v16

    if-nez v2, :cond_111

    rsub-int/lit8 v2, v10, 0x2

    goto :goto_121

    :cond_111
    const/16 v17, 0x2

    const/4 v1, 0x3

    if-ne v2, v1, :cond_118

    const/4 v1, 0x1

    goto :goto_119

    :cond_118
    const/4 v1, 0x2

    :goto_119
    if-ne v2, v7, :cond_11c

    const/4 v7, 0x2

    :cond_11c
    rsub-int/lit8 v2, v10, 0x2

    mul-int v2, v2, v7

    move v7, v1

    :goto_121
    add-int/2addr v6, v8

    mul-int v6, v6, v7

    sub-int/2addr v3, v6

    add-int v15, v15, v16

    mul-int v15, v15, v2

    sub-int/2addr v4, v15

    :cond_12a
    move v6, v3

    move v7, v4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjc()Z

    move-result v2

    if-eqz v2, :cond_178

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzjc()Z

    move-result v2

    if-eqz v2, :cond_178

    const/16 v2, 0x8

    .line 132
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzpl;->zzbn(I)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_157

    const/16 v3, 0x10

    .line 134
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpl;->zzbn(I)I

    move-result v2

    .line 135
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpl;->zzbn(I)I

    move-result v0

    if-eqz v2, :cond_155

    if-eqz v0, :cond_155

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_155
    move v8, v1

    goto :goto_17a

    .line 138
    :cond_157
    sget-object v0, Lcom/google/android/gms/internal/ads/zzph;->zzbjw:[F

    array-length v3, v0

    if-ge v2, v3, :cond_160

    .line 139
    aget v0, v0, v2

    move v8, v0

    goto :goto_17a

    :cond_160
    const/16 v0, 0x2e

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NalUnitUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_178
    const/high16 v8, 0x3f800000    # 1.0f

    .line 141
    :goto_17a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpg;

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/ads/zzpg;-><init>(IIIFZZIIIZ)V

    return-object v0
.end method

.method public static zzp(Ljava/nio/ByteBuffer;)V
    .registers 10

    .line 33
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3b

    .line 37
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_32

    const/4 v7, 0x1

    if-ne v5, v7, :cond_36

    .line 39
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_36

    .line 40
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    .line 41
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 43
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_32
    if-nez v5, :cond_36

    add-int/lit8 v3, v3, 0x1

    :cond_36
    if-eqz v5, :cond_39

    const/4 v3, 0x0

    :cond_39
    move v2, v4

    goto :goto_7

    .line 52
    :cond_3b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method
