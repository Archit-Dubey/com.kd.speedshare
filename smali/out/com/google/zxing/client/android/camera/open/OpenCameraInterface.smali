.class public final Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;
.super Ljava/lang/Object;
.source "OpenCameraInterface.java"


# static fields
.field public static final NO_REQUESTED_CAMERA:I = -0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraId(I)I
    .registers 6

    .line 37
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    .line 39
    sget-object p0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    const-string v0, "No cameras!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    const/4 v2, 0x0

    if-ltz p0, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    if-nez v3, :cond_2a

    const/4 p0, 0x0

    :goto_18
    if-ge p0, v0, :cond_2a

    .line 51
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 52
    invoke-static {p0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 53
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 p0, p0, 0x1

    goto :goto_18

    :cond_2a
    :goto_2a
    if-ge p0, v0, :cond_2d

    return p0

    :cond_2d
    if-eqz v3, :cond_30

    return v1

    :cond_30
    return v2
.end method

.method public static open(I)Landroid/hardware/Camera;
    .registers 2

    .line 82
    invoke-static {p0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->getCameraId(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_9
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    return-object p0
.end method
