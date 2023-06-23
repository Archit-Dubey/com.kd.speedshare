.class public Lcom/journeyapps/barcodescanner/BarcodeEncoder;
.super Ljava/lang/Object;
.source "BarcodeEncoder.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;
    .registers 11

    .line 33
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 34
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 35
    new-array v1, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v7, :cond_29

    mul-int v3, v2, v6

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v6, :cond_26

    add-int v5, v3, v4

    .line 39
    invoke-virtual {p1, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_20

    const/high16 v8, -0x1000000

    goto :goto_21

    :cond_20
    const/4 v8, -0x1

    :goto_21
    aput v8, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 43
    :cond_29
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v6

    .line 44
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 51
    :try_start_0
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1
    :try_end_9
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_9} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    .line 56
    new-instance p2, Lcom/google/zxing/WriterException;

    invoke-direct {p2, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_11
    move-exception p1

    .line 53
    throw p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 63
    :try_start_0
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1
    :try_end_e
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    .line 67
    new-instance p2, Lcom/google/zxing/WriterException;

    invoke-direct {p2, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_16
    move-exception p1

    .line 65
    throw p1
.end method

.method public encodeBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->createBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public encodeBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 78
    invoke-virtual/range {p0 .. p5}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->createBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
