.class public Lcom/journeyapps/barcodescanner/BarcodeView;
.super Lcom/journeyapps/barcodescanner/CameraPreview;
.source "BarcodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    }
.end annotation


# instance fields
.field private callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

.field private decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field private decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

.field private decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

.field private final resultCallback:Landroid/os/Handler$Callback;

.field private resultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;)V

    .line 29
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 32
    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultCallback:Landroid/os/Handler$Callback;

    .line 71
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 32
    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultCallback:Landroid/os/Handler$Callback;

    .line 78
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 32
    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultCallback:Landroid/os/Handler$Callback;

    .line 84
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-object p0
.end method

.method private createDecoder()Lcom/journeyapps/barcodescanner/Decoder;
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    if-nez v0, :cond_a

    .line 96
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->createDefaultDecoderFactory()Lcom/journeyapps/barcodescanner/DecoderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    .line 98
    :cond_a
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;-><init>()V

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 100
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    invoke-interface {v2, v1}, Lcom/journeyapps/barcodescanner/DecoderFactory;->createDecoder(Ljava/util/Map;)Lcom/journeyapps/barcodescanner/Decoder;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;->setDecoder(Lcom/journeyapps/barcodescanner/Decoder;)V

    return-object v1
.end method

.method private initialize()V
    .registers 3

    .line 89
    new-instance v0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    .line 90
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultHandler:Landroid/os/Handler;

    return-void
.end method

.method private startDecoderThread()V
    .registers 5

    .line 177
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->stopDecoderThread()V

    .line 179
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v0, v1, :cond_2c

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->isPreviewActive()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 183
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->getCameraInstance()Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    move-result-object v1

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->createDecoder()Lcom/journeyapps/barcodescanner/Decoder;

    move-result-object v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/journeyapps/barcodescanner/DecoderThread;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/Decoder;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 184
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->getPreviewFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->setCropRect(Landroid/graphics/Rect;)V

    .line 185
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->start()V

    :cond_2c
    return-void
.end method

.method private stopDecoderThread()V
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

    if-eqz v0, :cond_a

    .line 200
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->stop()V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

    :cond_a
    return-void
.end method


# virtual methods
.method protected createDefaultDecoderFactory()Lcom/journeyapps/barcodescanner/DecoderFactory;
    .registers 2

    .line 172
    new-instance v0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>()V

    return-object v0
.end method

.method public decodeContinuous(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V
    .registers 3

    .line 155
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 156
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 157
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->startDecoderThread()V

    return-void
.end method

.method public decodeSingle(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V
    .registers 3

    .line 141
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->SINGLE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 142
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 143
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->startDecoderThread()V

    return-void
.end method

.method public getDecoderFactory()Lcom/journeyapps/barcodescanner/DecoderFactory;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    return-object v0
.end method

.method public pause()V
    .registers 1

    .line 213
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->stopDecoderThread()V

    .line 215
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->pause()V

    return-void
.end method

.method protected previewStarted()V
    .registers 1

    .line 192
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->previewStarted()V

    .line 194
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->startDecoderThread()V

    return-void
.end method

.method public setDecoderFactory(Lcom/journeyapps/barcodescanner/DecoderFactory;)V
    .registers 3

    .line 124
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 126
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    .line 127
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

    if-eqz p1, :cond_10

    .line 128
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->createDecoder()Lcom/journeyapps/barcodescanner/Decoder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->setDecoder(Lcom/journeyapps/barcodescanner/Decoder;)V

    :cond_10
    return-void
.end method

.method public stopDecoding()V
    .registers 2

    .line 165
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 167
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->stopDecoderThread()V

    return-void
.end method
