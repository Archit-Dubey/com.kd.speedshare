.class public Lcom/google/zxing/integration/android/IntentIntegrator;
.super Ljava/lang/Object;
.source "IntentIntegrator.java"


# static fields
.field public static final ALL_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODE_128:Ljava/lang/String; = "CODE_128"

.field public static final CODE_39:Ljava/lang/String; = "CODE_39"

.field public static final CODE_93:Ljava/lang/String; = "CODE_93"

.field public static final DATA_MATRIX:Ljava/lang/String; = "DATA_MATRIX"

.field public static final EAN_13:Ljava/lang/String; = "EAN_13"

.field public static final EAN_8:Ljava/lang/String; = "EAN_8"

.field public static final ITF:Ljava/lang/String; = "ITF"

.field public static final ONE_D_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PDF_417:Ljava/lang/String; = "PDF_417"

.field public static final PRODUCT_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final QR_CODE:Ljava/lang/String; = "QR_CODE"

.field public static final REQUEST_CODE:I = 0xc0de

.field public static final RSS_14:Ljava/lang/String; = "RSS_14"

.field public static final RSS_EXPANDED:Ljava/lang/String; = "RSS_EXPANDED"

.field private static final TAG:Ljava/lang/String;

.field public static final UPC_A:Ljava/lang/String; = "UPC_A"

.field public static final UPC_E:Ljava/lang/String; = "UPC_E"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private captureActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private desiredBarcodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragment:Landroid/app/Fragment;

.field private final moreExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I

.field private supportFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "UPC_A"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "UPC_E"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "EAN_8"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "EAN_13"

    aput-object v9, v1, v8

    const/4 v10, 0x4

    const-string v11, "RSS_14"

    aput-object v11, v1, v10

    .line 67
    invoke-static {v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/google/zxing/integration/android/IntentIntegrator;->PRODUCT_CODE_TYPES:Ljava/util/Collection;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    aput-object v7, v1, v6

    aput-object v9, v1, v8

    aput-object v11, v1, v10

    const-string v2, "CODE_39"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "CODE_93"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "CODE_128"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "ITF"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    aput-object v11, v1, v0

    const/16 v0, 0xa

    const-string v2, "RSS_EXPANDED"

    aput-object v2, v1, v0

    .line 69
    invoke-static {v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->ONE_D_CODE_TYPES:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->ALL_CODE_TYPES:Ljava/util/Collection;

    .line 72
    const-class v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    const v0, 0xc0de

    .line 81
    iput v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->requestCode:I

    .line 85
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    return-void
.end method

.method private attachMoreExtras(Landroid/content/Intent;)V
    .registers 6

    .line 406
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 407
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 408
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 410
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_2a

    .line 411
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 412
    :cond_2a
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_34

    .line 413
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 414
    :cond_34
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_3e

    .line 415
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 416
    :cond_3e
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_48

    .line 417
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 418
    :cond_48
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_52

    .line 419
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 420
    :cond_52
    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_5c

    .line 421
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_a

    .line 423
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    :cond_64
    return-void
.end method

.method public static forFragment(Landroid/app/Fragment;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3

    .line 110
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 111
    iput-object p0, v0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public static forSupportFragment(Landroidx/fragment/app/Fragment;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3

    .line 96
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 97
    iput-object p0, v0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method private static varargs list([Ljava/lang/String;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;
    .registers 4

    const v0, 0xc0de

    if-ne p0, v0, :cond_a

    .line 131
    invoke-static {p1, p2}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(ILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseActivityResult(ILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;
    .registers 9

    const/4 v0, -0x1

    if-ne p0, v0, :cond_39

    const-string p0, "SCAN_RESULT"

    .line 147
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "SCAN_RESULT_FORMAT"

    .line 148
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "SCAN_RESULT_BYTES"

    .line 149
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    const-string p0, "SCAN_RESULT_ORIENTATION"

    const/high16 v0, -0x80000000

    .line 150
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_21

    const/4 p0, 0x0

    goto :goto_25

    .line 151
    :cond_21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_25
    move-object v4, p0

    const-string p0, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    .line 152
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "SCAN_RESULT_IMAGE_PATH"

    .line 153
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    new-instance p0, Lcom/google/zxing/integration/android/IntentResult;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 161
    :cond_39
    new-instance p0, Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct {p0}, Lcom/google/zxing/integration/android/IntentResult;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public createScanIntent()Landroid/content/Intent;
    .registers 6

    .line 338
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->getCaptureActivity()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.zxing.client.android.SCAN"

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    if-eqz v1, :cond_43

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_36

    const/16 v4, 0x2c

    .line 347
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    :cond_36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 351
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_FORMATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_43
    const/high16 v1, 0x4000000

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x80000

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    invoke-direct {p0, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->attachMoreExtras(Landroid/content/Intent;)V

    return-object v0
.end method

.method public getCaptureActivity()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->captureActivity:Ljava/lang/Class;

    if-nez v0, :cond_a

    .line 177
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->getDefaultCaptureActivity()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->captureActivity:Ljava/lang/Class;

    .line 179
    :cond_a
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->captureActivity:Ljava/lang/Class;

    return-object v0
.end method

.method protected getDefaultCaptureActivity()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 171
    const-class v0, Lcom/journeyapps/barcodescanner/CaptureActivity;

    return-object v0
.end method

.method public getMoreExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    return-object v0
.end method

.method public final initiateScan()V
    .registers 3

    .line 315
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->createScanIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->requestCode:I

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final initiateScan(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 369
    invoke-virtual {p0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setDesiredBarcodeFormats(Ljava/util/Collection;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 370
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return-void
.end method

.method public setBarcodeImageEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3

    .line 282
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "BARCODE_IMAGE_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    return-object p0
.end method

.method public setBeepEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3

    .line 270
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "BEEP_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    return-object p0
.end method

.method public setCameraId(I)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3

    if-ltz p1, :cond_b

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "SCAN_CAMERA_ID"

    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    :cond_b
    return-object p0
.end method

.method public setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/zxing/integration/android/IntentIntegrator;"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->captureActivity:Ljava/lang/Class;

    return-object p0
.end method

.method public setDesiredBarcodeFormats(Ljava/util/Collection;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/zxing/integration/android/IntentIntegrator;"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    return-object p0
.end method

.method public varargs setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 2

    .line 306
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    return-object p0
.end method

.method public setOrientationLocked(Z)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3

    .line 244
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "SCAN_ORIENTATION_LOCKED"

    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    return-object p0
.end method

.method public final setPrompt(Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "PROMPT_MESSAGE"

    .line 231
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    :cond_7
    return-object p0
.end method

.method public setRequestCode(I)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3

    if-lez p1, :cond_a

    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 207
    iput p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->requestCode:I

    return-object p0

    .line 205
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "requestCode out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeout(J)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3

    .line 327
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "TIMEOUT"

    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    return-object p0
.end method

.method protected startActivity(Landroid/content/Intent;)V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    if-eqz v0, :cond_8

    .line 396
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_15

    .line 397
    :cond_8
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_10

    .line 398
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_15

    .line 400
    :cond_10
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_15
    return-void
.end method

.method protected startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    if-eqz v0, :cond_8

    .line 385
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_15

    .line 386
    :cond_8
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_10

    .line 387
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_15

    .line 389
    :cond_10
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_15
    return-void
.end method
