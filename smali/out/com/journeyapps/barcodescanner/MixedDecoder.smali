.class public Lcom/journeyapps/barcodescanner/MixedDecoder;
.super Lcom/journeyapps/barcodescanner/Decoder;
.source "MixedDecoder.java"


# instance fields
.field private isInverted:Z


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;-><init>(Lcom/google/zxing/Reader;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/MixedDecoder;->isInverted:Z

    return-void
.end method


# virtual methods
.method protected toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;
    .registers 4

    .line 36
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/MixedDecoder;->isInverted:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/MixedDecoder;->isInverted:Z

    .line 38
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object v0

    :cond_16
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/MixedDecoder;->isInverted:Z

    .line 41
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object v0
.end method
