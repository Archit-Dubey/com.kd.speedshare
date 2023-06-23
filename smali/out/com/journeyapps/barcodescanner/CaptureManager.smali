.class public Lcom/journeyapps/barcodescanner/CaptureManager;
.super Ljava/lang/Object;
.source "CaptureManager.java"


# static fields
.field private static final SAVED_ORIENTATION_LOCK:Ljava/lang/String; = "SAVED_ORIENTATION_LOCK"

.field private static final TAG:Ljava/lang/String;

.field private static cameraPermissionReqCode:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private askedPermission:Z

.field private barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private beepManager:Lcom/google/zxing/client/android/BeepManager;

.field private callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

.field private destroyed:Z

.field private finishWhenClosed:Z

.field private handler:Landroid/os/Handler;

.field private inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

.field private orientationLock:I

.field private returnBarcodeImagePath:Z

.field private final stateListener:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-class v0, Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/CaptureManager;->TAG:Ljava/lang/String;

    const/16 v0, 0xfa

    .line 57
    sput v0, Lcom/journeyapps/barcodescanner/CaptureManager;->cameraPermissionReqCode:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V
    .registers 5

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->returnBarcodeImagePath:Z

    .line 63
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->destroyed:Z

    .line 70
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->finishWhenClosed:Z

    .line 71
    new-instance v1, Lcom/journeyapps/barcodescanner/CaptureManager$1;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$1;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->stateListener:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 106
    new-instance v1, Lcom/journeyapps/barcodescanner/CaptureManager$2;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$2;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 131
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->askedPermission:Z

    .line 135
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 136
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 137
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object p2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->stateListener:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    invoke-virtual {p2, v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->addStateListener(Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;)V

    .line 139
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->handler:Landroid/os/Handler;

    .line 141
    new-instance p2, Lcom/google/zxing/client/android/InactivityTimer;

    new-instance v0, Lcom/journeyapps/barcodescanner/CaptureManager$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$3;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    invoke-direct {p2, p1, v0}, Lcom/google/zxing/client/android/InactivityTimer;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 151
    new-instance p2, Lcom/google/zxing/client/android/BeepManager;

    invoke-direct {p2, p1}, Lcom/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    return-void
.end method

.method static synthetic access$000(Lcom/journeyapps/barcodescanner/CaptureManager;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->finishWhenClosed:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 53
    sget-object v0, Lcom/journeyapps/barcodescanner/CaptureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/journeyapps/barcodescanner/CaptureManager;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->finish()V

    return-void
.end method

.method static synthetic access$300(Lcom/journeyapps/barcodescanner/CaptureManager;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/journeyapps/barcodescanner/CaptureManager;)Lcom/google/zxing/client/android/BeepManager;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/journeyapps/barcodescanner/CaptureManager;)Landroid/os/Handler;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private finish()V
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getBarcodeImagePath(Lcom/journeyapps/barcodescanner/BarcodeResult;)Ljava/lang/String;
    .registers 6

    .line 393
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->returnBarcodeImagePath:Z

    if-eqz v0, :cond_41

    .line 394
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    :try_start_8
    const-string v0, "barcodeimage"

    const-string v1, ".jpg"

    .line 396
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 398
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 399
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_29} :catch_2a

    goto :goto_42

    :catch_2a
    move-exception p1

    .line 402
    sget-object v0, Lcom/journeyapps/barcodescanner/CaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create temporary file and store bitmap! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 p1, 0x0

    :goto_42
    return-object p1
.end method

.method public static getCameraPermissionReqCode()I
    .registers 1

    .line 203
    sget v0, Lcom/journeyapps/barcodescanner/CaptureManager;->cameraPermissionReqCode:I

    return v0
.end method

.method private openCameraWithPermission()V
    .registers 6

    .line 318
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 320
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    goto :goto_23

    .line 321
    :cond_10
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->askedPermission:Z

    if-nez v0, :cond_23

    .line 322
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    sget v1, Lcom/journeyapps/barcodescanner/CaptureManager;->cameraPermissionReqCode:I

    invoke-static {v0, v3, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 325
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->askedPermission:Z

    :cond_23
    :goto_23
    return-void
.end method

.method public static resultIntent(Lcom/journeyapps/barcodescanner/BarcodeResult;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getRawBytes()[B

    move-result-object v1

    if-eqz v1, :cond_30

    .line 168
    array-length v2, v1

    if-lez v2, :cond_30

    const-string v2, "SCAN_RESULT_BYTES"

    .line 169
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 171
    :cond_30
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getResultMetadata()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_a1

    .line 173
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 174
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    .line 175
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT_UPC_EAN_EXTENSION"

    .line 174
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    :cond_4d
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_60

    .line 179
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    :cond_60
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6f

    const-string v2, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    .line 183
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :cond_6f
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    if-eqz p0, :cond_a1

    const/4 v1, 0x0

    .line 189
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_a1
    if-eqz p1, :cond_a8

    const-string p0, "SCAN_RESULT_IMAGE_PATH"

    .line 196
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a8
    return-object v0
.end method

.method public static setCameraPermissionReqCode(I)V
    .registers 1

    .line 208
    sput p0, Lcom/journeyapps/barcodescanner/CaptureManager;->cameraPermissionReqCode:I

    return-void
.end method


# virtual methods
.method protected closeAndFinish()V
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->isCameraClosed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 416
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->finish()V

    goto :goto_13

    :cond_10
    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->finishWhenClosed:Z

    .line 421
    :goto_13
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    .line 422
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    return-void
.end method

.method public decode()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->decodeSingle(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    return-void
.end method

.method protected displayFrameworkBugMessageAndExit()V
    .registers 4

    .line 442
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->destroyed:Z

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->finishWhenClosed:Z

    if-eqz v0, :cond_11

    goto :goto_43

    .line 445
    :cond_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    sget v2, Lcom/journeyapps/barcodescanner/R$string;->zxing_app_name:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 447
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    sget v2, Lcom/journeyapps/barcodescanner/R$string;->zxing_msg_camera_framework_bug:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 448
    sget v1, Lcom/journeyapps/barcodescanner/R$string;->zxing_button_ok:I

    new-instance v2, Lcom/journeyapps/barcodescanner/CaptureManager$5;

    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$5;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    new-instance v1, Lcom/journeyapps/barcodescanner/CaptureManager$6;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$6;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 464
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_43
    :goto_43
    return-void
.end method

.method public initializeFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 9

    .line 219
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    if-eqz p2, :cond_16

    const/4 v0, -0x1

    const-string v1, "SAVED_ORIENTATION_LOCK"

    .line 226
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    :cond_16
    if-eqz p1, :cond_65

    const-string p2, "SCAN_ORIENTATION_LOCKED"

    const/4 v0, 0x1

    .line 231
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 233
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->lockOrientation()V

    .line 236
    :cond_24
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 237
    iget-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {p2, p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->initializeFromIntent(Landroid/content/Intent;)V

    :cond_35
    const-string p2, "BEEP_ENABLED"

    .line 240
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_43

    .line 241
    iget-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {p2, v1}, Lcom/google/zxing/client/android/BeepManager;->setBeepEnabled(Z)V

    :cond_43
    const-string p2, "TIMEOUT"

    .line 244
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 245
    new-instance v2, Lcom/journeyapps/barcodescanner/CaptureManager$4;

    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$4;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    .line 253
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, p2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5b
    const-string p2, "BARCODE_IMAGE_ENABLED"

    .line 256
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 257
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->returnBarcodeImagePath:Z

    :cond_65
    return-void
.end method

.method protected lockOrientation()V
    .registers 6

    .line 268
    iget v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    .line 270
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2c

    if-eqz v0, :cond_38

    if-ne v0, v4, :cond_29

    goto :goto_38

    :cond_29
    const/16 v3, 0x8

    goto :goto_38

    :cond_2c
    if-ne v1, v4, :cond_38

    if-eqz v0, :cond_37

    const/4 v1, 0x3

    if-ne v0, v1, :cond_34

    goto :goto_37

    :cond_34
    const/16 v3, 0x9

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v3, 0x1

    .line 288
    :cond_38
    :goto_38
    iput v3, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    .line 291
    :cond_3a
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->destroyed:Z

    .line 369
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 370
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 360
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pauseAndWait()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 342
    sget p2, Lcom/journeyapps/barcodescanner/CaptureManager;->cameraPermissionReqCode:I

    if-ne p1, p2, :cond_15

    .line 343
    array-length p1, p3

    if-lez p1, :cond_12

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_12

    .line 345
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    goto :goto_15

    .line 348
    :cond_12
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->displayFrameworkBugMessageAndExit()V

    :cond_15
    :goto_15
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 308
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->openCameraWithPermission()V

    goto :goto_f

    .line 310
    :cond_a
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 312
    :goto_f
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->start()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 380
    iget v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    const-string v1, "SAVED_ORIENTATION_LOCK"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected returnResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .registers 4

    .line 435
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->getBarcodeImagePath(Lcom/journeyapps/barcodescanner/BarcodeResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->resultIntent(Lcom/journeyapps/barcodescanner/BarcodeResult;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 436
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 437
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->closeAndFinish()V

    return-void
.end method

.method protected returnResultTimeout()V
    .registers 4

    .line 427
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TIMEOUT"

    const/4 v2, 0x1

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 430
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->closeAndFinish()V

    return-void
.end method
