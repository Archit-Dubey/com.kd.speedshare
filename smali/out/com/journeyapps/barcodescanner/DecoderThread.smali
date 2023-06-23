.class public Lcom/journeyapps/barcodescanner/DecoderThread;
.super Ljava/lang/Object;
.source "DecoderThread.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final callback:Landroid/os/Handler$Callback;

.field private cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field private cropRect:Landroid/graphics/Rect;

.field private decoder:Lcom/journeyapps/barcodescanner/Decoder;

.field private handler:Landroid/os/Handler;

.field private final previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

.field private resultHandler:Landroid/os/Handler;

.field private running:Z

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/DecoderThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/Decoder;Landroid/os/Handler;)V
    .registers 5

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 32
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderThread$1;-><init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    .line 60
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderThread$2;-><init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->callback:Landroid/os/Handler$Callback;

    .line 77
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 79
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 80
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    .line 81
    iput-object p3, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/journeyapps/barcodescanner/DecoderThread;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    return p0
.end method

.method static synthetic access$200(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/journeyapps/barcodescanner/DecoderThread;Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->decode(Lcom/journeyapps/barcodescanner/SourceData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/journeyapps/barcodescanner/DecoderThread;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    return-void
.end method

.method private decode(Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 10

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Lcom/journeyapps/barcodescanner/SourceData;->setCropRect(Landroid/graphics/Rect;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->createSource(Lcom/journeyapps/barcodescanner/SourceData;)Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 158
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    invoke-virtual {v3, v2}, Lcom/journeyapps/barcodescanner/Decoder;->decode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_56

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 164
    sget-object v5, Lcom/journeyapps/barcodescanner/DecoderThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found barcode in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    if-eqz v0, :cond_63

    .line 166
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeResult;

    invoke-direct {v0, v2, p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;-><init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/SourceData;)V

    .line 167
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    sget v1, Lcom/journeyapps/barcodescanner/R$id;->zxing_decode_succeeded:I

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_63

    .line 173
    :cond_56
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    if-eqz p1, :cond_63

    .line 174
    sget v0, Lcom/journeyapps/barcodescanner/R$id;->zxing_decode_failed:I

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 178
    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    if-eqz p1, :cond_78

    .line 179
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/Decoder;->getPossibleResultPoints()Ljava/util/List;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    sget v1, Lcom/journeyapps/barcodescanner/R$id;->zxing_possible_result_points:I

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 183
    :cond_78
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    return-void
.end method

.method private requestNextPreview()V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->requestPreview(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    return-void
.end method


# virtual methods
.method protected createSource(Lcom/journeyapps/barcodescanner/SourceData;)Lcom/google/zxing/LuminanceSource;
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 146
    :cond_6
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/SourceData;->createSource()Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    return-object p1
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDecoder()Lcom/journeyapps/barcodescanner/Decoder;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    return-object v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setDecoder(Lcom/journeyapps/barcodescanner/Decoder;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    return-void
.end method

.method public start()V
    .registers 4

    .line 111
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 113
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/journeyapps/barcodescanner/DecoderThread;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    .line 114
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->callback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 117
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 127
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 129
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 130
    :try_start_7
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 131
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 133
    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method
