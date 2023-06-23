.class public Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "TextDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;,
        Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;,
        Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;,
        Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    }
.end annotation


# static fields
.field private static final SHADE_FACTOR:F = 0.9f


# instance fields
.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderThickness:I

.field private final mColor:I

.field private final mFontSize:I

.field private final mHeight:I

.field private final mRadius:F

.field private final mShape:Landroid/graphics/drawable/shapes/RectShape;

.field private final mText:Ljava/lang/String;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mWidth:I


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)V
    .registers 5

    .line 35
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$000(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 38
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$000(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mShape:Landroid/graphics/drawable/shapes/RectShape;

    .line 39
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$100(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mHeight:I

    .line 40
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$200(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mWidth:I

    .line 41
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$300(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)F

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mRadius:F

    .line 44
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$400(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$500(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_2e
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$500(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_32
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$600(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result v1

    if-ltz v1, :cond_5a

    .line 47
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$700(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 48
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$600(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getLetters(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 49
    :cond_47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$600(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result v2

    if-le v1, v2, :cond_5a

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$600(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_5a
    :goto_5a
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mText:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$800(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mColor:I

    .line 56
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$900(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mFontSize:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 58
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$1000(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$1100(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 61
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$1200(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 63
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 64
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$1300(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->access$1300(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I

    move-result p1

    iput p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mBorderThickness:I

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 69
    iget v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mColor:I

    invoke-direct {p0, v0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->getDarkerShade(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mBorderThickness:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    .line 75
    iget v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$1;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;-><init>(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)V

    return-void
.end method

.method public static builder()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;
    .registers 2

    .line 80
    new-instance v0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;-><init>(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$1;)V

    return-object v0
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .registers 5

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 117
    iget v1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mBorderThickness:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 119
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mShape:Landroid/graphics/drawable/shapes/RectShape;

    instance-of v2, v1, Landroid/graphics/drawable/shapes/OvalShape;

    if-eqz v2, :cond_20

    .line 120
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_31

    .line 121
    :cond_20
    instance-of v1, v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    if-eqz v1, :cond_2c

    .line 122
    iget v1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mRadius:F

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_31

    .line 124
    :cond_2c
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_31
    return-void
.end method

.method private getDarkerShade(I)I
    .registers 5

    .line 85
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 86
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 87
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 85
    invoke-static {v0, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 93
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 97
    iget v1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mBorderThickness:I

    if-lez v1, :cond_e

    .line 98
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->drawBorder(Landroid/graphics/Canvas;)V

    .line 100
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 101
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    iget v2, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mWidth:I

    if-gez v2, :cond_23

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 105
    :cond_23
    iget v3, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mHeight:I

    if-gez v3, :cond_2b

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 106
    :cond_2b
    iget v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mFontSize:I

    if-gez v0, :cond_35

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 108
    :cond_35
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mText:Ljava/lang/String;

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
