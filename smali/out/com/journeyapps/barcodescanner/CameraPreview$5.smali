.class Lcom/journeyapps/barcodescanner/CameraPreview$5;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/CameraPreview;->surfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
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

    .line 236
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 240
    invoke-virtual {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/CameraPreview$5;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    .line 246
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    invoke-direct {v0, p2, p3}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$102(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    .line 247
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$300(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
