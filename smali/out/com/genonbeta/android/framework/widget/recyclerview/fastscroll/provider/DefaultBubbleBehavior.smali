.class public Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultBubbleBehavior;
.super Ljava/lang/Object;
.source "DefaultBubbleBehavior.java"

# interfaces
.implements Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;


# instance fields
.field private final mAnimationManager:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;)V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultBubbleBehavior;->mAnimationManager:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;

    return-void
.end method


# virtual methods
.method public onHandleGrabbed()V
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultBubbleBehavior;->mAnimationManager:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->show()V

    return-void
.end method

.method public onHandleReleased()V
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/DefaultBubbleBehavior;->mAnimationManager:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;->hide()V

    return-void
.end method

.method public onScrollFinished()V
    .registers 1

    return-void
.end method

.method public onScrollStarted()V
    .registers 1

    return-void
.end method
