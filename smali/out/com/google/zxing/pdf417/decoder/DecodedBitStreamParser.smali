.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const-string v0, "ISO-8859-1"

    .line 73
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 82
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v0, 0x384

    .line 83
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v1, 0x2

    .line 85
    :goto_2f
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v1, v3, :cond_41

    add-int/lit8 v3, v1, -0x1

    .line 86
    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 25

    move/from16 v0, p0

    .line 444
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const/16 v4, 0x3a0

    const/16 v5, 0x386

    const-wide/16 v6, 0x384

    const/4 v8, 0x6

    const/16 v9, 0x39c

    const/16 v10, 0x385

    const/16 v11, 0x384

    const/4 v15, 0x0

    if-ne v0, v10, :cond_9b

    new-array v0, v8, [I

    add-int/lit8 v16, p3, 0x1

    .line 452
    aget v17, p1, p3

    move/from16 v12, v16

    move/from16 v13, v17

    const/16 v16, 0x0

    :goto_27
    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    .line 453
    :goto_2b
    aget v14, p1, v15

    if-ge v12, v14, :cond_83

    if-nez v16, :cond_83

    add-int/lit8 v14, v17, 0x1

    .line 454
    aput v13, v0, v17

    mul-long v18, v18, v6

    int-to-long v6, v13

    add-long v18, v18, v6

    add-int/lit8 v6, v12, 0x1

    .line 457
    aget v13, p1, v12

    if-eq v13, v11, :cond_76

    if-eq v13, v10, :cond_76

    if-eq v13, v5, :cond_76

    if-eq v13, v9, :cond_76

    if-eq v13, v4, :cond_76

    if-eq v13, v3, :cond_76

    if-ne v13, v2, :cond_4d

    goto :goto_76

    .line 469
    :cond_4d
    rem-int/lit8 v7, v14, 0x5

    if-nez v7, :cond_6c

    if-lez v14, :cond_6c

    const/4 v7, 0x0

    :goto_54
    if-ge v7, v8, :cond_68

    rsub-int/lit8 v12, v7, 0x5

    mul-int/lit8 v12, v12, 0x8

    shr-long v2, v18, v12

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 473
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    goto :goto_54

    :cond_68
    move v12, v6

    const-wide/16 v6, 0x384

    goto :goto_27

    :cond_6c
    move v12, v6

    move/from16 v17, v14

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const-wide/16 v6, 0x384

    goto :goto_2b

    :cond_76
    :goto_76
    add-int/lit8 v12, v6, -0x1

    move/from16 v17, v14

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const-wide/16 v6, 0x384

    const/16 v16, 0x1

    goto :goto_2b

    .line 482
    :cond_83
    aget v2, p1, v15

    if-ne v12, v2, :cond_8e

    if-ge v13, v11, :cond_8e

    add-int/lit8 v2, v17, 0x1

    .line 483
    aput v13, v0, v17

    goto :goto_90

    :cond_8e
    move/from16 v2, v17

    :goto_90
    if-ge v15, v2, :cond_101

    .line 490
    aget v3, v0, v15

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_90

    :cond_9b
    if-ne v0, v9, :cond_ff

    move/from16 v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    .line 499
    :goto_a3
    aget v12, p1, v15

    if-ge v0, v12, :cond_fd

    if-nez v2, :cond_fd

    add-int/lit8 v12, v0, 0x1

    .line 500
    aget v0, p1, v0

    if-ge v0, v11, :cond_bd

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v13, 0x384

    mul-long v6, v6, v13

    int-to-long v13, v0

    add-long/2addr v6, v13

    move v0, v12

    const/16 v13, 0x39b

    const/16 v14, 0x39a

    goto :goto_da

    :cond_bd
    if-eq v0, v11, :cond_d2

    if-eq v0, v10, :cond_d2

    if-eq v0, v5, :cond_d2

    if-eq v0, v9, :cond_d2

    if-eq v0, v4, :cond_d2

    const/16 v13, 0x39b

    const/16 v14, 0x39a

    if-eq v0, v13, :cond_d6

    if-ne v0, v14, :cond_d0

    goto :goto_d6

    :cond_d0
    move v0, v12

    goto :goto_da

    :cond_d2
    const/16 v13, 0x39b

    const/16 v14, 0x39a

    :cond_d6
    :goto_d6
    add-int/lit8 v12, v12, -0x1

    move v0, v12

    const/4 v2, 0x1

    .line 517
    :goto_da
    rem-int/lit8 v12, v3, 0x5

    if-nez v12, :cond_f8

    if-lez v3, :cond_f8

    const/4 v3, 0x0

    :goto_e1
    if-ge v3, v8, :cond_f5

    rsub-int/lit8 v12, v3, 0x5

    mul-int/lit8 v12, v12, 0x8

    shr-long v4, v6, v12

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 521
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x3a0

    const/16 v5, 0x386

    goto :goto_e1

    :cond_f5
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    :cond_f8
    const/16 v4, 0x3a0

    const/16 v5, 0x386

    goto :goto_a3

    :cond_fd
    move v12, v0

    goto :goto_101

    :cond_ff
    move/from16 v12, p3

    .line 528
    :cond_101
    :goto_101
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v12
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 100
    aget v2, p0, v2

    .line 101
    new-instance v3, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    const/4 v4, 0x2

    :goto_12
    const/4 v5, 0x0

    .line 102
    aget v5, p0, v5

    if-ge v4, v5, :cond_6d

    const/16 v5, 0x391

    if-eq v2, v5, :cond_58

    packed-switch v2, :pswitch_data_88

    packed-switch v2, :pswitch_data_92

    add-int/lit8 v4, v4, -0x1

    .line 142
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_60

    .line 131
    :pswitch_28
    invoke-static {p0, v4, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    goto :goto_60

    :pswitch_2d
    add-int/lit8 v2, v4, 0x1

    .line 118
    aget v1, p0, v4

    .line 119
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_60

    :pswitch_3e
    add-int/lit8 v2, v4, 0x2

    goto :goto_60

    :pswitch_41
    add-int/lit8 v2, v4, 0x1

    goto :goto_60

    .line 136
    :pswitch_44
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 115
    :pswitch_49
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_60

    .line 109
    :pswitch_4e
    invoke-static {v2, p0, v1, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_60

    .line 105
    :pswitch_53
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_60

    :cond_58
    add-int/lit8 v2, v4, 0x1

    .line 112
    aget v4, p0, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :goto_60
    array-length v4, p0

    if-ge v2, v4, :cond_68

    add-int/lit8 v4, v2, 0x1

    .line 146
    aget v2, p0, v2

    goto :goto_12

    .line 148
    :cond_68
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 151
    :cond_6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_81

    .line 154
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    .line 152
    :cond_81
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    goto :goto_87

    :goto_86
    throw p0

    :goto_87
    goto :goto_86

    :pswitch_data_88
    .packed-switch 0x384
        :pswitch_53
        :pswitch_4e
        :pswitch_49
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x39a
        :pswitch_44
        :pswitch_44
        :pswitch_4e
        :pswitch_41
        :pswitch_3e
        :pswitch_2d
        :pswitch_28
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 626
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    if-ge v2, p1, :cond_20

    .line 628
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 630
    :cond_20
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 631
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_31

    .line 634
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 632
    :cond_31
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    goto :goto_37

    :goto_36
    throw p0

    :goto_37
    goto :goto_36
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 161
    aget v2, p0, v1

    if-gt v0, v2, :cond_78

    const/4 v0, 0x2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_16

    .line 167
    aget v4, p0, p1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 169
    :cond_16
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-static {p0, p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 176
    aget v0, p0, p1

    const/16 v2, 0x39b

    const/16 v3, 0x39a

    const/4 v4, 0x1

    if-ne v0, v2, :cond_6e

    add-int/lit8 p1, p1, 0x1

    .line 178
    aget v0, p0, v1

    sub-int/2addr v0, p1

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 182
    :goto_43
    aget v6, p0, v1

    if-ge p1, v6, :cond_66

    if-nez v2, :cond_66

    add-int/lit8 v6, p1, 0x1

    .line 183
    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_58

    add-int/lit8 v7, v5, 0x1

    .line 185
    aput p1, v0, v5

    move p1, v6

    move v5, v7

    goto :goto_43

    :cond_58
    if-ne p1, v3, :cond_61

    .line 189
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 p1, v6, 0x1

    const/4 v2, 0x1

    goto :goto_43

    .line 194
    :cond_61
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 199
    :cond_66
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    goto :goto_77

    .line 200
    :cond_6e
    aget p0, p0, p1

    if-ne p0, v3, :cond_77

    .line 201
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 p1, p1, 0x1

    :cond_77
    :goto_77
    return p1

    .line 163
    :cond_78
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    goto :goto_7e

    :goto_7d
    throw p0

    :goto_7e
    goto :goto_7d
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 20

    move-object/from16 v0, p3

    .line 290
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 291
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v3, 0x0

    move/from16 v4, p2

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_103

    .line 294
    aget v6, p0, v5

    .line 296
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x1c

    const/16 v9, 0x1b

    const/16 v10, 0x20

    const/16 v11, 0x391

    const/16 v12, 0x384

    const/16 v13, 0x1d

    const/16 v14, 0x1a

    packed-switch v7, :pswitch_data_104

    goto/16 :goto_f9

    :pswitch_29
    if-ge v6, v13, :cond_30

    .line 405
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v10, v1, v6

    goto :goto_4a

    :cond_30
    if-ne v6, v13, :cond_36

    .line 408
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f9

    :cond_36
    if-ne v6, v11, :cond_3f

    .line 412
    aget v1, p1, v5

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    :cond_3f
    if-ne v6, v12, :cond_56

    .line 414
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f9

    :pswitch_45
    if-ge v6, v14, :cond_4d

    add-int/lit8 v6, v6, 0x41

    int-to-char v10, v6

    :goto_4a
    move-object v1, v2

    goto/16 :goto_fa

    :cond_4d
    if-ne v6, v14, :cond_50

    goto :goto_4a

    :cond_50
    if-ne v6, v12, :cond_56

    .line 396
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f9

    :cond_56
    :goto_56
    move-object v1, v2

    goto/16 :goto_f9

    :pswitch_59
    if-ge v6, v13, :cond_61

    .line 375
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v10, v7, v6

    goto/16 :goto_fa

    :cond_61
    if-ne v6, v13, :cond_67

    .line 378
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f9

    :cond_67
    if-ne v6, v11, :cond_71

    .line 380
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f9

    :cond_71
    if-ne v6, v12, :cond_f9

    .line 382
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f9

    :pswitch_77
    const/16 v7, 0x19

    if-ge v6, v7, :cond_81

    .line 350
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v10, v7, v6

    goto/16 :goto_fa

    :cond_81
    if-ne v6, v7, :cond_87

    .line 353
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f9

    :cond_87
    if-ne v6, v14, :cond_8b

    goto/16 :goto_fa

    :cond_8b
    if-ne v6, v9, :cond_91

    .line 357
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f9

    :cond_91
    if-ne v6, v8, :cond_97

    .line 359
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f9

    :cond_97
    if-ne v6, v13, :cond_9c

    .line 363
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_b7

    :cond_9c
    if-ne v6, v11, :cond_a6

    .line 365
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f9

    :cond_a6
    if-ne v6, v12, :cond_f9

    .line 367
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_f9

    :pswitch_ab
    if-ge v6, v14, :cond_b0

    add-int/lit8 v6, v6, 0x61

    goto :goto_d8

    :cond_b0
    if-ne v6, v14, :cond_b3

    goto :goto_fa

    :cond_b3
    if-ne v6, v9, :cond_bc

    .line 331
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_b7
    const/4 v10, 0x0

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    goto :goto_fa

    :cond_bc
    if-ne v6, v8, :cond_c1

    .line 333
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_f9

    :cond_c1
    if-ne v6, v13, :cond_c6

    .line 337
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_b7

    :cond_c6
    if-ne v6, v11, :cond_cf

    .line 340
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f9

    :cond_cf
    if-ne v6, v12, :cond_f9

    .line 342
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_f9

    :pswitch_d4
    if-ge v6, v14, :cond_da

    add-int/lit8 v6, v6, 0x41

    :goto_d8
    int-to-char v10, v6

    goto :goto_fa

    :cond_da
    if-ne v6, v14, :cond_dd

    goto :goto_fa

    :cond_dd
    if-ne v6, v9, :cond_e2

    .line 306
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_f9

    :cond_e2
    if-ne v6, v8, :cond_e7

    .line 308
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_f9

    :cond_e7
    if-ne v6, v13, :cond_ec

    .line 312
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_b7

    :cond_ec
    if-ne v6, v11, :cond_f5

    .line 314
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f9

    :cond_f5
    if-ne v6, v12, :cond_f9

    .line 316
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :cond_f9
    :goto_f9
    const/4 v10, 0x0

    :goto_fa
    if-eqz v10, :cond_ff

    .line 421
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_ff
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    :cond_103
    return-void

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_ab
        :pswitch_77
        :pswitch_59
        :pswitch_45
        :pswitch_29
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 546
    :goto_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_4f

    if-nez v2, :cond_4f

    add-int/lit8 v4, p1, 0x1

    .line 547
    aget p1, p0, p1

    .line 548
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_17

    const/4 v2, 0x1

    :cond_17
    const/16 v5, 0x384

    if-ge p1, v5, :cond_20

    .line 552
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_20
    if-eq p1, v5, :cond_36

    const/16 v5, 0x385

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39c

    if-eq p1, v5, :cond_36

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39b

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39a

    if-ne p1, v5, :cond_39

    :cond_36
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    .line 565
    :cond_39
    :goto_39
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_43

    const/16 v5, 0x386

    if-eq p1, v5, :cond_43

    if-eqz v2, :cond_4d

    :cond_43
    if-lez v3, :cond_4d

    .line 573
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    .line 574
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_4d
    move p1, v4

    goto :goto_7

    :cond_4f
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 12

    const/4 v0, 0x0

    .line 220
    aget v1, p0, v0

    sub-int/2addr v1, p1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    new-array v1, v1, [I

    .line 222
    aget v3, p0, v0

    sub-int/2addr v3, p1

    shl-int/2addr v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 226
    :goto_10
    aget v6, p0, v0

    if-ge p1, v6, :cond_50

    if-nez v4, :cond_50

    add-int/lit8 v6, p1, 0x1

    .line 227
    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_2c

    .line 229
    div-int/lit8 v7, p1, 0x1e

    aput v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    .line 230
    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v7

    add-int/lit8 v5, v5, 0x2

    :goto_2a
    move p1, v6

    goto :goto_10

    :cond_2c
    const/16 v8, 0x391

    if-eq p1, v8, :cond_45

    const/16 v8, 0x3a0

    if-eq p1, v8, :cond_41

    packed-switch p1, :pswitch_data_54

    packed-switch p1, :pswitch_data_5e

    goto :goto_2a

    :pswitch_3b
    add-int/lit8 p1, v5, 0x1

    .line 236
    aput v7, v1, v5

    move v5, p1

    goto :goto_2a

    :cond_41
    :pswitch_41
    add-int/lit8 p1, v6, -0x1

    const/4 v4, 0x1

    goto :goto_10

    .line 254
    :cond_45
    aput v8, v1, v5

    add-int/lit8 p1, v6, 0x1

    .line 255
    aget v6, p0, v6

    .line 256
    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 262
    :cond_50
    invoke-static {v1, v3, v5, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    :pswitch_data_54
    .packed-switch 0x384
        :pswitch_3b
        :pswitch_41
        :pswitch_41
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x39a
        :pswitch_41
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method
