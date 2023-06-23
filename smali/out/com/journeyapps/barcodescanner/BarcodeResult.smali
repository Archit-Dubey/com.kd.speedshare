.class public Lcom/journeyapps/barcodescanner/BarcodeResult;
.super Ljava/lang/Object;
.source "BarcodeResult.java"


# static fields
.field private static final PREVIEW_DOT_WIDTH:F = 10.0f

.field private static final PREVIEW_LINE_WIDTH:F = 4.0f


# instance fields
.field protected mResult:Lcom/google/zxing/Result;

.field private final mScaleFactor:I

.field protected sourceData:Lcom/journeyapps/barcodescanner/SourceData;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mScaleFactor:I

    .line 31
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 32
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->sourceData:Lcom/journeyapps/barcodescanner/SourceData;

    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V
    .registers 12

    if-eqz p2, :cond_22

    if-eqz p3, :cond_22

    .line 38
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    int-to-float p4, p4

    div-float v2, v0, p4

    .line 39
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    div-float v3, p2, p4

    .line 40
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result p2

    div-float v4, p2, p4

    .line 41
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    div-float v5, p2, p4

    move-object v1, p0

    move-object v6, p1

    .line 38
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_22
    return-void
.end method


# virtual methods
.method public getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->sourceData:Lcom/journeyapps/barcodescanner/SourceData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/SourceData;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapScaleFactor()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getBitmapWithResultPoints(I)Landroid/graphics/Bitmap;
    .registers 10

    .line 69
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 73
    array-length v2, v1

    if-lez v2, :cond_8b

    if-eqz v0, :cond_8b

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 76
    invoke-virtual {v3, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 78
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    array-length p1, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne p1, v6, :cond_44

    const/high16 p1, 0x40800000    # 4.0f

    .line 80
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    aget-object p1, v1, v5

    aget-object v1, v1, v4

    invoke-static {v3, v0, p1, v1, v6}, Lcom/journeyapps/barcodescanner/BarcodeResult;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V

    goto :goto_8a

    .line 82
    :cond_44
    array-length p1, v1

    const/4 v7, 0x4

    if-ne p1, v7, :cond_6c

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 83
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p1

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq p1, v7, :cond_5c

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 84
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p1

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne p1, v7, :cond_6c

    .line 86
    :cond_5c
    aget-object p1, v1, v5

    aget-object v4, v1, v4

    invoke-static {v3, v0, p1, v4, v6}, Lcom/journeyapps/barcodescanner/BarcodeResult;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V

    .line 87
    aget-object p1, v1, v6

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-static {v3, v0, p1, v1, v6}, Lcom/journeyapps/barcodescanner/BarcodeResult;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V

    goto :goto_8a

    :cond_6c
    const/high16 p1, 0x41200000    # 10.0f

    .line 89
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    array-length p1, v1

    :goto_72
    if-ge v5, p1, :cond_8a

    aget-object v4, v1, v5

    if-eqz v4, :cond_87

    .line 92
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    div-float/2addr v4, v7

    invoke-virtual {v3, v6, v4, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    :cond_8a
    :goto_8a
    move-object v0, v2

    :cond_8b
    return-object v0
.end method

.method public getRawBytes()[B
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/google/zxing/Result;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    return-object v0
.end method

.method public getResultMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
