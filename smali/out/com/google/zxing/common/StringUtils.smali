.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    const-string v1, "SJIS"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    const-string v1, "EUC_JP"

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_19

    .line 52
    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 53
    sget-object v0, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_19
    array-length v1, v0

    .line 78
    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v4, :cond_35

    aget-byte v2, v0, v6

    const/16 v7, -0x11

    if-ne v2, v7, :cond_35

    aget-byte v2, v0, v5

    const/16 v7, -0x45

    if-ne v2, v7, :cond_35

    aget-byte v2, v0, v3

    const/16 v7, -0x41

    if-ne v2, v7, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_46
    if-ge v9, v1, :cond_f5

    if-nez v5, :cond_4e

    if-nez v7, :cond_4e

    if-eqz v8, :cond_f5

    .line 87
    :cond_4e
    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    if-eqz v8, :cond_81

    if-lez v10, :cond_5d

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_80

    add-int/lit8 v10, v10, -0x1

    goto :goto_81

    :cond_5d
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_81

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_80

    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x20

    if-nez v0, :cond_6e

    add-int/lit8 v12, v12, 0x1

    goto :goto_81

    :cond_6e
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x10

    if-nez v0, :cond_77

    add-int/lit8 v13, v13, 0x1

    goto :goto_81

    :cond_77
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x8

    if-nez v0, :cond_80

    add-int/lit8 v14, v14, 0x1

    goto :goto_81

    :cond_80
    const/4 v8, 0x0

    :cond_81
    :goto_81
    const/16 v0, 0x7f

    if-eqz v5, :cond_9f

    if-le v4, v0, :cond_8d

    const/16 v0, 0xa0

    if-ge v4, v0, :cond_8d

    const/4 v5, 0x0

    goto :goto_9f

    :cond_8d
    const/16 v0, 0x9f

    if-le v4, v0, :cond_9f

    const/16 v0, 0xc0

    if-lt v4, v0, :cond_9d

    const/16 v0, 0xd7

    if-eq v4, v0, :cond_9d

    const/16 v0, 0xf7

    if-ne v4, v0, :cond_9f

    :cond_9d
    add-int/lit8 v16, v16, 0x1

    :cond_9f
    :goto_9f
    if-eqz v7, :cond_ee

    if-lez v11, :cond_b3

    const/16 v0, 0x40

    if-lt v4, v0, :cond_ed

    const/16 v0, 0x7f

    if-eq v4, v0, :cond_ed

    const/16 v0, 0xfc

    if-le v4, v0, :cond_b0

    goto :goto_ed

    :cond_b0
    add-int/lit8 v11, v11, -0x1

    goto :goto_ee

    :cond_b3
    const/16 v0, 0x80

    if-eq v4, v0, :cond_ed

    const/16 v0, 0xa0

    if-eq v4, v0, :cond_ed

    const/16 v0, 0xef

    if-le v4, v0, :cond_c0

    goto :goto_ed

    :cond_c0
    const/16 v0, 0xa0

    if-le v4, v0, :cond_d7

    const/16 v0, 0xe0

    if-ge v4, v0, :cond_d7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v18, 0x1

    if-le v0, v15, :cond_d2

    move v15, v0

    move/from16 v18, v15

    goto :goto_d4

    :cond_d2
    move/from16 v18, v0

    :goto_d4
    const/16 v17, 0x0

    goto :goto_ee

    :cond_d7
    const/16 v0, 0x7f

    if-le v4, v0, :cond_e8

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v0, v17, 0x1

    if-le v0, v6, :cond_e5

    move v6, v0

    move/from16 v17, v6

    goto :goto_ea

    :cond_e5
    move/from16 v17, v0

    goto :goto_ea

    :cond_e8
    const/16 v17, 0x0

    :goto_ea
    const/16 v18, 0x0

    goto :goto_ee

    :cond_ed
    :goto_ed
    const/4 v7, 0x0

    :cond_ee
    :goto_ee
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v4, 0x3

    goto/16 :goto_46

    :cond_f5
    if-eqz v8, :cond_fa

    if-lez v10, :cond_fa

    const/4 v8, 0x0

    :cond_fa
    if-eqz v7, :cond_ff

    if-lez v11, :cond_ff

    const/4 v7, 0x0

    :cond_ff
    const-string v0, "UTF8"

    if-eqz v8, :cond_10a

    if-nez v2, :cond_109

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    if-lez v12, :cond_10a

    :cond_109
    return-object v0

    :cond_10a
    const-string v2, "SJIS"

    if-eqz v7, :cond_118

    .line 183
    sget-boolean v4, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v4, :cond_117

    const/4 v4, 0x3

    if-ge v15, v4, :cond_117

    if-lt v6, v4, :cond_118

    :cond_117
    return-object v2

    :cond_118
    const-string v4, "ISO8859_1"

    if-eqz v5, :cond_129

    if-eqz v7, :cond_129

    const/4 v6, 0x2

    if-ne v15, v6, :cond_123

    if-eq v3, v6, :cond_127

    :cond_123
    mul-int/lit8 v0, v16, 0xa

    if-lt v0, v1, :cond_128

    :cond_127
    return-object v2

    :cond_128
    return-object v4

    :cond_129
    if-eqz v5, :cond_12c

    return-object v4

    :cond_12c
    if-eqz v7, :cond_12f

    return-object v2

    :cond_12f
    if-eqz v8, :cond_132

    return-object v0

    .line 207
    :cond_132
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    return-object v0
.end method
