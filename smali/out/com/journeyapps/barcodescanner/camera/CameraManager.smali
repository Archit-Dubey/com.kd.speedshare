.class public final Lcom/journeyapps/barcodescanner/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

.field private autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private cameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private final cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

.field private context:Landroid/content/Context;

.field private defaultParameters:Ljava/lang/String;

.field private displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private previewSize:Lcom/journeyapps/barcodescanner/Size;

.field private previewing:Z

.field private requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

.field private rotationDegrees:I

.field private settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    .line 77
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->context:Landroid/content/Context;

    .line 78
    new-instance p1, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraManager;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private calculateDisplayRotation()I
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    if-eq v0, v1, :cond_19

    const/4 v3, 0x2

    if-eq v0, v3, :cond_16

    const/4 v3, 0x3

    if-eq v0, v3, :cond_13

    goto :goto_1b

    :cond_13
    const/16 v2, 0x10e

    goto :goto_1b

    :cond_16
    const/16 v2, 0xb4

    goto :goto_1b

    :cond_19
    const/16 v2, 0x5a

    .line 308
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_2d

    .line 309
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    .line 310
    rem-int/lit16 v0, v0, 0x168

    goto :goto_36

    .line 312
    :cond_2d
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 314
    :goto_36
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera Display Orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getDefaultCameraParameters()Landroid/hardware/Camera$Parameters;
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->defaultParameters:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 221
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->defaultParameters:Ljava/lang/String;

    goto :goto_14

    .line 223
    :cond_11
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    :goto_14
    return-object v0
.end method

.method private static getPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1e

    .line 86
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 89
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, p0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-object v1

    .line 93
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 94
    new-instance v2, Lcom/journeyapps/barcodescanner/Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3b
    return-object v1
.end method

.method private setCameraDisplayOrientation(I)V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method private setDesiredParameters(Z)V
    .registers 6

    .line 230
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getDefaultCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_e

    .line 234
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v0, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_e
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial camera parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_31

    .line 241
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_31
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->getFocusMode()Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setFocus(Landroid/hardware/Camera$Parameters;Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;Z)V

    if-nez p1, :cond_6d

    const/4 p1, 0x0

    .line 247
    invoke-static {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 249
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isScanInverted()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 250
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setInvertColor(Landroid/hardware/Camera$Parameters;)V

    .line 253
    :cond_4b
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isBarcodeSceneModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 254
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 257
    :cond_56
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isMeteringEnabled()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 258
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt p1, v1, :cond_6d

    .line 259
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setVideoStabilization(Landroid/hardware/Camera$Parameters;)V

    .line 260
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setFocusArea(Landroid/hardware/Camera$Parameters;)V

    .line 261
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setMetering(Landroid/hardware/Camera$Parameters;)V

    .line 267
    :cond_6d
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    .line 268
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7b

    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    goto :goto_90

    .line 271
    :cond_7b
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->isCameraRotated()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->getBestPreviewSize(Ljava/util/List;Z)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 273
    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    iget v1, v1, Lcom/journeyapps/barcodescanner/Size;->height:I

    invoke-virtual {v0, p1, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 276
    :goto_90
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "glass-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 279
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setBestPreviewFPS(Landroid/hardware/Camera$Parameters;)V

    .line 282
    :cond_9d
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final camera parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private setParameters()V
    .registers 4

    .line 326
    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->calculateDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    .line 327
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setCameraDisplayOrientation(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_11

    .line 329
    :catch_a
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set rotation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    const/4 v0, 0x0

    .line 332
    :try_start_12
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setDesiredParameters(Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_22

    :catch_16
    const/4 v0, 0x1

    .line 336
    :try_start_17
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setDesiredParameters(Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_22

    .line 339
    :catch_1b
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_22
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-nez v0, :cond_33

    .line 345
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    goto :goto_3e

    .line 347
    :cond_33
    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 349
    :goto_3e
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->setResolution(Lcom/journeyapps/barcodescanner/Size;)V

    return-void
.end method


# virtual methods
.method public changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_18

    .line 463
    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;->changeCameraParameters(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p1

    .line 466
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to change camera parameters"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_18
    return-void
.end method

.method public close()V
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_a

    .line 192
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_a
    return-void
.end method

.method public configure()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_8

    .line 126
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setParameters()V

    return-void

    .line 124
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera not open"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .registers 2

    .line 496
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraRotation()I
    .registers 2

    .line 214
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    return v0
.end method

.method public getCameraSettings()Lcom/journeyapps/barcodescanner/camera/CameraSettings;
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    return-object v0
.end method

.method public getDisplayConfiguration()Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    return-object v0
.end method

.method public getNaturalPreviewSize()Lcom/journeyapps/barcodescanner/Size;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    return-object v0
.end method

.method public getPreviewSize()Lcom/journeyapps/barcodescanner/Size;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_6
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->isCameraRotated()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 383
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/Size;->rotate()Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    return-object v0

    .line 385
    :cond_13
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    return-object v0
.end method

.method public isCameraRotated()Z
    .registers 3

    .line 202
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 205
    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 203
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rotation not calculated yet. Call configure() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTorchOn()Z
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 479
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v2, "on"

    .line 481
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "torch"

    .line 482
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public open()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->getRequestedCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_23

    .line 109
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->getRequestedCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->getCameraId(I)I

    move-result v0

    .line 110
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 111
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    return-void

    .line 106
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to open camera"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPreviewFrame(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_12

    .line 400
    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_12

    .line 401
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-virtual {v1, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->setCallback(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 402
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_12
    return-void
.end method

.method public setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .registers 2

    .line 413
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    return-void
.end method

.method public setDisplayConfiguration(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V
    .registers 2

    .line 423
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setPreviewDisplay(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V

    return-void
.end method

.method public setPreviewDisplay(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->setPreview(Landroid/hardware/Camera;)V

    return-void
.end method

.method public setTorch(Z)V
    .registers 4

    .line 428
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3e

    .line 430
    :try_start_4
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->isTorchOn()Z

    move-result v0

    if-eq p1, v0, :cond_3e

    .line 432
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    if-eqz v0, :cond_13

    .line 433
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stop()V

    .line 436
    :cond_13
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 437
    invoke-static {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 438
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 439
    invoke-static {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->setBestExposure(Landroid/hardware/Camera$Parameters;Z)V

    .line 441
    :cond_27
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 443
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    if-eqz p1, :cond_3e

    .line 444
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->start()V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_35} :catch_36

    goto :goto_3e

    :catch_36
    move-exception p1

    .line 449
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set torch"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    return-void
.end method

.method public startPreview()V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_27

    .line 153
    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_27

    .line 154
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    .line 156
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 157
    new-instance v0, Lcom/google/zxing/client/android/AmbientLightManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/zxing/client/android/AmbientLightManager;-><init>(Landroid/content/Context;Lcom/journeyapps/barcodescanner/camera/CameraManager;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 158
    invoke-virtual {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->start()V

    :cond_27
    return-void
.end method

.method public stopPreview()V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 170
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stop()V

    .line 171
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 173
    :cond_a
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    if-eqz v0, :cond_13

    .line 174
    invoke-virtual {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->stop()V

    .line 175
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 177
    :cond_13
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_26

    iget-boolean v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    if-eqz v2, :cond_26

    .line 178
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 179
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->setCallback(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    :cond_26
    return-void
.end method
