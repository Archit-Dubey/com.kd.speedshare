.class Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SimpleFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;)V
    .registers 2

    .line 573
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 570
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 596
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 580
    iget-boolean p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 581
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;->mCanceled:Z

    return-void

    .line 584
    :cond_8
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    iget-object p1, p1, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_25

    .line 585
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    iput v0, p1, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mAnimationState:I

    .line 586
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->setState(I)V

    goto :goto_2f

    .line 588
    :cond_25
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    const/4 v0, 0x2

    iput v0, p1, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mAnimationState:I

    .line 589
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorListener;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->requestRedraw()V

    :goto_2f
    return-void
.end method
