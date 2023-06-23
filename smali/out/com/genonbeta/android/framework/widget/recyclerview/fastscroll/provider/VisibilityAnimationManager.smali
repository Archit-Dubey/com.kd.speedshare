.class public Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;
.super Ljava/lang/Object;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;,
        Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;
    }
.end annotation


# instance fields
.field protected mHideAnimator:Landroid/animation/AnimatorSet;

.field private mPivotXRelative:F

.field private mPivotYRelative:F

.field protected mShowAnimator:Landroid/animation/AnimatorSet;

.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;IIFFI)V
    .registers 7

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mView:Landroid/view/View;

    .line 32
    iput p4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mPivotXRelative:F

    .line 33
    iput p5, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mPivotYRelative:F

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p3

    check-cast p3, Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mHideAnimator:Landroid/animation/AnimatorSet;

    int-to-long p4, p6

    .line 35
    invoke-virtual {p3, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 36
    iget-object p3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mHideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 38
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 39
    iget-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mHideAnimator:Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$1;

    invoke-direct {p3, p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$1;-><init>(Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->updatePivot()V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .line 79
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->updatePivot()V

    .line 80
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mHideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public show()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mHideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 70
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    .line 71
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->updatePivot()V

    .line 73
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1c
    return-void
.end method

.method protected updatePivot()V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mView:Landroid/view/View;

    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mPivotXRelative:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 86
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mView:Landroid/view/View;

    iget v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->mPivotYRelative:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
