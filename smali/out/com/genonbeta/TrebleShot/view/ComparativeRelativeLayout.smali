.class public Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ComparativeRelativeLayout.java"


# instance fields
.field private mAlwaysUseWidth:Z

.field private mBaseOnSmaller:Z

.field private mTallerExtraLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mAlwaysUseWidth:Z

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mBaseOnSmaller:Z

    .line 20
    iput v1, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mTallerExtraLength:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/genonbeta/TrebleShot/R$styleable;->ComparativeRelativeLayout:[I

    .line 37
    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    iget-boolean p2, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mBaseOnSmaller:Z

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mBaseOnSmaller:Z

    .line 41
    iget p2, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mTallerExtraLength:I

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mTallerExtraLength:I

    .line 43
    iget-boolean p2, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mAlwaysUseWidth:Z

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mAlwaysUseWidth:Z

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 4

    .line 51
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mBaseOnSmaller:Z

    if-eqz v0, :cond_e

    if-le p1, p2, :cond_9

    .line 53
    iget p1, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mTallerExtraLength:I

    goto :goto_18

    :cond_9
    if-le p2, p1, :cond_19

    .line 55
    iget p2, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mTallerExtraLength:I

    goto :goto_14

    .line 56
    :cond_e
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mAlwaysUseWidth:Z

    if-eqz v0, :cond_16

    .line 57
    iget p2, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mTallerExtraLength:I

    :goto_14
    add-int/2addr p2, p1

    goto :goto_19

    .line 59
    :cond_16
    iget p1, p0, Lcom/genonbeta/TrebleShot/view/ComparativeRelativeLayout;->mTallerExtraLength:I

    :goto_18
    add-int/2addr p1, p2

    .line 61
    :cond_19
    :goto_19
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
