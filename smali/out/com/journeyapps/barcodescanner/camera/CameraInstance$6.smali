.class Lcom/journeyapps/barcodescanner/camera/CameraInstance$6;
.super Ljava/lang/Object;
.source "CameraInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/CameraInstance;->changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field final synthetic val$callback:Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .registers 3

    .line 239
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$6;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$6;->val$callback:Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$6;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$100(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$6;->val$callback:Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V

    return-void
.end method
