.class public Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "FitXYStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    return-void
.end method

.method private static absRatio(F)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_8

    div-float/2addr v0, p0

    return v0

    :cond_8
    return p0
.end method


# virtual methods
.method protected getScore(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)F
    .registers 7

    .line 39
    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-lez v0, :cond_45

    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-gtz v0, :cond_9

    goto :goto_45

    .line 42
    :cond_9
    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    move-result v0

    .line 43
    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v3, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    move-result v2

    div-float v0, v1, v0

    div-float/2addr v0, v2

    .line 47
    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    iget p1, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    div-float/2addr v2, p1

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    move-result p1

    div-float/2addr v1, p1

    div-float/2addr v1, p1

    div-float/2addr v1, p1

    mul-float v0, v0, v1

    return v0

    :cond_45
    :goto_45
    const/4 p1, 0x0

    return p1
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .registers 5

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method
