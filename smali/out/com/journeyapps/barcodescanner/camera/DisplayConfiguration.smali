.class public Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private center:Z

.field private previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

.field private rotation:I

.field private viewfinderSize:Lcom/journeyapps/barcodescanner/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->center:Z

    .line 19
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    .line 23
    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->rotation:I

    return-void
.end method

.method public constructor <init>(ILcom/journeyapps/barcodescanner/Size;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->center:Z

    .line 19
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    .line 28
    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->rotation:I

    .line 29
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->viewfinderSize:Lcom/journeyapps/barcodescanner/Size;

    return-void
.end method


# virtual methods
.method public getBestPreviewSize(Ljava/util/List;Z)Lcom/journeyapps/barcodescanner/Size;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;Z)",
            "Lcom/journeyapps/barcodescanner/Size;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p2}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->getDesiredPreviewSize(Z)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p2

    .line 93
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->getBestPreviewSize(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p1

    return-object p1
.end method

.method public getDesiredPreviewSize(Z)Lcom/journeyapps/barcodescanner/Size;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->viewfinderSize:Lcom/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    if-eqz p1, :cond_d

    .line 61
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/Size;->rotate()Lcom/journeyapps/barcodescanner/Size;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v0
.end method

.method public getPreviewScalingStrategy()Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    return-object v0
.end method

.method public getRotation()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->rotation:I

    return v0
.end method

.method public getViewfinderSize()Lcom/journeyapps/barcodescanner/Size;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->viewfinderSize:Lcom/journeyapps/barcodescanner/Size;

    return-object v0
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->viewfinderSize:Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {v0, p1, v1}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public setPreviewScalingStrategy(Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    return-void
.end method
