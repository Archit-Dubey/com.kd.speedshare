.class public Lcom/google/android/material/elevation/ElevationOverlayProvider;
.super Ljava/lang/Object;
.source "ElevationOverlayProvider.java"


# static fields
.field private static final ELEVATION_OVERLAY_MULTIPLIER:F = 4.5f


# instance fields
.field private final colorSurface:I

.field private final displayDensity:F

.field private final elevationOverlaysColor:I

.field private final elevationOverlaysEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlaysEnabled:I

    .line 40
    invoke-static {p1, v0}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBooleanAttribute(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysEnabled:Z

    .line 41
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlaysColor:I

    const/4 v1, 0x0

    .line 42
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysColor:I

    .line 43
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    return-void
.end method

.method private isSurfaceColor(I)Z
    .registers 3

    const/16 v0, 0xff

    .line 114
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method


# virtual methods
.method public calculateOverlayAlpha(F)I
    .registers 3

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public calculateOverlayAlphaFraction(F)F
    .registers 5

    .line 88
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_21

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_c

    goto :goto_21

    :cond_c
    div-float/2addr p1, v0

    const/high16 v0, 0x40900000    # 4.5f

    float-to-double v1, p1

    .line 92
    invoke-static {v1, v2}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_21
    :goto_21
    return v1
.end method

.method public getColorSurface()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    return v0
.end method

.method public getOverlaysColor()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysColor:I

    return v0
.end method

.method public isOverlaysEnabled()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysEnabled:Z

    return v0
.end method

.method public layerOverlay(IF)I
    .registers 4

    .line 71
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    move-result p2

    .line 72
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysColor:I

    invoke-static {p1, v0, p2}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result p1

    return p1
.end method

.method public layerOverlayIfNeeded(IF)I
    .registers 4

    .line 55
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysEnabled:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isSurfaceColor(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->layerOverlay(IF)I

    move-result p1

    :cond_e
    return p1
.end method
