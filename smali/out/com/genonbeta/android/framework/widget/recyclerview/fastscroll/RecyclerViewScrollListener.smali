.class public Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener$ScrollerListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener$ScrollerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOldScrollState:I

.field private final mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mOldScrollState:I

    .line 26
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    return-void
.end method


# virtual methods
.method public addScrollerListener(Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener$ScrollerListener;)V
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyListeners(F)V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener$ScrollerListener;

    .line 90
    invoke-interface {v1, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener$ScrollerListener;->onScroll(F)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 37
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_13

    .line 39
    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mOldScrollState:I

    if-eqz p1, :cond_13

    .line 40
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getViewProvider()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->onScrollFinished()V

    goto :goto_22

    :cond_13
    if-eqz p2, :cond_22

    .line 41
    iget p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mOldScrollState:I

    if-nez p1, :cond_22

    .line 42
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->getViewProvider()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->onScrollStarted()V

    .line 44
    :cond_22
    :goto_22
    iput p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mOldScrollState:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 50
    iget-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-virtual {p2}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->shouldUpdateHandlePosition()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 51
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->updateHandlePosition(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_b
    return-void
.end method

.method public updateHandlePosition(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 61
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    .line 63
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    goto :goto_21

    .line 65
    :cond_15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 67
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result p1

    :goto_21
    if-gt v0, v1, :cond_32

    if-gtz v0, :cond_27

    const/4 p1, 0x0

    goto :goto_37

    :cond_27
    int-to-float v0, v0

    int-to-float v2, v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-float v1, v0, v1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    goto :goto_34

    :cond_32
    add-int/2addr v0, v1

    int-to-float v0, v0

    :goto_34
    int-to-float p1, p1

    div-float p1, v0, p1

    .line 83
    :goto_37
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->mScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->setScrollerPosition(F)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/RecyclerViewScrollListener;->notifyListeners(F)V

    return-void
.end method
