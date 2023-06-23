.class Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;
.super Ljava/lang/Object;
.source "CameraInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/CameraInstance;->requestPreview(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field final synthetic val$callback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .registers 3

    .line 275
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;->val$callback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$800(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 280
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera is closed, not requesting preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 284
    :cond_12
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$700(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7$1;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7$1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method
