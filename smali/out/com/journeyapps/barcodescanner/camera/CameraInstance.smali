.class public Lcom/journeyapps/barcodescanner/camera/CameraInstance;
.super Ljava/lang/Object;
.source "CameraInstance.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cameraClosed:Z

.field private cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

.field private cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

.field private closer:Ljava/lang/Runnable;

.field private configure:Ljava/lang/Runnable;

.field private displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private mainHandler:Landroid/os/Handler;

.field private open:Z

.field private opener:Ljava/lang/Runnable;

.field private previewStarter:Ljava/lang/Runnable;

.field private readyHandler:Landroid/os/Handler;

.field private surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 31
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 32
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->opener:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->configure:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->previewStarter:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->closer:Ljava/lang/Runnable;

    .line 108
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 110
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->getInstance()Lcom/journeyapps/barcodescanner/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 111
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 112
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 113
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraManager;)V
    .registers 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 31
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 32
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->opener:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->configure:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->previewStarter:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->closer:Ljava/lang/Runnable;

    .line 123
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 125
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->notifyError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->readyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/Size;
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->getPreviewSize()Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraSurface;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    return-object p0
.end method

.method static synthetic access$602(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)Z
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    return-object p0
.end method

.method static synthetic access$800(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    return p0
.end method

.method private getPreviewSize()Lcom/journeyapps/barcodescanner/Size;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getPreviewSize()Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    return-object v0
.end method

.method private notifyError(Ljava/lang/Exception;)V
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->readyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 306
    sget v1, Lcom/journeyapps/barcodescanner/R$id;->zxing_camera_error:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method private validateOpen()V
    .registers 3

    .line 298
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-eqz v0, :cond_5

    return-void

    .line 299
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraInstance is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .registers 4

    .line 235
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 237
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-eqz v0, :cond_11

    .line 238
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$6;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$6;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

.method public close()V
    .registers 3

    .line 251
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 253
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-eqz v0, :cond_f

    .line 254
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->closer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_f
    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    :goto_12
    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    return-void
.end method

.method public configureCamera()V
    .registers 3

    .line 198
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 199
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->validateOpen()V

    .line 201
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->configure:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getCameraManager()Lcom/journeyapps/barcodescanner/camera/CameraManager;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    return-object v0
.end method

.method public getCameraRotation()I
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method public getCameraSettings()Lcom/journeyapps/barcodescanner/camera/CameraSettings;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    return-object v0
.end method

.method protected getCameraThread()Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    return-object v0
.end method

.method public getDisplayConfiguration()Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    return-object v0
.end method

.method protected getSurface()Lcom/journeyapps/barcodescanner/camera/CameraSurface;
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    return-object v0
.end method

.method public isCameraClosed()Z
    .registers 2

    .line 269
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    return v0
.end method

.method public open()V
    .registers 3

    .line 188
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 193
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->opener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->incrementAndEnqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestPreview(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$7;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .registers 3

    .line 161
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-nez v0, :cond_b

    .line 162
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 163
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    :cond_b
    return-void
.end method

.method public setDisplayConfiguration(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V
    .registers 3

    .line 135
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 136
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setDisplayConfiguration(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V

    return-void
.end method

.method public setReadyHandler(Landroid/os/Handler;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->readyHandler:Landroid/os/Handler;

    return-void
.end method

.method public setSurface(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 146
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->setSurface(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V

    return-void
.end method

.method public setTorch(Z)V
    .registers 4

    .line 214
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 216
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-eqz v0, :cond_11

    .line 217
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$5;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$5;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

.method public startPreview()V
    .registers 3

    .line 206
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 207
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->validateOpen()V

    .line 209
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->previewStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method
