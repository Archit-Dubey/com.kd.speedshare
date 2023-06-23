.class Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;-><init>(Landroid/view/View;IIFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mWasCanceled:Z

.field final synthetic this$0:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;Landroid/view/View;)V
    .registers 3

    .line 40
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$1;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;

    iput-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 58
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$1;->mWasCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 47
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 49
    iget-boolean p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$1;->mWasCanceled:Z

    if-nez p1, :cond_d

    .line 50
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$1;->val$view:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$1;->mWasCanceled:Z

    return-void
.end method
