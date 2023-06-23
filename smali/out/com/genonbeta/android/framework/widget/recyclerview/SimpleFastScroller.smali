.class public Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SimpleFastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorUpdater;,
        Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mHorizontalDragX:F

.field private final mHorizontalRange:[I

.field private mHorizontalThumbCenterX:I

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field private mHorizontalThumbWidth:I

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field private mVerticalDragY:F

.field private final mVerticalRange:[I

.field private mVerticalThumbCenterY:I

.field final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mVerticalThumbHeight:I

.field private final mVerticalThumbWidth:I

.field final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 40
    sput-object v0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->PRESSED_STATE_SET:[I

    new-array v0, v2, [I

    .line 41
    sput-object v0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .registers 11

    .line 108
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 47
    fill-array-data v1, :array_8c

    .line 48
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v0, [I

    .line 58
    iput-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalRange:[I

    new-array v0, v0, [I

    .line 59
    iput-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalRange:[I

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mAnimationState:I

    .line 72
    new-instance v1, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$1;-><init>(Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;)V

    iput-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 80
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewWidth:I

    .line 81
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewHeight:I

    .line 87
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mNeedVerticalScrollbar:Z

    .line 88
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mNeedHorizontalScrollbar:Z

    .line 89
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    .line 91
    new-instance v1, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$2;

    invoke-direct {v1, p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$2;-><init>(Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;)V

    iput-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 101
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mDragState:I

    .line 109
    iput-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 110
    iput-object p3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    iput-object p4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 112
    iput-object p5, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbWidth:I

    .line 114
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalTrackWidth:I

    .line 116
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbHeight:I

    .line 118
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalTrackHeight:I

    .line 119
    iput p7, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mScrollbarMinimumRange:I

    .line 120
    iput p8, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mMargin:I

    .line 121
    iget-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 122
    iget-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 124
    iget-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;

    invoke-direct {p3, p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;-><init>(Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    iget-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorUpdater;

    invoke-direct {p3, p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorUpdater;-><init>(Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :array_8c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelHide()V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 154
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 155
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 156
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->cancelHide()V

    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .registers 8

    .line 307
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewHeight:I

    .line 309
    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    .line 310
    iget v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbCenterX:I

    iget v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 311
    iget-object v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 312
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewWidth:I

    iget v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalTrackHeight:I

    .line 313
    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, v0

    const/4 v3, 0x0

    .line 315
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    .line 317
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 318
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v2

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    .line 319
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .registers 8

    .line 281
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewWidth:I

    .line 283
    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    .line 284
    iget v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbCenterY:I

    iget v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 285
    iget-object v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 286
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalTrackWidth:I

    iget v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewHeight:I

    .line 287
    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 290
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 291
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbWidth:I

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 292
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 293
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 295
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_60

    :cond_46
    int-to-float v1, v0

    const/4 v3, 0x0

    .line 297
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 298
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    .line 299
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 300
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    .line 301
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_60
    return-void
.end method

.method private getHorizontalRange()[I
    .registers 4

    .line 543
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalRange:[I

    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 544
    iget v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method private getVerticalRange()[I
    .registers 4

    .line 533
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalRange:[I

    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 534
    iget v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .registers 10

    .line 459
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->getHorizontalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    .line 460
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 461
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    return-void

    .line 465
    :cond_23
    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 466
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 467
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    .line 465
    invoke-direct/range {v0 .. v6}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_40

    .line 469
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 472
    :cond_40
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalDragX:F

    return-void
.end method

.method private isLayoutRTL()Z
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private resetHideDelay(I)V
    .registers 6

    .line 250
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->cancelHide()V

    .line 251
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollTo(FF[IIII)I
    .registers 9

    const/4 v0, 0x1

    .line 478
    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    if-nez v0, :cond_a

    return v1

    :cond_a
    sub-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    sub-int/2addr p4, p6

    int-to-float p1, p4

    mul-float p2, p2, p1

    float-to-int p1, p2

    add-int/2addr p5, p1

    if-ge p5, p4, :cond_18

    if-ltz p5, :cond_18

    return p1

    :cond_18
    return v1
.end method

.method private setupCallbacks()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 147
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 148
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private verticalScrollTo(F)V
    .registers 10

    .line 443
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->getVerticalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    .line 444
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 445
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    return-void

    .line 448
    :cond_23
    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalDragY:F

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 449
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 450
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewHeight:I

    move-object v0, p0

    move v2, p1

    .line 448
    invoke-direct/range {v0 .. v6}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_40

    .line 452
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 454
    :cond_40
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalDragY:F

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    .line 136
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->destroyCallbacks()V

    .line 138
    :cond_a
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_11

    .line 140
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->setupCallbacks()V

    :cond_11
    return-void
.end method

.method public getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 510
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->hide(I)V

    return-void
.end method

.method public hide(I)V
    .registers 7

    .line 230
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mAnimationState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_e

    goto :goto_33

    .line 232
    :cond_9
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    const/4 v0, 0x3

    .line 235
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mAnimationState:I

    .line 236
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 237
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_33
    return-void
.end method

.method public isDragging()Z
    .registers 3

    .line 194
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isHidden()Z
    .registers 2

    .line 204
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPointInsideHorizontalThumb(FF)Z
    .registers 5

    .line 503
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_21

    iget p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbCenterX:I

    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_21

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return p1
.end method

.method public isPointInsideVerticalThumb(FF)Z
    .registers 5

    .line 495
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_31

    goto :goto_1a

    :cond_10
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_31

    :goto_1a
    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbCenterY:I

    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_31

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    return p1
.end method

.method public isVisible()Z
    .registers 3

    .line 199
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    .line 257
    iget p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewWidth:I

    iget-object p3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_28

    iget p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewHeight:I

    iget-object p3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 258
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_15

    goto :goto_28

    .line 269
    :cond_15
    iget p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mAnimationState:I

    if-eqz p2, :cond_27

    .line 270
    iget-boolean p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mNeedVerticalScrollbar:Z

    if-eqz p2, :cond_20

    .line 271
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 273
    :cond_20
    iget-boolean p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_27

    .line 274
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    :cond_27
    return-void

    .line 259
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewWidth:I

    .line 260
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewHeight:I

    const/4 p1, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->setState(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 374
    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_46

    .line 375
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    .line 376
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    .line 377
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_49

    if-nez p1, :cond_29

    if-eqz v3, :cond_49

    :cond_29
    if-eqz v3, :cond_36

    .line 380
    iput v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mDragState:I

    .line 381
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalDragX:F

    goto :goto_42

    :cond_36
    if-eqz p1, :cond_42

    .line 383
    iput v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mDragState:I

    .line 384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalDragY:F

    .line 387
    :cond_42
    :goto_42
    invoke-virtual {p0, v1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->setState(I)V

    goto :goto_48

    :cond_46
    if-ne p1, v1, :cond_49

    :goto_48
    const/4 v0, 0x1

    :cond_49
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 7

    .line 403
    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    if-nez p1, :cond_5

    return-void

    .line 407
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_46

    .line 408
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    .line 409
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    if-nez p1, :cond_29

    if-eqz v2, :cond_7f

    :cond_29
    if-eqz v2, :cond_36

    .line 412
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mDragState:I

    .line 413
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalDragX:F

    goto :goto_42

    :cond_36
    if-eqz p1, :cond_42

    .line 415
    iput v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mDragState:I

    .line 416
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalDragY:F

    .line 418
    :cond_42
    :goto_42
    invoke-virtual {p0, v1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->setState(I)V

    goto :goto_7f

    .line 420
    :cond_46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_5c

    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    if-ne p1, v1, :cond_5c

    const/4 p1, 0x0

    .line 421
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalDragY:F

    .line 422
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalDragX:F

    .line 423
    invoke-virtual {p0, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->setState(I)V

    const/4 p1, 0x0

    .line 424
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mDragState:I

    goto :goto_7f

    .line 425
    :cond_5c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_7f

    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    if-ne p1, v1, :cond_7f

    .line 426
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->show()V

    .line 427
    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mDragState:I

    if-ne p1, v0, :cond_74

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->horizontalScrollTo(F)V

    .line 430
    :cond_74
    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mDragState:I

    if-ne p1, v1, :cond_7f

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->verticalScrollTo(F)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method requestRedraw()V
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    return-void
.end method

.method setState(I)V
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 167
    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    if-eq v1, v0, :cond_11

    .line 168
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 169
    invoke-direct {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->cancelHide()V

    :cond_11
    if-nez p1, :cond_17

    .line 173
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->requestRedraw()V

    goto :goto_1a

    .line 175
    :cond_17
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->show()V

    .line 178
    :goto_1a
    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    if-ne v1, v0, :cond_2d

    if-eq p1, v0, :cond_2d

    .line 179
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/16 v0, 0x4b0

    .line 180
    invoke-direct {p0, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->resetHideDelay(I)V

    goto :goto_35

    :cond_2d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_35

    const/16 v0, 0x5dc

    .line 182
    invoke-direct {p0, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->resetHideDelay(I)V

    .line 184
    :cond_35
    :goto_35
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    return-void
.end method

.method public show()V
    .registers 6

    .line 209
    iget v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mAnimationState:I

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_3c

    .line 211
    :cond_8
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    const/4 v0, 0x1

    .line 214
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mAnimationState:I

    .line 215
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 216
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 217
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 218
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_3c
    return-void
.end method

.method updateScrollPosition(II)V
    .registers 11

    .line 331
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 332
    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewHeight:I

    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_14

    .line 333
    iget v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mScrollbarMinimumRange:I

    if-lt v1, v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    iput-boolean v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mNeedVerticalScrollbar:Z

    .line 336
    iget-object v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 337
    iget v5, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mRecyclerViewWidth:I

    sub-int v6, v2, v5

    if-lez v6, :cond_29

    .line 338
    iget v6, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mScrollbarMinimumRange:I

    if-lt v5, v6, :cond_29

    const/4 v6, 0x1

    goto :goto_2a

    :cond_29
    const/4 v6, 0x0

    :goto_2a
    iput-boolean v6, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mNeedHorizontalScrollbar:Z

    .line 341
    iget-boolean v7, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mNeedVerticalScrollbar:Z

    if-nez v7, :cond_3a

    if-nez v6, :cond_3a

    .line 342
    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    if-eqz p1, :cond_39

    .line 343
    invoke-virtual {p0, v3}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->setState(I)V

    :cond_39
    return-void

    .line 348
    :cond_3a
    iget-boolean v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mNeedVerticalScrollbar:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_55

    int-to-float p2, p2

    int-to-float v3, v1

    div-float v7, v3, v6

    add-float/2addr p2, v7

    mul-float v3, v3, p2

    int-to-float p2, v0

    div-float/2addr v3, p2

    float-to-int p2, v3

    .line 350
    iput p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbCenterY:I

    mul-int p2, v1, v1

    .line 352
    div-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbHeight:I

    .line 356
    :cond_55
    iget-boolean p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_6e

    int-to-float p1, p1

    int-to-float p2, v5

    div-float v0, p2, v6

    add-float/2addr p1, v0

    mul-float p2, p2, p1

    int-to-float p1, v2

    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 358
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v5, v5

    .line 360
    div-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mHorizontalThumbWidth:I

    .line 364
    :cond_6e
    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mState:I

    if-eqz p1, :cond_74

    if-ne p1, v4, :cond_77

    .line 365
    :cond_74
    invoke-virtual {p0, v4}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->setState(I)V

    :cond_77
    return-void
.end method
