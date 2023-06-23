.class public Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;
.super Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;
.source "LongTextBubbleFastScrollViewProvider.java"


# instance fields
.field private mBubble:Landroid/view/View;

.field private mHandle:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBubbleOffset()I
    .registers 4

    .line 63
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mBubble:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_29

    :cond_1b
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mBubble:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_29
    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    return v0
.end method

.method protected provideBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;
    .registers 4

    .line 75
    new-instance v0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultBubbleBehavior;

    new-instance v1, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mBubble:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;-><init>(Landroid/view/View;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;->withPivotX(F)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->withPivotY(F)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->build()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultBubbleBehavior;-><init>(Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;)V

    return-object v0
.end method

.method public provideBubbleTextView()Landroid/widget/TextView;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mBubble:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public provideBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mBubble:Landroid/view/View;

    return-object p1
.end method

.method protected provideHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public provideHandleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .line 31
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mHandle:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f06009e

    if-eqz p1, :cond_1b

    const/4 v7, 0x0

    goto :goto_28

    :cond_1b
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v7, p1

    .line 34
    :goto_28
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result p1

    if-nez p1, :cond_34

    const/4 v6, 0x0

    goto :goto_41

    :cond_34
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v6, v0

    .line 35
    :goto_41
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070092

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, p1

    move v4, v6

    move v5, v7

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 36
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mHandle:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/Utils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v0

    const v1, 0x7f06009b

    const v2, 0x7f06009d

    if-eqz v0, :cond_75

    const v0, 0x7f06009b

    goto :goto_78

    :cond_75
    const v0, 0x7f06009d

    :goto_78
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 39
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_91

    const v1, 0x7f06009d

    :cond_91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 40
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 42
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mHandle:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;->mHandle:Landroid/view/View;

    return-object p1
.end method
