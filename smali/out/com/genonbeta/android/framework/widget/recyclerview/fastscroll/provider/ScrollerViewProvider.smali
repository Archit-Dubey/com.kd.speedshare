.class public abstract Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;
.super Ljava/lang/Object;
.source "ScrollerViewProvider.java"


# instance fields
.field private mBubbleBehavior:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

.field private mHandleBehavior:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

.field private mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->mBubbleBehavior:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    if-nez v0, :cond_a

    .line 81
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->provideBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->mBubbleBehavior:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    .line 83
    :cond_a
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->mBubbleBehavior:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    return-object v0
.end method

.method public abstract getBubbleOffset()I
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->mHandleBehavior:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    if-nez v0, :cond_a

    .line 73
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->provideHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->mHandleBehavior:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    .line 75
    :cond_a
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->mHandleBehavior:Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    return-object v0
.end method

.method protected getScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    return-object v0
.end method

.method public onHandleGrabbed()V
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;->onHandleGrabbed()V

    .line 89
    :cond_d
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;->onHandleGrabbed()V

    :cond_1a
    return-void
.end method

.method public onHandleReleased()V
    .registers 2

    .line 94
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;->onHandleReleased()V

    .line 95
    :cond_d
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;->onHandleReleased()V

    :cond_1a
    return-void
.end method

.method public onScrollFinished()V
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;->onScrollFinished()V

    .line 107
    :cond_d
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;->onScrollFinished()V

    :cond_1a
    return-void
.end method

.method public onScrollStarted()V
    .registers 2

    .line 100
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;->onScrollStarted()V

    .line 101
    :cond_d
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->getBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;->onScrollStarted()V

    :cond_1a
    return-void
.end method

.method protected abstract provideBubbleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;
.end method

.method public abstract provideBubbleTextView()Landroid/widget/TextView;
.end method

.method public abstract provideBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract provideHandleBehavior()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ViewBehavior;
.end method

.method public abstract provideHandleView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public setFastScroller(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    return-void
.end method
