.class Lcom/journeyapps/barcodescanner/CameraPreview$3;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/journeyapps/barcodescanner/R$id;->zxing_prewiew_size_ready:I

    if-ne v0, v1, :cond_11

    .line 178
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$400(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)V

    const/4 p1, 0x1

    return p1

    .line 180
    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/journeyapps/barcodescanner/R$id;->zxing_camera_error:I

    if-ne v0, v1, :cond_32

    .line 181
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    .line 183
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->isActive()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 185
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->pause()V

    .line 186
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$500(Lcom/journeyapps/barcodescanner/CameraPreview;)Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->cameraError(Ljava/lang/Exception;)V

    goto :goto_41

    .line 188
    :cond_32
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/journeyapps/barcodescanner/R$id;->zxing_camera_closed:I

    if-ne p1, v0, :cond_41

    .line 189
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$500(Lcom/journeyapps/barcodescanner/CameraPreview;)Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->cameraClosed()V

    :cond_41
    :goto_41
    const/4 p1, 0x0

    return p1
.end method
