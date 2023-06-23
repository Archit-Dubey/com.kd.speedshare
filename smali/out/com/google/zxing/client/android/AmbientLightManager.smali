.class public final Lcom/google/zxing/client/android/AmbientLightManager;
.super Ljava/lang/Object;
.source "AmbientLightManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final BRIGHT_ENOUGH_LUX:F = 450.0f

.field private static final TOO_DARK_LUX:F = 45.0f


# instance fields
.field private cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

.field private cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private lightSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/journeyapps/barcodescanner/camera/CameraManager;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/google/zxing/client/android/AmbientLightManager;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 52
    iput-object p3, p0, Lcom/google/zxing/client/android/AmbientLightManager;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 54
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/client/android/AmbientLightManager;)Lcom/journeyapps/barcodescanner/camera/CameraManager;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    return-object p0
.end method

.method private setTorch(Z)V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/zxing/client/android/AmbientLightManager$1;

    invoke-direct {v1, p0, p1}, Lcom/google/zxing/client/android/AmbientLightManager$1;-><init>(Lcom/google/zxing/client/android/AmbientLightManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    .line 92
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 93
    iget-object v1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    if-eqz v1, :cond_1d

    const/high16 v1, 0x42340000    # 45.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_14

    const/4 p1, 0x1

    .line 95
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/AmbientLightManager;->setTorch(Z)V

    goto :goto_1d

    :cond_14
    const/high16 v1, 0x43e10000    # 450.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1d

    .line 97
    invoke-direct {p0, v0}, Lcom/google/zxing/client/android/AmbientLightManager;->setTorch(Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public start()V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isAutoTorchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 60
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    .line 61
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1f

    const/4 v2, 0x3

    .line 63
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1f
    return-void
.end method

.method public stop()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_14

    .line 71
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 72
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    :cond_14
    return-void
.end method
