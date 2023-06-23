.class public Lcom/journeyapps/barcodescanner/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    }
.end annotation


# instance fields
.field private autoFocusEnabled:Z

.field private autoTorchEnabled:Z

.field private barcodeSceneModeEnabled:Z

.field private continuousFocusEnabled:Z

.field private exposureEnabled:Z

.field private focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

.field private meteringEnabled:Z

.field private requestedCameraId:I

.field private scanInverted:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    .line 12
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    .line 13
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    .line 15
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    .line 16
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    .line 17
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    .line 18
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-void
.end method


# virtual methods
.method public getFocusMode()Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-object v0
.end method

.method public getRequestedCameraId()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    return v0
.end method

.method public isAutoFocusEnabled()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    return v0
.end method

.method public isAutoTorchEnabled()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    return v0
.end method

.method public isBarcodeSceneModeEnabled()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    return v0
.end method

.method public isContinuousFocusEnabled()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    return v0
.end method

.method public isExposureEnabled()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    return v0
.end method

.method public isMeteringEnabled()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    return v0
.end method

.method public isScanInverted()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    return v0
.end method

.method public setAutoFocusEnabled(Z)V
    .registers 3

    .line 112
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    if-eqz p1, :cond_d

    .line 114
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    if-eqz v0, :cond_d

    .line 115
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    goto :goto_17

    :cond_d
    if-eqz p1, :cond_14

    .line 117
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    goto :goto_17

    :cond_14
    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    :goto_17
    return-void
.end method

.method public setAutoTorchEnabled(Z)V
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    return-void
.end method

.method public setBarcodeSceneModeEnabled(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    return-void
.end method

.method public setContinuousFocusEnabled(Z)V
    .registers 2

    .line 135
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    if-eqz p1, :cond_9

    .line 138
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    goto :goto_15

    .line 139
    :cond_9
    iget-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    if-eqz p1, :cond_12

    .line 140
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    goto :goto_15

    :cond_12
    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    :goto_15
    return-void
.end method

.method public setExposureEnabled(Z)V
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    return-void
.end method

.method public setFocusMode(Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-void
.end method

.method public setMeteringEnabled(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    return-void
.end method

.method public setRequestedCameraId(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    return-void
.end method

.method public setScanInverted(Z)V
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    return-void
.end method
