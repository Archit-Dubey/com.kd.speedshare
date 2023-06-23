.class public Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;
.super Ljava/lang/Object;
.source "TextDrawable.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
.implements Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;
.implements Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBorderThickness:I

.field private mColor:I

.field private mFirstLetters:Z

.field private mFont:Landroid/graphics/Typeface;

.field private mFontSize:I

.field private mHeight:I

.field private mIsBold:Z

.field private mRadius:F

.field private mShape:Landroid/graphics/drawable/shapes/RectShape;

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextMaxLength:I

.field private mToUpperCase:Z

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 226
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mText:Ljava/lang/String;

    const v0, -0x777778

    .line 227
    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mColor:I

    const/4 v0, -0x1

    .line 228
    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mTextColor:I

    const/4 v1, 0x0

    .line 229
    iput v1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mBorderThickness:I

    .line 230
    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mWidth:I

    .line 231
    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mHeight:I

    .line 232
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v2, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mShape:Landroid/graphics/drawable/shapes/RectShape;

    const-string v2, "sans-serif"

    .line 233
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mFont:Landroid/graphics/Typeface;

    .line 234
    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mTextMaxLength:I

    .line 235
    iput v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mFontSize:I

    .line 236
    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mIsBold:Z

    .line 237
    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mToUpperCase:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$1;)V
    .registers 2

    .line 207
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mShape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I
    .registers 1

    .line 207
    iget p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I
    .registers 1

    .line 207
    iget p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mTextColor:I

    return p0
.end method

.method static synthetic access$1100(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Z
    .registers 1

    .line 207
    iget-boolean p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mIsBold:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Landroid/graphics/Typeface;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I
    .registers 1

    .line 207
    iget p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mBorderThickness:I

    return p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I
    .registers 1

    .line 207
    iget p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)F
    .registers 1

    .line 207
    iget p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mRadius:F

    return p0
.end method

.method static synthetic access$400(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Z
    .registers 1

    .line 207
    iget-boolean p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mToUpperCase:Z

    return p0
.end method

.method static synthetic access$500(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Ljava/lang/String;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I
    .registers 1

    .line 207
    iget p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mTextMaxLength:I

    return p0
.end method

.method static synthetic access$700(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)Z
    .registers 1

    .line 207
    iget-boolean p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mFirstLetters:Z

    return p0
.end method

.method static synthetic access$800(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I
    .registers 1

    .line 207
    iget p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mColor:I

    return p0
.end method

.method static synthetic access$900(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;)I
    .registers 1

    .line 207
    iget p0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mFontSize:I

    return p0
.end method


# virtual methods
.method public beginConfig()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 1

    return-object p0
.end method

.method public bold()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mIsBold:Z

    return-object p0
.end method

.method public build(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;
    .registers 3

    .line 368
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mText:Ljava/lang/String;

    .line 369
    new-instance p1, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;-><init>(Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$1;)V

    return-object p1
.end method

.method public buildRect(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->rect()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;

    .line 348
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->build(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public buildRound(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;
    .registers 2

    .line 361
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->round()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;

    .line 362
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->build(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public buildRoundRect(Ljava/lang/String;I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;
    .registers 3

    .line 354
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->roundRect(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;

    .line 355
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->build(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public endConfig()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;
    .registers 1

    return-object p0
.end method

.method public firstLettersOnly(Z)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    .line 305
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mFirstLetters:Z

    return-object p0
.end method

.method public fontSize(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    .line 286
    iput p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mFontSize:I

    return-object p0
.end method

.method public height(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    .line 248
    iput p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mHeight:I

    return-object p0
.end method

.method public rect()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;
    .registers 2

    .line 324
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mShape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method public round()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;
    .registers 2

    .line 331
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mShape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method public roundRect(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IBuilder;
    .registers 4

    int-to-float p1, p1

    .line 338
    iput p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mRadius:F

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 340
    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mShape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method public shapeColor(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    .line 255
    iput p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mColor:I

    return-object p0
.end method

.method public textColor(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    .line 261
    iput p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mTextColor:I

    return-object p0
.end method

.method public textMaxLength(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    .line 268
    iput p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mTextMaxLength:I

    return-object p0
.end method

.method public toUpperCase()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mToUpperCase:Z

    return-object p0
.end method

.method public useFont(Landroid/graphics/Typeface;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public width(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    .line 242
    iput p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mWidth:I

    return-object p0
.end method

.method public withBorder(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;
    .registers 2

    .line 274
    iput p1, p0, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$Builder;->mBorderThickness:I

    return-object p0
.end method
