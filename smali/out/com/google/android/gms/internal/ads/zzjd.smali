.class final Lcom/google/android/gms/internal/ads/zzjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzahh:I

.field private zzaht:F

.field private zzahu:F

.field private final zzamp:I

.field private final zzamq:I

.field private final zzamr:I

.field private final zzams:I

.field private final zzamt:[S

.field private zzamu:I

.field private zzamv:[S

.field private zzamw:I

.field private zzamx:[S

.field private zzamy:I

.field private zzamz:[S

.field private zzana:I

.field private zzanb:I

.field private zzanc:I

.field private zzand:I

.field private zzane:I

.field private zzanf:I

.field private zzang:I

.field private zzanh:I

.field private zzani:I

.field private zzanj:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzahh:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    .line 4
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamq:I

    .line 5
    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamr:I

    mul-int/lit8 p1, p1, 0x2

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzams:I

    .line 7
    new-array v0, p1, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamt:[S

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamu:I

    mul-int v0, p1, p2

    .line 9
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamw:I

    mul-int v0, p1, p2

    .line 11
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamy:I

    mul-int p1, p1, p2

    .line 13
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamz:[S

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzana:I

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanb:I

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzang:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzaht:F

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzahu:F

    return-void
.end method

.method private final zza([SIII)I
    .registers 14

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-gt p3, p4, :cond_36

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_e
    if-ge v5, p3, :cond_23

    add-int v7, p2, v5

    .line 84
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 85
    aget-short v8, p1, v8

    if-lt v7, v8, :cond_1d

    sub-int/2addr v7, v8

    goto :goto_1f

    :cond_1d
    sub-int v7, v8, v7

    :goto_1f
    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_23
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_2b

    move v3, p3

    move v0, v6

    :cond_2b
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_33

    move v2, p3

    move v4, v6

    :cond_33
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    .line 95
    :cond_36
    div-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzani:I

    .line 96
    div-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanj:I

    return v3
.end method

.method private static zza(II[SI[SI[SI)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_28

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_e
    if-ge v5, p0, :cond_25

    .line 226
    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int v6, v6, v7

    aget-short v7, p6, v3

    mul-int v7, v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method

.method private final zza([SII)V
    .registers 7

    .line 60
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzjd;->zzz(I)V

    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int p2, p2, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    mul-int v2, v2, v0

    mul-int v0, v0, p3

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    return-void
.end method

.method private final zzaa(I)V
    .registers 4

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamu:I

    if-le v0, v1, :cond_19

    .line 57
    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamu:I

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    :cond_19
    return-void
.end method

.method private final zzb([SII)V
    .registers 10

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzams:I

    div-int/2addr v0, p3

    .line 65
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int p3, p3, v1

    mul-int p2, p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_24

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, p3, :cond_1b

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 70
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 72
    :cond_1b
    div-int/2addr v4, p3

    .line 73
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamt:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    return-void
.end method

.method private final zzgf()V
    .registers 21

    move-object/from16 v0, p0

    .line 98
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    .line 99
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzaht:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzahu:F

    div-float/2addr v2, v3

    float-to-double v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide v8, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v10, v3, v8

    if-gtz v10, :cond_2c

    const-wide v8, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v10, v3, v8

    if-gez v10, :cond_21

    goto :goto_2c

    .line 174
    :cond_21
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    invoke-direct {v0, v2, v6, v3}, Lcom/google/android/gms/internal/ads/zzjd;->zza([SII)V

    .line 175
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    goto/16 :goto_173

    .line 102
    :cond_2c
    :goto_2c
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzams:I

    if-lt v8, v9, :cond_173

    const/4 v9, 0x0

    .line 105
    :goto_33
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanf:I

    if-lez v10, :cond_4a

    .line 107
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzams:I

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 108
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    invoke-direct {v0, v11, v9, v10}, Lcom/google/android/gms/internal/ads/zzjd;->zza([SII)V

    .line 109
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanf:I

    sub-int/2addr v11, v10

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanf:I

    add-int/2addr v9, v10

    goto/16 :goto_15a

    .line 112
    :cond_4a
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    .line 113
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzahh:I

    const/16 v12, 0xfa0

    if-le v11, v12, :cond_55

    div-int/lit16 v11, v11, 0xfa0

    goto :goto_56

    :cond_55
    const/4 v11, 0x1

    .line 114
    :goto_56
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    if-ne v12, v7, :cond_65

    if-ne v11, v7, :cond_65

    .line 115
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamq:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamr:I

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzjd;->zza([SIII)I

    move-result v10

    goto :goto_9b

    .line 116
    :cond_65
    invoke-direct {v0, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzjd;->zzb([SII)V

    .line 117
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamt:[S

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamq:I

    div-int/2addr v13, v11

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamr:I

    div-int/2addr v14, v11

    invoke-direct {v0, v12, v6, v13, v14}, Lcom/google/android/gms/internal/ads/zzjd;->zza([SIII)I

    move-result v12

    if-eq v11, v7, :cond_9a

    mul-int v12, v12, v11

    shl-int/lit8 v11, v11, 0x2

    sub-int v13, v12, v11

    add-int/2addr v12, v11

    .line 122
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamq:I

    if-ge v13, v11, :cond_82

    move v13, v11

    .line 124
    :cond_82
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamr:I

    if-le v12, v11, :cond_87

    move v12, v11

    .line 126
    :cond_87
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    if-ne v11, v7, :cond_90

    .line 127
    invoke-direct {v0, v10, v9, v13, v12}, Lcom/google/android/gms/internal/ads/zzjd;->zza([SIII)I

    move-result v10

    goto :goto_9b

    .line 128
    :cond_90
    invoke-direct {v0, v10, v9, v7}, Lcom/google/android/gms/internal/ads/zzjd;->zzb([SII)V

    .line 129
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamt:[S

    invoke-direct {v0, v10, v6, v13, v12}, Lcom/google/android/gms/internal/ads/zzjd;->zza([SIII)I

    move-result v10

    goto :goto_9b

    :cond_9a
    move v10, v12

    .line 130
    :goto_9b
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzani:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanj:I

    if-eqz v11, :cond_b6

    .line 131
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzang:I

    if-nez v13, :cond_a6

    goto :goto_b6

    :cond_a6
    mul-int/lit8 v13, v11, 0x3

    if-le v12, v13, :cond_ab

    goto :goto_b6

    :cond_ab
    shl-int/lit8 v11, v11, 0x1

    .line 136
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanh:I

    mul-int/lit8 v12, v12, 0x3

    if-gt v11, v12, :cond_b4

    goto :goto_b6

    :cond_b4
    const/4 v11, 0x1

    goto :goto_b7

    :cond_b6
    :goto_b6
    const/4 v11, 0x0

    :goto_b7
    if-eqz v11, :cond_bd

    .line 140
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzang:I

    move v15, v11

    goto :goto_be

    :cond_bd
    move v15, v10

    .line 142
    :goto_be
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzani:I

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanh:I

    .line 143
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzang:I

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/high16 v12, 0x40000000    # 2.0f

    cmpl-double v13, v3, v10

    if-lez v13, :cond_107

    .line 147
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    cmpl-float v10, v2, v12

    if-ltz v10, :cond_d9

    int-to-float v10, v15

    sub-float v11, v2, v5

    div-float/2addr v10, v11

    float-to-int v10, v10

    move v13, v10

    goto :goto_e4

    :cond_d9
    int-to-float v10, v15

    sub-float/2addr v12, v2

    mul-float v10, v10, v12

    sub-float v11, v2, v5

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 151
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanf:I

    move v13, v15

    .line 152
    :goto_e4
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzjd;->zzz(I)V

    .line 153
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    add-int v17, v9, v15

    move/from16 v16, v10

    move v10, v13

    move/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move v7, v15

    move v15, v9

    invoke-static/range {v10 .. v17}, Lcom/google/android/gms/internal/ads/zzjd;->zza(II[SI[SI[SI)V

    .line 154
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    add-int v10, v10, v18

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    add-int v15, v7, v18

    add-int/2addr v9, v15

    goto :goto_15a

    :cond_107
    move v7, v15

    .line 157
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, v2, v10

    if-gez v10, :cond_11a

    int-to-float v10, v7

    mul-float v10, v10, v2

    sub-float v11, v5, v2

    div-float/2addr v10, v11

    float-to-int v10, v10

    move/from16 v18, v10

    goto :goto_128

    :cond_11a
    int-to-float v10, v7

    mul-float v12, v12, v2

    sub-float/2addr v12, v5

    mul-float v10, v10, v12

    sub-float v11, v5, v2

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 161
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanf:I

    move/from16 v18, v7

    :goto_128
    add-int v14, v7, v18

    .line 162
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/ads/zzjd;->zzz(I)V

    .line 163
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v11, v9, v10

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    mul-int v13, v13, v10

    mul-int v10, v10, v7

    invoke-static {v15, v11, v12, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    add-int v13, v10, v7

    add-int/2addr v7, v9

    move/from16 v10, v18

    move/from16 v19, v14

    move-object v14, v15

    move-object/from16 v16, v15

    move v15, v7

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/google/android/gms/internal/ads/zzjd;->zza(II[SI[SI[SI)V

    .line 165
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    add-int v7, v7, v19

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    add-int v9, v9, v18

    .line 168
    :goto_15a
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzams:I

    add-int/2addr v7, v9

    if-le v7, v8, :cond_170

    .line 170
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    sub-int/2addr v2, v9

    .line 171
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v9, v9, v4

    mul-int v4, v4, v2

    invoke-static {v3, v9, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    goto :goto_173

    :cond_170
    const/4 v7, 0x1

    goto/16 :goto_33

    .line 176
    :cond_173
    :goto_173
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzahu:F

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_247

    .line 178
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    if-eq v3, v1, :cond_247

    .line 179
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzahh:I

    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-int v2, v4

    :goto_182
    const/16 v4, 0x4000

    if-gt v2, v4, :cond_240

    if-le v3, v4, :cond_18a

    goto/16 :goto_240

    .line 185
    :cond_18a
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    sub-int/2addr v4, v1

    .line 186
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzane:I

    add-int/2addr v5, v4

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamy:I

    if-le v5, v7, :cond_1a6

    .line 187
    div-int/lit8 v5, v7, 0x2

    add-int/2addr v5, v4

    add-int/2addr v7, v5

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamy:I

    .line 188
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamz:[S

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v7, v7, v8

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamz:[S

    .line 189
    :cond_1a6
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v8, v1, v7

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamz:[S

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzane:I

    mul-int v10, v10, v7

    mul-int v7, v7, v4

    invoke-static {v5, v8, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    .line 191
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzane:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzane:I

    const/4 v1, 0x0

    .line 192
    :goto_1bf
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzane:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_22a

    .line 193
    :goto_1c5
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzana:I

    add-int/lit8 v5, v4, 0x1

    mul-int v5, v5, v2

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanb:I

    mul-int v8, v7, v3

    if-le v5, v8, :cond_214

    const/4 v5, 0x1

    .line 194
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzjd;->zzz(I)V

    const/4 v4, 0x0

    .line 195
    :goto_1d6
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    if-ge v4, v5, :cond_208

    .line 196
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    mul-int v8, v8, v5

    add-int/2addr v8, v4

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamz:[S

    mul-int v10, v1, v5

    add-int/2addr v10, v4

    .line 198
    aget-short v11, v9, v10

    add-int/2addr v10, v5

    .line 199
    aget-short v5, v9, v10

    .line 200
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanb:I

    mul-int v9, v9, v3

    .line 201
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzana:I

    mul-int v12, v10, v2

    const/4 v13, 0x1

    add-int/2addr v10, v13

    mul-int v10, v10, v2

    sub-int v9, v10, v9

    sub-int/2addr v10, v12

    mul-int v11, v11, v9

    sub-int v9, v10, v9

    mul-int v9, v9, v5

    add-int/2addr v11, v9

    .line 205
    div-int/2addr v11, v10

    int-to-short v5, v11

    .line 206
    aput-short v5, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d6

    .line 208
    :cond_208
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanb:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanb:I

    .line 209
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    goto :goto_1c5

    :cond_214
    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 210
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzana:I

    if-ne v4, v3, :cond_227

    .line 212
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzana:I

    if-ne v7, v2, :cond_221

    const/4 v4, 0x1

    goto :goto_222

    :cond_221
    const/4 v4, 0x0

    .line 213
    :goto_222
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 214
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzanb:I

    :cond_227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1bf

    :cond_22a
    add-int/lit8 v1, v4, -0x1

    if-eqz v1, :cond_247

    .line 218
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamz:[S

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v5, v1, v3

    sub-int/2addr v4, v1

    mul-int v4, v4, v3

    invoke-static {v2, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzane:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjd;->zzane:I

    goto :goto_247

    :cond_240
    :goto_240
    const/4 v5, 0x1

    .line 182
    div-int/lit8 v2, v2, 0x2

    .line 183
    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_182

    :cond_247
    :goto_247
    return-void
.end method

.method private final zzz(I)V
    .registers 4

    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamw:I

    if-le v0, v1, :cond_19

    .line 53
    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamw:I

    .line 54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    :cond_19
    return-void
.end method


# virtual methods
.method public final setSpeed(F)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzaht:F

    return-void
.end method

.method public final zza(F)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzahu:F

    return-void
.end method

.method public final zza(Ljava/nio/ShortBuffer;)V
    .registers 7

    .line 24
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    div-int/2addr v0, v1

    mul-int v1, v1, v0

    shl-int/lit8 v1, v1, 0x1

    .line 26
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjd;->zzaa(I)V

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v3, v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 28
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjd;->zzgf()V

    return-void
.end method

.method public final zzb(Ljava/nio/ShortBuffer;)V
    .registers 6

    .line 31
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 33
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamx:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v0, v0, v2

    mul-int p1, p1, v2

    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzfk()V
    .registers 8

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    .line 37
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzaht:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzahu:F

    div-float/2addr v1, v2

    .line 38
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzane:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    div-float/2addr v4, v2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v3, v1

    .line 39
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzams:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzjd;->zzaa(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 40
    :goto_1f
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzams:I

    mul-int/lit8 v5, v4, 0x2

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamp:I

    mul-int v5, v5, v6

    if-ge v2, v5, :cond_33

    .line 41
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:[S

    mul-int v6, v6, v0

    add-int/2addr v6, v2

    aput-short v1, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 43
    :cond_33
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjd;->zzgf()V

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    if-le v0, v3, :cond_43

    .line 46
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    .line 47
    :cond_43
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanc:I

    .line 48
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzanf:I

    .line 49
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzane:I

    return-void
.end method

.method public final zzge()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzand:I

    return v0
.end method
