.class Lcom/journeyapps/barcodescanner/DecoderThread$2;
.super Ljava/lang/Object;
.source "DecoderThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 61
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/journeyapps/barcodescanner/R$id;->zxing_decode:I

    if-ne v0, v1, :cond_10

    .line 66
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/journeyapps/barcodescanner/SourceData;

    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$300(Lcom/journeyapps/barcodescanner/DecoderThread;Lcom/journeyapps/barcodescanner/SourceData;)V

    goto :goto_1b

    .line 67
    :cond_10
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/journeyapps/barcodescanner/R$id;->zxing_preview_failed:I

    if-ne p1, v0, :cond_1b

    .line 69
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$400(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method
