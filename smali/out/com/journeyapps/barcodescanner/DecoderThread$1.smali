.class Lcom/journeyapps/barcodescanner/DecoderThread$1;
.super Ljava/lang/Object;
.source "DecoderThread.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/camera/PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/DecoderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/DecoderThread;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreview(Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$000(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 42
    :try_start_7
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$100(Lcom/journeyapps/barcodescanner/DecoderThread;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 44
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$200(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/journeyapps/barcodescanner/R$id;->zxing_decode:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 46
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public onPreviewError(Ljava/lang/Exception;)V
    .registers 4

    .line 52
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$000(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 53
    :try_start_7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$100(Lcom/journeyapps/barcodescanner/DecoderThread;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 55
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$200(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/journeyapps/barcodescanner/R$id;->zxing_preview_failed:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 57
    :cond_1e
    monitor-exit p1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v0
.end method
