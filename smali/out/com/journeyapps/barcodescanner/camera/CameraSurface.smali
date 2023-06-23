.class public Lcom/journeyapps/barcodescanner/camera/CameraSurface;
.super Ljava/lang/Object;
.source "CameraSurface.java"


# instance fields
.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 32
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    .line 30
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "surfaceTexture may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 24
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-void

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "surfaceHolder may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public setPreview(Landroid/hardware/Camera;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_8

    .line 48
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_d

    .line 50
    :cond_8
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    :goto_d
    return-void
.end method
