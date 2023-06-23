.class Lcom/journeyapps/barcodescanner/CameraPreview$2;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 138
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    if-nez p1, :cond_c

    .line 156
    invoke-static {}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "*** WARNING *** surfaceChanged() gave us a null surface!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_c
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    new-instance p2, Lcom/journeyapps/barcodescanner/Size;

    invoke-direct {p2, p3, p4}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-static {p1, p2}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$102(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    .line 160
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$300(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 149
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$102(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    return-void
.end method
