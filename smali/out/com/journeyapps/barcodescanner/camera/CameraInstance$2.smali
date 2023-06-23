.class Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;
.super Ljava/lang/Object;
.source "CameraInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/camera/CameraInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 52
    :try_start_0
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Configuring camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$100(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->configure()V

    .line 54
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$300(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 55
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$300(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/journeyapps/barcodescanner/R$id;->zxing_prewiew_size_ready:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$400(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_3f

    :catch_30
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v1, v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$200(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V

    .line 59
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to configure camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    :goto_3f
    return-void
.end method
