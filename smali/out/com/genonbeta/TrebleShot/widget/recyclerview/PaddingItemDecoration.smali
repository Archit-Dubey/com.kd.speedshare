.class public Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PaddingItemDecoration.java"


# instance fields
.field private mActive:Z

.field private mEdgeSpace:Z

.field private mHorizontalView:Z

.field private mPadding:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;-><init>(IZZ)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .registers 5

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mActive:Z

    .line 20
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mEdgeSpace:Z

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mHorizontalView:Z

    .line 30
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->setPadding(I)V

    .line 31
    invoke-virtual {p0, p3}, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->setHorizontalView(Z)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->setEdgeSpace(Z)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 10

    .line 38
    iget-boolean p4, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mActive:Z

    if-eqz p4, :cond_a5

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_c

    goto/16 :goto_a5

    .line 41
    :cond_c
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-gez p2, :cond_13

    return-void

    :cond_13
    const/4 p4, 0x1

    .line 49
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 50
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 51
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    .line 52
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    .line 53
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p3

    sub-int/2addr p4, p3

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    .line 56
    :goto_3a
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 58
    iget v2, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mPadding:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_79

    .line 59
    div-int/lit8 v3, v2, 0x2

    .line 62
    iget-boolean v4, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mEdgeSpace:Z

    if-eqz v4, :cond_64

    if-nez v0, :cond_4e

    move v1, v2

    goto :goto_4f

    :cond_4e
    move v1, v3

    .line 63
    :goto_4f
    iput v1, p3, Landroid/graphics/Rect;->left:I

    if-ne v0, p4, :cond_54

    goto :goto_55

    :cond_54
    move v2, v3

    .line 64
    :goto_55
    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 65
    iget v1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mPadding:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, p4, :cond_79

    if-ne v0, p2, :cond_79

    .line 68
    iget p2, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mPadding:I

    iput p2, p3, Landroid/graphics/Rect;->top:I

    goto :goto_79

    :cond_64
    if-nez v0, :cond_68

    const/4 v2, 0x0

    goto :goto_69

    :cond_68
    move v2, v3

    .line 70
    :goto_69
    iput v2, p3, Landroid/graphics/Rect;->left:I

    if-ne v0, p4, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v3

    .line 71
    :goto_6f
    iput v1, p3, Landroid/graphics/Rect;->right:I

    if-gt p2, p4, :cond_75

    if-eq v0, p2, :cond_79

    .line 74
    :cond_75
    iget p2, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mPadding:I

    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 78
    :cond_79
    :goto_79
    iget-boolean p2, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mHorizontalView:Z

    if-eqz p2, :cond_80

    iget p2, p3, Landroid/graphics/Rect;->top:I

    goto :goto_82

    :cond_80
    iget p2, p3, Landroid/graphics/Rect;->left:I

    :goto_82
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 79
    iget-boolean p2, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mHorizontalView:Z

    if-eqz p2, :cond_8b

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_8d

    :cond_8b
    iget p2, p3, Landroid/graphics/Rect;->right:I

    :goto_8d
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 80
    iget-boolean p2, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mHorizontalView:Z

    if-eqz p2, :cond_96

    iget p2, p3, Landroid/graphics/Rect;->left:I

    goto :goto_98

    :cond_96
    iget p2, p3, Landroid/graphics/Rect;->top:I

    :goto_98
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 81
    iget-boolean p2, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mHorizontalView:Z

    if-eqz p2, :cond_a1

    iget p2, p3, Landroid/graphics/Rect;->right:I

    goto :goto_a3

    :cond_a1
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    :goto_a3
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_a5
    :goto_a5
    return-void
.end method

.method public setActive(Z)V
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mActive:Z

    return-void
.end method

.method public setEdgeSpace(Z)V
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mEdgeSpace:Z

    return-void
.end method

.method public setHorizontalView(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mHorizontalView:Z

    return-void
.end method

.method public setPadding(I)V
    .registers 2

    .line 101
    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;->mPadding:I

    return-void
.end method
