.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combins(II)I
    .registers 6

    sub-int v0, p0, p1

    if-le v0, p1, :cond_7

    move v3, v0

    move v0, p1

    move p1, v3

    :cond_7
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_9
    if-le p0, p1, :cond_15

    mul-int v1, v1, p0

    if-gt v2, v0, :cond_12

    .line 118
    div-int/2addr v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_12
    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_15
    :goto_15
    if-gt v2, v0, :cond_1b

    .line 123
    div-int/2addr v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1b
    return v1
.end method

.method public static getRSSvalue([IIZ)I
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 68
    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    if-ge v4, v2, :cond_f

    aget v6, v0, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 73
    :cond_f
    array-length v2, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_13
    add-int/lit8 v8, v2, -0x1

    if-ge v4, v8, :cond_72

    const/4 v9, 0x1

    shl-int v10, v9, v4

    or-int/2addr v7, v10

    const/4 v11, 0x1

    .line 77
    :goto_1c
    aget v12, v0, v4

    if-ge v11, v12, :cond_6c

    sub-int v12, v5, v11

    add-int/lit8 v13, v12, -0x1

    sub-int v14, v2, v4

    add-int/lit8 v15, v14, -0x2

    .line 79
    invoke-static {v13, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v13

    if-eqz p2, :cond_3d

    if-nez v7, :cond_3d

    add-int/lit8 v3, v14, -0x1

    sub-int v9, v12, v3

    if-lt v9, v3, :cond_3d

    sub-int v3, v12, v14

    .line 82
    invoke-static {v3, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v3

    sub-int/2addr v13, v3

    :cond_3d
    add-int/lit8 v3, v14, -0x1

    const/4 v9, 0x1

    if-le v3, v9, :cond_5e

    sub-int v3, v12, v15

    const/4 v15, 0x0

    :goto_45
    if-le v3, v1, :cond_58

    sub-int v16, v12, v3

    add-int/lit8 v0, v16, -0x1

    add-int/lit8 v9, v14, -0x3

    .line 89
    invoke-static {v0, v9}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v0

    add-int/2addr v15, v0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    const/4 v9, 0x1

    goto :goto_45

    :cond_58
    sub-int v0, v8, v4

    mul-int v15, v15, v0

    sub-int/2addr v13, v15

    goto :goto_62

    :cond_5e
    if-le v12, v1, :cond_62

    add-int/lit8 v13, v13, -0x1

    :cond_62
    :goto_62
    add-int/2addr v6, v13

    add-int/lit8 v11, v11, 0x1

    xor-int/lit8 v0, v10, -0x1

    and-int/2addr v7, v0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    goto :goto_1c

    :cond_6c
    sub-int/2addr v5, v11

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_13

    :cond_72
    return v6
.end method
