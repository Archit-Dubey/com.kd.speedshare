.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Lcom/google/zxing/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 39
    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 43
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    if-lez p2, :cond_4d

    if-lez p3, :cond_4d

    .line 54
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, p2, p3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    mul-int/lit8 p2, p2, 0x2

    .line 55
    new-array v1, p2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, p3, :cond_4c

    int-to-float v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    const/4 v6, 0x0

    :goto_16
    if-ge v6, p2, :cond_25

    .line 60
    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v7, v6, 0x1

    .line 61
    aput v4, v1, v7

    add-int/lit8 v6, v6, 0x2

    goto :goto_16

    .line 63
    :cond_25
    invoke-virtual {p4, v1}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    .line 66
    invoke-static {p1, v1}, Lcom/google/zxing/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, p2, :cond_49

    .line 69
    :try_start_2e
    aget v5, v1, v4

    float-to-int v5, v5

    add-int/lit8 v6, v4, 0x1

    aget v6, v1, v6

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 71
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_41
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2e .. :try_end_41} :catch_44

    :cond_41
    add-int/lit8 v4, v4, 0x2

    goto :goto_2c

    .line 82
    :catch_44
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_4c
    return-object v0

    .line 52
    :cond_4d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    goto :goto_53

    :goto_52
    throw p1

    :goto_53
    goto :goto_52
.end method
