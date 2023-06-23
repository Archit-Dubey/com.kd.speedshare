.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field public static final DEFAULT_AZTEC_LAYERS:I = 0x0

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final MAX_NB_BITS:I = 0x20

.field private static final MAX_NB_BITS_COMPACT:I = 0x4

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    .line 36
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    :array_a
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .registers 10

    .line 288
    new-array p2, p2, [I

    .line 291
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_29

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v3, p1, :cond_24

    mul-int v5, v2, p1

    add-int/2addr v5, v3

    .line 294
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    sub-int v5, p1, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shl-int v5, v6, v5

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    :goto_20
    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 296
    :cond_24
    aput v4, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_29
    return-object p2
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1c

    sub-int v1, p1, v0

    move v2, v1

    :goto_6
    add-int v3, p1, v0

    if-gt v2, v3, :cond_19

    .line 206
    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 207
    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 208
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 209
    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1c
    sub-int v0, p1, p2

    .line 212
    invoke-virtual {p0, v0, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v1, v0, 0x1

    .line 213
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/2addr p1, p2

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 216
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 p2, p1, -0x1

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    return-void
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .registers 6

    .line 235
    div-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    :goto_5
    const/4 p1, 0x7

    if-ge v0, p1, :cond_40

    add-int/lit8 p1, p2, -0x3

    add-int/2addr p1, v0

    .line 239
    invoke-virtual {p3, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_16

    add-int/lit8 v1, p2, -0x5

    .line 240
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_16
    add-int/lit8 v1, v0, 0x7

    .line 242
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_23

    add-int/lit8 v1, p2, 0x5

    .line 243
    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_23
    rsub-int/lit8 v1, v0, 0x14

    .line 245
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_30

    add-int/lit8 v1, p2, 0x5

    .line 246
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_30
    rsub-int/lit8 v1, v0, 0x1b

    .line 248
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    add-int/lit8 v1, p2, -0x5

    .line 249
    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_40
    return-void

    :cond_41
    :goto_41
    const/16 p1, 0xa

    if-ge v0, p1, :cond_80

    add-int/lit8 p1, p2, -0x5

    add-int/2addr p1, v0

    .line 254
    div-int/lit8 v1, v0, 0x5

    add-int/2addr p1, v1

    .line 255
    invoke-virtual {p3, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_56

    add-int/lit8 v1, p2, -0x7

    .line 256
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_56
    add-int/lit8 v1, v0, 0xa

    .line 258
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_63

    add-int/lit8 v1, p2, 0x7

    .line 259
    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_63
    rsub-int/lit8 v1, v0, 0x1d

    .line 261
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_70

    add-int/lit8 v1, p2, 0x7

    .line 262
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_70
    rsub-int/lit8 v1, v0, 0x27

    .line 264
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7d

    add-int/lit8 v1, p2, -0x7

    .line 265
    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_80
    return-void
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 3

    const/16 v0, 0x21

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 22

    .line 65
    new-instance v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    mul-int v1, v1, p1

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0xb

    add-int/2addr v1, v2

    .line 69
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_74

    if-gez p2, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 77
    :goto_26
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-eqz v3, :cond_2d

    const/4 v4, 0x4

    :cond_2d
    if-gt v7, v4, :cond_60

    .line 82
    invoke-static {v7, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v4

    .line 83
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v8, v8, v7

    .line 84
    rem-int v9, v4, v8

    sub-int v9, v4, v9

    .line 85
    invoke-static {v0, v8}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    add-int/2addr v10, v1

    const-string v1, "Data to large for user specified layer"

    if-gt v10, v9, :cond_5a

    if-eqz v3, :cond_b8

    .line 89
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    shl-int/lit8 v10, v8, 0x6

    if-gt v9, v10, :cond_54

    goto/16 :goto_b8

    .line 91
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v6, [Ljava/lang/Object;

    .line 80
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Illegal value %s for layers"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_77
    if-gt v8, v4, :cond_1ec

    const/4 v10, 0x3

    if-gt v8, v10, :cond_7e

    const/4 v10, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v10, 0x0

    :goto_7f
    if-eqz v10, :cond_84

    add-int/lit8 v11, v8, 0x1

    goto :goto_85

    :cond_84
    move v11, v8

    .line 105
    :goto_85
    invoke-static {v11, v10}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v12

    if-gt v3, v12, :cond_1e5

    .line 111
    sget-object v13, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v14, v13, v11

    if-eq v9, v14, :cond_9c

    .line 112
    aget v7, v13, v11

    .line 113
    invoke-static {v0, v7}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v9

    move-object/from16 v18, v9

    move v9, v7

    move-object/from16 v7, v18

    .line 115
    :cond_9c
    rem-int v13, v12, v9

    sub-int v13, v12, v13

    if-eqz v10, :cond_aa

    .line 116
    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    shl-int/lit8 v15, v9, 0x6

    if-gt v14, v15, :cond_1e5

    .line 120
    :cond_aa
    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    add-int/2addr v14, v1

    if-le v14, v13, :cond_b3

    goto/16 :goto_1e5

    :cond_b3
    move-object v0, v7

    move v8, v9

    move v3, v10

    move v7, v11

    move v4, v12

    .line 125
    :cond_b8
    :goto_b8
    invoke-static {v0, v4, v8}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, v8

    .line 129
    invoke-static {v3, v7, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v4

    if-eqz v3, :cond_c8

    goto :goto_ca

    :cond_c8
    const/16 v2, 0xe

    :goto_ca
    shl-int/lit8 v8, v7, 0x2

    add-int/2addr v2, v8

    .line 133
    new-array v8, v2, [I

    const/4 v9, 0x2

    if-eqz v3, :cond_dc

    const/4 v10, 0x0

    :goto_d3
    if-ge v10, v2, :cond_da

    .line 139
    aput v10, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_d3

    :cond_da
    move v10, v2

    goto :goto_101

    :cond_dc
    add-int/lit8 v10, v2, 0x1

    .line 142
    div-int/lit8 v11, v2, 0x2

    add-int/lit8 v12, v11, -0x1

    div-int/lit8 v12, v12, 0xf

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v10, v12

    .line 144
    div-int/lit8 v12, v10, 0x2

    const/4 v13, 0x0

    :goto_ea
    if-ge v13, v11, :cond_101

    .line 146
    div-int/lit8 v14, v13, 0xf

    add-int/2addr v14, v13

    sub-int v15, v11, v13

    sub-int/2addr v15, v6

    sub-int v16, v12, v14

    add-int/lit8 v16, v16, -0x1

    .line 147
    aput v16, v8, v15

    add-int v15, v11, v13

    add-int/2addr v14, v12

    add-int/2addr v14, v6

    .line 148
    aput v14, v8, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_ea

    .line 151
    :cond_101
    :goto_101
    new-instance v11, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v11, v10}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_108
    if-ge v12, v7, :cond_199

    sub-int v14, v7, v12

    shl-int/2addr v14, v9

    if-eqz v3, :cond_112

    const/16 v15, 0x9

    goto :goto_114

    :cond_112
    const/16 v15, 0xc

    :goto_114
    add-int/2addr v14, v15

    const/4 v15, 0x0

    :goto_116
    if-ge v15, v14, :cond_18f

    shl-int/lit8 v16, v15, 0x1

    :goto_11a
    if-ge v5, v9, :cond_189

    add-int v17, v13, v16

    add-int v6, v17, v5

    .line 159
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_132

    shl-int/lit8 v6, v12, 0x1

    add-int v17, v6, v5

    .line 160
    aget v9, v8, v17

    add-int/2addr v6, v15

    aget v6, v8, v6

    invoke-virtual {v11, v9, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_132
    shl-int/lit8 v6, v14, 0x1

    add-int/2addr v6, v13

    add-int v6, v6, v16

    add-int/2addr v6, v5

    .line 162
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_14f

    shl-int/lit8 v6, v12, 0x1

    add-int v9, v6, v15

    .line 163
    aget v9, v8, v9

    add-int/lit8 v17, v2, -0x1

    sub-int v17, v17, v6

    sub-int v17, v17, v5

    aget v6, v8, v17

    invoke-virtual {v11, v9, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_14f
    shl-int/lit8 v6, v14, 0x2

    add-int/2addr v6, v13

    add-int v6, v6, v16

    add-int/2addr v6, v5

    .line 165
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_16a

    add-int/lit8 v6, v2, -0x1

    shl-int/lit8 v9, v12, 0x1

    sub-int/2addr v6, v9

    sub-int v9, v6, v5

    .line 166
    aget v9, v8, v9

    sub-int/2addr v6, v15

    aget v6, v8, v6

    invoke-virtual {v11, v9, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_16a
    mul-int/lit8 v6, v14, 0x6

    add-int/2addr v6, v13

    add-int v6, v6, v16

    add-int/2addr v6, v5

    .line 168
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_184

    add-int/lit8 v6, v2, -0x1

    shl-int/lit8 v9, v12, 0x1

    sub-int/2addr v6, v9

    sub-int/2addr v6, v15

    .line 169
    aget v6, v8, v6

    add-int/2addr v9, v5

    aget v9, v8, v9

    invoke-virtual {v11, v6, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_184
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x2

    goto :goto_11a

    :cond_189
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x2

    goto :goto_116

    :cond_18f
    shl-int/lit8 v5, v14, 0x3

    add-int/2addr v13, v5

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x2

    goto/16 :goto_108

    .line 177
    :cond_199
    invoke-static {v11, v3, v10, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    if-eqz v3, :cond_1a5

    .line 181
    div-int/lit8 v1, v10, 0x2

    const/4 v2, 0x5

    invoke-static {v11, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_1d0

    .line 183
    :cond_1a5
    div-int/lit8 v1, v10, 0x2

    const/4 v4, 0x7

    invoke-static {v11, v1, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 184
    :goto_1ae
    div-int/lit8 v8, v2, 0x2

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    if-ge v5, v8, :cond_1d0

    and-int/lit8 v8, v1, 0x1

    :goto_1b6
    if-ge v8, v10, :cond_1cb

    sub-int v9, v1, v4

    .line 186
    invoke-virtual {v11, v9, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v13, v1, v4

    .line 187
    invoke-virtual {v11, v13, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 188
    invoke-virtual {v11, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 189
    invoke-virtual {v11, v8, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_1b6

    :cond_1cb
    add-int/lit8 v5, v5, 0xf

    add-int/lit8 v4, v4, 0x10

    goto :goto_1ae

    .line 194
    :cond_1d0
    :goto_1d0
    new-instance v1, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v1}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    .line 195
    invoke-virtual {v1, v3}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    .line 196
    invoke-virtual {v1, v10}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    .line 197
    invoke-virtual {v1, v7}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    .line 198
    invoke-virtual {v1, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    .line 199
    invoke-virtual {v1, v11}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    return-object v1

    :cond_1e5
    :goto_1e5
    const/4 v12, 0x1

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_77

    .line 101
    :cond_1ec
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1f5

    :goto_1f4
    throw v0

    :goto_1f5
    goto :goto_1f4
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .registers 6

    .line 273
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, p2

    .line 274
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 275
    div-int v2, p1, p2

    .line 276
    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object p0

    sub-int/2addr v2, v0

    .line 277
    invoke-virtual {v1, p0, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 278
    rem-int/2addr p1, p2

    .line 279
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v1, 0x0

    .line 280
    invoke-virtual {v0, v1, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 281
    array-length p1, p0

    :goto_23
    if-ge v1, p1, :cond_2d

    aget v2, p0, v1

    .line 282
    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2d
    return-object v0
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .registers 5

    .line 221
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v1, 0x4

    if-eqz p0, :cond_1b

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x2

    .line 223
    invoke-virtual {v0, p1, p0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 p2, p2, -0x1

    const/4 p0, 0x6

    .line 224
    invoke-virtual {v0, p2, p0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 p0, 0x1c

    .line 225
    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object p0

    goto :goto_2e

    :cond_1b
    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x5

    .line 227
    invoke-virtual {v0, p1, p0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 p2, p2, -0x1

    const/16 p0, 0xb

    .line 228
    invoke-virtual {v0, p2, p0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 p0, 0x28

    .line 229
    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object p0

    :goto_2e
    return-object p0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .registers 4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_32

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2f

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2c

    const/16 v0, 0xa

    if-eq p0, v0, :cond_29

    const/16 v0, 0xc

    if-ne p0, v0, :cond_15

    .line 312
    sget-object p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object p0

    .line 314
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported word size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_29
    sget-object p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object p0

    .line 308
    :cond_2c
    sget-object p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object p0

    .line 306
    :cond_2f
    sget-object p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object p0

    .line 304
    :cond_32
    sget-object p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object p0
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .registers 11

    .line 319
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 321
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v1, :cond_40

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_14
    if-ge v6, p1, :cond_29

    add-int v8, v5, v6

    if-ge v8, v1, :cond_20

    .line 326
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_26

    :cond_20
    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    shl-int v8, v2, v8

    or-int/2addr v7, v8

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_29
    and-int v6, v7, v3

    if-ne v6, v3, :cond_33

    .line 331
    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :goto_30
    add-int/lit8 v5, v5, -0x1

    goto :goto_3e

    :cond_33
    if-nez v6, :cond_3b

    or-int/lit8 v6, v7, 0x1

    .line 334
    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_30

    .line 337
    :cond_3b
    invoke-virtual {v0, v7, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :goto_3e
    add-int/2addr v5, p1

    goto :goto_10

    :cond_40
    return-object v0
.end method

.method private static totalBitsInLayer(IZ)I
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x58

    goto :goto_7

    :cond_5
    const/16 p1, 0x70

    :goto_7
    shl-int/lit8 v0, p0, 0x4

    add-int/2addr p1, v0

    mul-int p1, p1, p0

    return p1
.end method
