.class public Lcom/journeyapps/barcodescanner/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private reader:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    return-void
.end method


# virtual methods
.method protected decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    :try_start_5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    instance-of v0, v0, Lcom/google/zxing/MultiFormatReader;

    if-eqz v0, :cond_19

    .line 82
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    check-cast v0, Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_27
    .catchall {:try_start_5 .. :try_end_13} :catchall_20

    .line 90
    :goto_13
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    return-object p1

    .line 84
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    invoke-interface {v0, p1}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_27
    .catchall {:try_start_19 .. :try_end_1f} :catchall_20

    goto :goto_13

    :catchall_20
    move-exception p1

    .line 90
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    throw p1

    :catch_27
    const/4 p1, 0x0

    goto :goto_13
.end method

.method public decode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;->toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPossibleResultPoints()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getReader()Lcom/google/zxing/Reader;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    return-object v0
.end method

.method protected toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;
    .registers 4

    .line 67
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object v0
.end method
