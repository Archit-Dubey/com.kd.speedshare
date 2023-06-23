.class public Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;
.super Landroid/widget/LinearLayout;
.source "FastScroller.java"


# static fields
.field private static final STYLE_NONE:I = -0x1


# instance fields
.field private mBubble:Landroid/view/View;

.field private mBubbleColor:I

.field private mBubbleOffset:I

.field private mBubbleTextAppearance:I

.field private mBubbleTextView:Landroid/widget/TextView;

.field private mHandle:Landroid/view/View;

.field private mHandleColor:I

.field private mManuallyChangingPosition:Z

.field private mMaxVisibility:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollListener:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;

.field private mScrollerOrientation:I

.field private mTitleProvider:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;

.field private mViewProvider:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p3, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;

    invoke-direct {p3, p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;-><init>(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)V

    iput-object p3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mScrollListener:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;

    const/4 p3, 0x0

    .line 62
    invoke-virtual {p0, p3}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->setClipChildren(Z)V

    .line 63
    sget-object v0, Lcom/genonbeta/android/framework/R$styleable;->GenfwFastScroller:[I

    sget v1, Lcom/genonbeta/android/framework/R$attr;->genfw_fastScrollStyle:I

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    :try_start_16
    sget p2, Lcom/genonbeta/android/framework/R$styleable;->GenfwFastScroller_genfw_fastScrollBubbleColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleColor:I

    .line 67
    sget p2, Lcom/genonbeta/android/framework/R$styleable;->GenfwFastScroller_genfw_fastScrollHandleColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandleColor:I

    .line 68
    sget p2, Lcom/genonbeta/android/framework/R$styleable;->GenfwFastScroller_genfw_fastScrollBubbleTextAppearance:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleTextAppearance:I
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_41

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mMaxVisibility:I

    .line 74
    new-instance p1, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;

    invoke-direct {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultScrollerViewProvider;-><init>()V

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->setViewProvider(Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;)V

    return-void

    :catchall_41
    move-exception p2

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic access$000(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->invalidateVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mTitleProvider:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mViewProvider:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;

    return-object p0
.end method

.method static synthetic access$302(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mManuallyChangingPosition:Z

    return p1
.end method

.method static synthetic access$400(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;Landroid/view/MotionEvent;)F
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getRelativeTouchPosition(Landroid/view/MotionEvent;)F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;F)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->setRecyclerViewPosition(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private applyStyling()V
    .registers 4

    .line 194
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 195
    iget-object v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->setBackgroundTint(Landroid/view/View;I)V

    .line 197
    :cond_a
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandleColor:I

    if-eq v0, v1, :cond_13

    .line 198
    iget-object v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->setBackgroundTint(Landroid/view/View;I)V

    .line 200
    :cond_13
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleTextAppearance:I

    if-eq v0, v1, :cond_1c

    .line 201
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_1c
    return-void
.end method

.method private getRelativeTouchPosition(Landroid/view/MotionEvent;)F
    .registers 4

    .line 248
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-static {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/Utils;->getViewRawY(Landroid/view/View;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 250
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_1b
    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1

    .line 253
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-static {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/Utils;->getViewRawX(Landroid/view/View;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 254
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_1b
.end method

.method private initHandleMovement()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;

    invoke-direct {v1, p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;-><init>(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private invalidateVisibility()V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 268
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 269
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 270
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isRecyclerViewNotScrollable()Z

    move-result v0

    if-nez v0, :cond_2c

    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mMaxVisibility:I

    if-eqz v0, :cond_28

    goto :goto_2c

    .line 275
    :cond_28
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_30

    :cond_2c
    :goto_2c
    const/4 v0, 0x4

    .line 273
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_30
    return-void
.end method

.method private isRecyclerViewNotScrollable()Z
    .registers 5

    .line 281
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 282
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    mul-int v0, v0, v3

    iget-object v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    return v1

    .line 284
    :cond_29
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    mul-int v0, v0, v3

    iget-object v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_48

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    return v1
.end method

.method private setBackgroundTint(Landroid/view/View;I)V
    .registers 5

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 208
    invoke-static {p1, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/Utils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .registers 8

    .line 289
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_b4

    .line 296
    :cond_c
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 297
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    .line 299
    iget-object v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    goto :goto_37

    .line 301
    :cond_25
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 303
    iget-object v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 307
    :goto_37
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    .line 308
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v3

    goto :goto_57

    :cond_4b
    iget-object v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    .line 309
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v3

    :goto_57
    if-nez v3, :cond_5b

    const/4 v3, 0x0

    goto :goto_61

    .line 311
    :cond_5b
    iget-object v5, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 313
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 315
    :goto_61
    iget-object v5, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-nez v3, :cond_6f

    const/4 v3, -0x1

    goto :goto_73

    .line 316
    :cond_6f
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :goto_73
    if-ltz v3, :cond_77

    if-lt v3, v5, :cond_84

    :cond_77
    add-int/lit8 v3, v5, -0x1

    int-to-float v3, v3

    int-to-float v5, v5

    mul-float v5, v5, p1

    float-to-int v5, v5

    int-to-float v5, v5

    .line 322
    invoke-static {v4, v3, v5}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/Utils;->getValueInRange(FFF)F

    move-result v3

    float-to-int v3, v3

    .line 324
    :cond_84
    iget-object v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mTitleProvider:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;

    if-eqz v4, :cond_93

    iget-object v5, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_93

    .line 325
    invoke-interface {v4, v3}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;->getSectionTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_93
    int-to-float v2, v2

    mul-float v2, v2, p1

    int-to-float p1, v1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_9e

    if-nez v0, :cond_9e

    return-void

    :cond_9e
    add-int/2addr v0, v1

    int-to-float p1, v0

    sub-float/2addr v2, p1

    float-to-int p1, v2

    .line 340
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_af

    .line 341
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_b4

    .line 343
    :cond_af
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_b4
    :goto_b4
    return-void
.end method


# virtual methods
.method public addScrollerListener(Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener$ScrollerListener;)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mScrollListener:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->addScrollerListener(Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener$ScrollerListener;)V

    return-void
.end method

.method public getViewProvider()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;
    .registers 2

    .line 386
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mViewProvider:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;

    return-object v0
.end method

.method public isVertical()Z
    .registers 3

    .line 376
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mScrollerOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 175
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 177
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->initHandleMovement()V

    .line 178
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mViewProvider:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getBubbleOffset()I

    move-result p1

    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleOffset:I

    .line 180
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->applyStyling()V

    .line 182
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isInEditMode()Z

    return-void
.end method

.method public setBubbleColor(I)V
    .registers 2

    .line 135
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleColor:I

    .line 136
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->invalidate()V

    return-void
.end method

.method public setBubbleTextAppearance(I)V
    .registers 2

    .line 157
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleTextAppearance:I

    .line 158
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->invalidate()V

    return-void
.end method

.method public setHandleColor(I)V
    .registers 2

    .line 146
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandleColor:I

    .line 147
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 122
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mScrollerOrientation:I

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 125
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;

    if-eqz v0, :cond_12

    .line 89
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;

    iput-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mTitleProvider:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;

    .line 91
    :cond_12
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mScrollListener:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 93
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->invalidateVisibility()V

    .line 95
    new-instance v0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$1;-><init>(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public setScrollerPosition(F)V
    .registers 7

    .line 348
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 349
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubble:Landroid/view/View;

    .line 351
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubble:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 352
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p1

    iget v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 349
    invoke-static {v1, v2, v3}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/Utils;->getValueInRange(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 355
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    .line 357
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 358
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float p1, p1, v3

    .line 355
    invoke-static {v1, v2, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/Utils;->getValueInRange(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    goto :goto_9c

    .line 360
    :cond_52
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubble:Landroid/view/View;

    .line 362
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubble:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 363
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p1

    iget v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 360
    invoke-static {v1, v2, v3}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/Utils;->getValueInRange(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 366
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    .line 368
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 369
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float p1, p1, v3

    .line 366
    invoke-static {v1, v2, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/Utils;->getValueInRange(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    :goto_9c
    return-void
.end method

.method public setViewProvider(Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;)V
    .registers 3

    .line 396
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->removeAllViews()V

    .line 397
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mViewProvider:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;

    .line 399
    invoke-virtual {p1, p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->setFastScroller(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)V

    .line 401
    invoke-virtual {p1, p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->provideBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubble:Landroid/view/View;

    .line 402
    invoke-virtual {p1, p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->provideHandleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    .line 403
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->provideBubbleTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubbleTextView:Landroid/widget/TextView;

    .line 405
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mBubble:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->addView(Landroid/view/View;)V

    .line 406
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 260
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mMaxVisibility:I

    .line 261
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->invalidateVisibility()V

    return-void
.end method

.method public shouldUpdateHandlePosition()Z
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mManuallyChangingPosition:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
