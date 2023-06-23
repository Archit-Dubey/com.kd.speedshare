.class public Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;
.super Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;
.source "DefaultScrollerViewProvider.java"


# instance fields
.field protected mBubble:Landroid/view/View;

.field protected mHandle:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBubbleOffset()I
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mBubble:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_29

    :cond_1b
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mBubble:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_29
    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected provideBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;
    .registers 4

    .line 67
    new-instance v0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultBubbleBehavior;

    new-instance v1, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;

    iget-object v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mBubble:Landroid/view/View;

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

    .line 49
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mBubble:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public provideBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 43
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$layout;->genfw_fastscroll_default_bubble:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mBubble:Landroid/view/View;

    return-object p1
.end method

.method protected provideHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public provideHandleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .line 25
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mHandle:Landroid/view/View;

    .line 27
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 v6, 0x0

    goto :goto_27

    :cond_18
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/genonbeta/android/framework/R$dimen;->genfw_fastscroll_handle_inset:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v6, p1

    .line 28
    :goto_27
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result p1

    if-nez p1, :cond_33

    const/4 v5, 0x0

    goto :goto_42

    :cond_33
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/genonbeta/android/framework/R$dimen;->genfw_fastscroll_handle_inset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v5, v0

    .line 29
    :goto_42
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$drawable;->genfw_fastscroll_default_handle:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, p1

    move v3, v5

    move v4, v6

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 30
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mHandle:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/Utils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_6e

    sget v0, Lcom/genonbeta/android/framework/R$dimen;->genfw_fastscroll_handle_clickable_width:I

    goto :goto_70

    :cond_6e
    sget v0, Lcom/genonbeta/android/framework/R$dimen;->genfw_fastscroll_handle_height:I

    :goto_70
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 33
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_89

    sget v1, Lcom/genonbeta/android/framework/R$dimen;->genfw_fastscroll_handle_height:I

    goto :goto_8b

    :cond_89
    sget v1, Lcom/genonbeta/android/framework/R$dimen;->genfw_fastscroll_handle_clickable_width:I

    :goto_8b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 34
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 35
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mHandle:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;->mHandle:Landroid/view/View;

    return-object p1
.end method
