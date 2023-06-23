.class Lcom/journeyapps/barcodescanner/camera/CameraInstance$7$1;
.super Ljava/lang/Object;
.source "CameraInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7$1;->this$1:Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7$1;->this$1:Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$100(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7$1;->this$1:Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;

    iget-object v1, v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;->val$callback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestPreviewFrame(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    return-void
.end method
