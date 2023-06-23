.class public Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;
.super Ljava/lang/Object;
.source "SwipeTouchSelectionListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/TrebleShot/object/Editable;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;"
    }
.end annotation


# instance fields
.field private mActivationWaiting:Z

.field private mConsistentX:I

.field private mConsistentY:I

.field private mLastPosition:I

.field private mListFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSelectionActivated:Z

.field private mStartPosition:I


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mSelectionActivated:Z

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mActivationWaiting:Z

    const/4 v1, -0x1

    .line 24
    iput v1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mLastPosition:I

    .line 25
    iput v1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mStartPosition:I

    .line 26
    iput v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mConsistentX:I

    .line 27
    iput v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mConsistentY:I

    .line 32
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mListFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    if-nez p1, :cond_27

    .line 39
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mListFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mActivationWaiting:Z

    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    div-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mConsistentX:I

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    div-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mConsistentY:I

    goto :goto_5e

    :cond_27
    const/4 p1, 0x2

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne p1, v3, :cond_5e

    iget-boolean p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mActivationWaiting:Z

    if-eqz p1, :cond_5e

    iget p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mConsistentX:I

    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    if-ne p1, v3, :cond_46

    iget p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mConsistentY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    div-float/2addr v3, v2

    float-to-int v2, v3

    if-eq p1, v2, :cond_5e

    .line 44
    :cond_46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p1

    sub-long/2addr v2, p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long p1, p1

    cmp-long v4, v2, p1

    if-lez v4, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mSelectionActivated:Z

    .line 45
    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mActivationWaiting:Z

    .line 48
    :cond_5e
    :goto_5e
    iget-boolean p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mSelectionActivated:Z

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 3

    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mSelectionActivated:Z

    .line 153
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mActivationWaiting:Z

    const/4 v0, -0x1

    .line 154
    iput v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mStartPosition:I

    .line 155
    iput v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mLastPosition:I

    .line 156
    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mConsistentX:I

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 13

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_c

    .line 55
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_12d

    :cond_c
    const/4 v0, 0x2

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v0, v2, :cond_12d

    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mSelectionActivated:Z

    if-eqz v0, :cond_12d

    .line 58
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mListFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b0

    .line 61
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mListFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    .line 62
    invoke-interface {v3}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    .line 63
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    if-eqz v0, :cond_b0

    .line 66
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_42

    const/4 v3, 0x1

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    :goto_43
    if-eqz v3, :cond_b1

    .line 70
    iget v4, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mStartPosition:I

    if-gez v4, :cond_4d

    .line 71
    iput v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mStartPosition:I

    .line 72
    iput v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mLastPosition:I

    .line 75
    :cond_4d
    iget v4, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mLastPosition:I

    if-eq v0, v4, :cond_b1

    .line 76
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mListFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {v4}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getAdapterImpl()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object v4

    invoke-interface {v4}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->getList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 78
    :try_start_5c
    iget v5, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mLastPosition:I

    .line 80
    iget v6, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mLastPosition:I

    if-le v0, v6, :cond_66

    .line 81
    iget v5, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mLastPosition:I
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_ad

    move v6, v0

    goto :goto_68

    :cond_66
    move v6, v5

    move v5, v0

    :goto_68
    add-int/lit8 v7, v6, 0x1

    if-ge v5, v7, :cond_a9

    .line 87
    :try_start_6c
    iget v7, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mLastPosition:I

    if-le v0, v7, :cond_75

    iget v7, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mStartPosition:I

    if-gt v7, v5, :cond_7b

    goto :goto_79

    :cond_75
    iget v7, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mStartPosition:I

    if-lt v7, v5, :cond_7b

    :goto_79
    const/4 v7, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v7, 0x0

    .line 91
    :goto_7c
    iget-object v8, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mListFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    .line 92
    invoke-interface {v8}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v8

    iget-object v9, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mListFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    .line 93
    invoke-interface {v9}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getAdapterImpl()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object v9

    invoke-interface {v9, v5}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object v9

    .line 92
    invoke-virtual {v8, v9, v7}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(Lcom/genonbeta/android/framework/object/Selectable;Z)Z

    move-result v8

    .line 97
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    check-cast v9, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    if-eqz v9, :cond_a6

    .line 100
    invoke-virtual {v9}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v9

    if-eqz v8, :cond_a2

    if-eqz v7, :cond_a2

    const/4 v7, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v7, 0x0

    :goto_a3
    invoke-virtual {v9, v7}, Landroid/view/View;->setSelected(Z)V
    :try_end_a6
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_6c .. :try_end_a6} :catch_a9
    .catchall {:try_start_6c .. :try_end_a6} :catchall_ad

    :cond_a6
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 105
    :catch_a9
    :cond_a9
    :try_start_a9
    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_ad

    .line 107
    iput v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mLastPosition:I

    goto :goto_b1

    :catchall_ad
    move-exception p1

    .line 105
    :try_start_ae
    monitor-exit v4
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw p1

    :cond_b0
    const/4 v3, 0x0

    .line 113
    :cond_b1
    :goto_b1
    iget v0, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mStartPosition:I

    if-gez v0, :cond_b9

    if-nez v3, :cond_b9

    .line 114
    iput-boolean v2, p0, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;->mSelectionActivated:Z

    .line 121
    :cond_b9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float v3, v0, v1

    sub-float v4, v0, v3

    .line 125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, -0x3e100000    # -30.0f

    const/high16 v8, 0x41f00000    # 30.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_df

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    mul-float v0, v0, v8

    :goto_dd
    float-to-int v0, v0

    goto :goto_f6

    .line 127
    :cond_df
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_f5

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v3, v0

    div-float/2addr v0, v3

    mul-float v0, v0, v7

    goto :goto_dd

    :cond_f5
    const/4 v0, 0x0

    .line 133
    :goto_f6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v1

    sub-float v4, v3, v1

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_115

    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    sub-float/2addr p2, v4

    div-float/2addr p2, v1

    mul-float p2, p2, v8

    float-to-int v2, p2

    goto :goto_12a

    .line 139
    :cond_115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_12a

    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-static {p2, v6}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float p2, v1, p2

    div-float/2addr p2, v1

    div-float/2addr v7, p2

    float-to-int v2, v7

    .line 144
    :cond_12a
    :goto_12a
    invoke-virtual {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_12d
    :goto_12d
    return-void
.end method
