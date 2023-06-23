.class Lcom/journeyapps/barcodescanner/CaptureManager$1;
.super Ljava/lang/Object;
.source "CaptureManager.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/CaptureManager;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraClosed()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->access$000(Lcom/journeyapps/barcodescanner/CaptureManager;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 101
    invoke-static {}, Lcom/journeyapps/barcodescanner/CaptureManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera closed; finishing activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->access$200(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    :cond_16
    return-void
.end method

.method public cameraError(Ljava/lang/Exception;)V
    .registers 2

    .line 94
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->displayFrameworkBugMessageAndExit()V

    return-void
.end method

.method public previewSized()V
    .registers 1

    return-void
.end method

.method public previewStarted()V
    .registers 1

    return-void
.end method

.method public previewStopped()V
    .registers 1

    return-void
.end method
