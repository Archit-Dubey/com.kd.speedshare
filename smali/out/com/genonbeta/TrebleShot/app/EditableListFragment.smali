.class public abstract Lcom/genonbeta/TrebleShot/app/EditableListFragment;
.super Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;
.source "EditableListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;
.implements Lcom/genonbeta/TrebleShot/app/EditableListFragmentModelImpl;
.implements Lcom/genonbeta/TrebleShot/ui/callback/DetachListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;,
        Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;,
        Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/TrebleShot/object/Editable;",
        "V:",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        "E:",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter<",
        "TT;TV;>;>",
        "Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment<",
        "TT;TV;TE;>;",
        "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
        "TT;>;",
        "Lcom/genonbeta/TrebleShot/app/EditableListFragmentModelImpl<",
        "TV;>;",
        "Lcom/genonbeta/TrebleShot/ui/callback/DetachListener;"
    }
.end annotation


# instance fields
.field private mDefaultFilteringDelegate:Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDefaultOrderingCriteria:I

.field private mDefaultPaddingDecorationSize:F

.field private mDefaultSelectionCallback:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDefaultSelectionConnection:Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDefaultSortingCriteria:I

.field private mDefaultViewingGridSize:I

.field private mDefaultViewingGridSizeLandscape:I

.field private mDividerResId:I

.field private mFastScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

.field private mFilteringDelegate:Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFilteringSupported:Z

.field private mLayoutClickListener:Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener<",
            "TV;>;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/database/ContentObserver;

.field private mOrderingOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshDelayedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field private mRefreshRequested:Z

.field private mSearchText:Ljava/lang/String;

.field private mSelectionCallback:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSelectionConnection:Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSortingOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSortingSupported:Z

.field private mUseDefaultPaddingDecoration:Z

.field private mUseDefaultPaddingDecorationSpaceForEdges:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mRefreshRequested:Z

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSortingSupported:Z

    .line 68
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mFilteringSupported:Z

    .line 69
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mUseDefaultPaddingDecoration:Z

    .line 70
    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mUseDefaultPaddingDecorationSpaceForEdges:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 71
    iput v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultPaddingDecorationSize:F

    const/16 v0, 0x64

    .line 72
    iput v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultOrderingCriteria:I

    .line 73
    iput v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultSortingCriteria:I

    .line 74
    iput v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultViewingGridSize:I

    .line 75
    iput v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultViewingGridSizeLandscape:I

    const v0, 0x7f090006

    .line 76
    iput v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDividerResId:I

    .line 78
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSortingOptions:Ljava/util/Map;

    .line 79
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mOrderingOptions:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultFilteringDelegate:Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/app/EditableListFragment;)Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSearchText:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected applyDynamicMenuItems(Landroid/view/MenuItem;ILjava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_30

    const/4 v0, 0x1

    .line 397
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 399
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    .line 401
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    .line 403
    invoke-interface {p1, p2, v4, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_12

    .line 406
    :cond_2d
    invoke-interface {p1, p2, v0, v0}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    :cond_30
    return-void
.end method

.method public applyViewingChanges(I)Z
    .registers 4

    .line 412
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->isGridSupported()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return p1

    .line 415
    :cond_e
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isScreenLarge()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->notifyGridSizeUpdate(IZ)Z

    .line 417
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 418
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 420
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->refreshList()V

    const/4 p1, 0x1

    return p1
.end method

.method public changeGridViewSize(I)V
    .registers 5

    .line 427
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GridSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isScreenLandscape()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "Landscape"

    goto :goto_1d

    :cond_1b
    const-string v2, ""

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 432
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->applyViewingChanges(I)Z

    return-void
.end method

.method public changeOrderingCriteria(I)V
    .registers 4

    .line 437
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SortOrder"

    .line 438
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 441
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSortingCriteria()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->setSortingCriteria(II)V

    .line 443
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->refreshList()V

    return-void
.end method

.method public changeSortingCriteria(I)V
    .registers 4

    .line 448
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SortBy"

    .line 449
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 450
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 452
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getOrderingCriteria()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->setSortingCriteria(II)V

    .line 454
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->refreshList()V

    return-void
.end method

.method public checkPreferredDynamicItem(Landroid/view/MenuItem;ILjava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_43

    .line 461
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    .line 463
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 464
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_e

    const/4 p2, 0x0

    .line 468
    :goto_27
    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p3

    if-eqz p3, :cond_43

    .line 469
    invoke-interface {p3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 p1, 0x1

    .line 470
    invoke-interface {p3, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void

    :cond_40
    add-int/lit8 p2, p2, 0x1

    goto :goto_27

    :cond_43
    return-void
.end method

.method public getActiveViewingGridSize()I
    .registers 2

    .line 590
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1b

    .line 591
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public getAdapterImpl()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl<",
            "TT;>;"
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    return-object v0
.end method

.method public getDefaultContentObserver()Landroid/database/ContentObserver;
    .registers 4

    .line 491
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_14

    .line 492
    new-instance v0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$4;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$4;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mObserver:Landroid/database/ContentObserver;

    .line 507
    :cond_14
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method public getFastScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mFastScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    return-object v0
.end method

.method public getFilteringDelegate()Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate<",
            "TT;>;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mFilteringDelegate:Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultFilteringDelegate:Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;

    :cond_6
    return-object v0
.end method

.method public getOrderingCriteria()I
    .registers 4

    .line 531
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SortOrder"

    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultOrderingCriteria:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPowerfulActionMode()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;
    .registers 2

    .line 566
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/genonbeta/TrebleShot/ui/callback/PowerfulActionModeSupport;

    if-eqz v0, :cond_19

    .line 567
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/ui/callback/PowerfulActionModeSupport;

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/ui/callback/PowerfulActionModeSupport;->getPowerfulActionMode()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method public getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
            "TT;>;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSelectionCallback:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultSelectionCallback:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    :cond_6
    return-object v0
.end method

.method public getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection<",
            "TT;>;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSelectionConnection:Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultSelectionConnection:Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    :cond_6
    return-object v0
.end method

.method public getSortingCriteria()I
    .registers 4

    .line 561
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SortBy"

    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultSortingCriteria:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 573
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getViewingPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getViewingGridSize()I
    .registers 4

    .line 578
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 581
    :cond_8
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isScreenLandscape()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 582
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GridSizeLandscape"

    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultViewingGridSizeLandscape:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2f

    .line 584
    :cond_1f
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GridSize"

    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultViewingGridSize:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2f
    return v0
.end method

.method public isRefreshLocked()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRefreshRequested()Z
    .registers 2

    .line 602
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mRefreshRequested:Z

    return v0
.end method

.method public isSortingSupported()Z
    .registers 2

    .line 612
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSortingSupported:Z

    return v0
.end method

.method public loadIfRequested()Z
    .registers 3

    .line 622
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isRefreshRequested()Z

    move-result v0

    const/4 v1, 0x0

    .line 624
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->setRefreshRequested(Z)V

    if-eqz v0, :cond_d

    .line 627
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->refreshList()V

    :cond_d
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    .line 120
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getPowerfulActionMode()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 123
    new-instance p1, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getPowerfulActionMode()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;-><init>(Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)V

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->setDefaultSelectionConnection(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;)V

    :cond_1f
    const/4 p1, 0x1

    .line 125
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->setHasOptionsMenu(Z)V

    .line 127
    iget-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mUseDefaultPaddingDecoration:Z

    if-eqz p1, :cond_4e

    .line 128
    iget p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultPaddingDecorationSize:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_30

    goto :goto_3b

    .line 130
    :cond_30
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06011e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 132
    :goto_3b
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;

    float-to-int p1, p1

    iget-boolean v2, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mUseDefaultPaddingDecorationSpaceForEdges:Z

    .line 133
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isHorizontalOrientation()Z

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/genonbeta/TrebleShot/widget/recyclerview/PaddingItemDecoration;-><init>(IZZ)V

    .line 132
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_4e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 113
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->setFragment(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 11

    .line 200
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0008

    .line 201
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f090055

    .line 203
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 206
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mFilteringSupported:Z

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 208
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mFilteringSupported:Z

    if-eqz v0, :cond_2d

    .line 209
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    .line 211
    instance-of v0, p2, Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_2d

    .line 212
    check-cast p2, Landroidx/appcompat/widget/SearchView;

    new-instance v0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    :cond_2d
    const p2, 0x7f090056

    .line 233
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_6b

    .line 236
    invoke-interface {p2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 238
    :goto_3c
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isScreenLandscape()Z

    move-result v2

    if-eqz v2, :cond_44

    const/4 v2, 0x7

    goto :goto_45

    :cond_44
    const/4 v2, 0x5

    :goto_45
    const v3, 0x7f090057

    if-ge v1, v2, :cond_68

    .line 240
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0007

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-interface {p2, v3, v7, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 242
    :cond_68
    invoke-interface {p2, v3, v0, v0}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 245
    :cond_6b
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 246
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onSortingOptions(Ljava/util/Map;)V

    .line 248
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b9

    .line 249
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSortingOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 250
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSortingOptions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const p2, 0x7f09005c

    .line 252
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const v0, 0x7f090059

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSortingOptions:Ljava/util/Map;

    invoke-virtual {p0, p2, v0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->applyDynamicMenuItems(Landroid/view/MenuItem;ILjava/util/Map;)V

    .line 255
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 256
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onOrderingOptions(Ljava/util/Map;)V

    .line 258
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b9

    .line 259
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mOrderingOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 260
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mOrderingOptions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const p2, 0x7f09005b

    .line 262
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f090058

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mOrderingOptions:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->applyDynamicMenuItems(Landroid/view/MenuItem;ILjava/util/Map;)V

    :cond_b9
    return-void
.end method

.method public abstract onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation
.end method

.method public onDefaultLongClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onGridSpanSize(II)I
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public onLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 4

    .line 362
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewingGridSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_c

    goto :goto_27

    .line 365
    :cond_c
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->isGridSupported()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 366
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isHorizontalOrientation()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x2

    goto :goto_27

    :cond_26
    const/4 v1, 0x1

    .line 370
    :goto_27
    instance-of v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_31

    .line 371
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 372
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_3a

    .line 374
    :cond_31
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 376
    :goto_3a
    new-instance v2, Lcom/genonbeta/TrebleShot/app/EditableListFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v0
.end method

.method protected bridge synthetic onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 3

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 6

    .line 154
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c001d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090007

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 158
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onListView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f090008

    .line 159
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mFastScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    .line 162
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 164
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method protected onListView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 6

    .line 171
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001e

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 317
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 318
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x7f09005a

    if-ne v0, v2, :cond_25

    .line 320
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 321
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->start(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)Z

    goto :goto_4b

    :cond_25
    const v0, 0x7f090059

    if-ne v1, v0, :cond_32

    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->changeSortingCriteria(I)V

    goto :goto_4b

    :cond_32
    const v0, 0x7f090058

    if-ne v1, v0, :cond_3f

    .line 325
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->changeOrderingCriteria(I)V

    goto :goto_4b

    :cond_3f
    const v0, 0x7f090057

    if-ne v1, v0, :cond_4b

    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->changeGridViewSize(I)V

    .line 329
    :cond_4b
    :goto_4b
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOrderingOptions(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f110225

    .line 341
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 341
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f110226

    .line 343
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 343
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPrepareDetach()V
    .registers 3

    .line 350
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getPowerfulActionMode()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 351
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getPowerfulActionMode()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)V

    :cond_17
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6

    .line 271
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f09005c

    .line 273
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 274
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isSortingSupported()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x7f09005a

    .line 276
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 279
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 280
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {v3}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->isFinishAllowed()Z

    move-result v3

    if-nez v3, :cond_38

    .line 281
    :cond_35
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    :cond_38
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->isGridSupported()Z

    move-result v1

    const v3, 0x7f090056

    if-nez v1, :cond_4e

    .line 284
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 285
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    :cond_4e
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 290
    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSortingSupported:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 292
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 293
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSortingCriteria()I

    move-result v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSortingOptions:Ljava/util/Map;

    invoke-virtual {p0, v0, v1, v2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->checkPreferredDynamicItem(Landroid/view/MenuItem;ILjava/util/Map;)V

    const v0, 0x7f09005b

    .line 295
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 298
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getOrderingCriteria()I

    move-result v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mOrderingOptions:Ljava/util/Map;

    invoke-virtual {p0, v0, v1, v2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->checkPreferredDynamicItem(Landroid/view/MenuItem;ILjava/util/Map;)V

    .line 303
    :cond_7a
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_97

    .line 306
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    .line 307
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewingGridSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 309
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_97

    .line 310
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_97
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 193
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onResume()V

    .line 194
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->refreshList()V

    return-void
.end method

.method public onSetListAdapter(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 182
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onSetListAdapter(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 183
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mFastScroller:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onSetListAdapter(Lcom/genonbeta/android/framework/widget/ListAdapterImpl;)Z
    .registers 2

    .line 56
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onSetListAdapter(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onSetListAdapter(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;)Z
    .registers 2

    .line 56
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onSetListAdapter(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;)Z

    move-result p1

    return p1
.end method

.method public onSortingOptions(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f110223

    .line 334
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f110222

    .line 335
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f110224

    .line 336
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 140
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getViewingGridSize()I

    move-result p2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isScreenLarge()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->notifyGridSizeUpdate(IZ)Z

    .line 143
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSortingCriteria()I

    move-result p2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getOrderingCriteria()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->setSortingCriteria(II)V

    .line 146
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getFastScroller()Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    move-result-object p1

    new-instance p2, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;

    invoke-direct {p2}, Lcom/genonbeta/TrebleShot/view/LongTextBubbleFastScrollViewProvider;-><init>()V

    invoke-virtual {p1, p2}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->setViewProvider(Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;)V

    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->setDividerVisible(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/widget/recyclerview/SwipeTouchSelectionListener;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public openUri(Landroid/net/Uri;)Z
    .registers 3

    .line 634
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->openUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public performLayoutClick(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 639
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->setItemSelected(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mLayoutClickListener:Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener;

    if-eqz v0, :cond_11

    .line 640
    invoke-interface {v0, p0, p1, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener;->onLayoutClick(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 642
    :cond_11
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    .line 658
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/object/Shareable;

    if-eqz v0, :cond_1b

    .line 659
    check-cast p1, Lcom/genonbeta/TrebleShot/object/Shareable;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/Shareable;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->openUri(Landroid/net/Uri;)Z

    move-result p1
    :try_end_16
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_0 .. :try_end_16} :catch_17

    return p1

    :catch_17
    move-exception p1

    .line 661
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;->printStackTrace()V

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public performLayoutLongClick(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mLayoutClickListener:Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-interface {v0, p0, p1, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener;->onLayoutClick(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;Z)Z

    move-result v0

    if-nez v0, :cond_23

    .line 649
    :cond_b
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onDefaultLongClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 650
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :cond_23
    :goto_23
    return v1
.end method

.method public refreshList()V
    .registers 4

    .line 691
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isRefreshLocked()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    .line 692
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->setRefreshRequested(Z)V

    .line 694
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mRefreshDelayedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-nez v0, :cond_1d

    const v0, 0x7f1100e6

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 695
    invoke-virtual {p0, v0, v2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mRefreshDelayedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 696
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 699
    :cond_1d
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mRefreshDelayedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_30

    .line 701
    :cond_23
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->refreshList()V

    .line 703
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mRefreshDelayedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_30

    .line 704
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    const/4 v0, 0x0

    .line 705
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mRefreshDelayedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    :cond_30
    :goto_30
    return-void
.end method

.method public registerLayoutViewClicks(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 669
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getClickableView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/app/EditableListFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$5;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getClickableView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/app/EditableListFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$6;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setDefaultOrderingCriteria(I)V
    .registers 2

    .line 717
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultOrderingCriteria:I

    return-void
.end method

.method public setDefaultPaddingDecorationSize(F)V
    .registers 2

    .line 712
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultPaddingDecorationSize:F

    return-void
.end method

.method public setDefaultSelectionCallback(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 722
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultSelectionCallback:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    return-void
.end method

.method public setDefaultSelectionConnection(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection<",
            "TT;>;)V"
        }
    .end annotation

    .line 727
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultSelectionConnection:Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    return-void
.end method

.method public setDefaultSortingCriteria(I)V
    .registers 2

    .line 732
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultSortingCriteria:I

    return-void
.end method

.method public setDefaultViewingGridSize(II)V
    .registers 3

    .line 737
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultViewingGridSize:I

    .line 738
    iput p2, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDefaultViewingGridSizeLandscape:I

    return-void
.end method

.method public setDividerView(I)V
    .registers 2

    .line 751
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDividerResId:I

    return-void
.end method

.method public setDividerVisible(Z)V
    .registers 4

    .line 743
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 744
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mDividerResId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    goto :goto_16

    :cond_14
    const/16 p1, 0x8

    .line 745
    :goto_16
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void
.end method

.method public setFilteringDelegate(Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mFilteringDelegate:Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;

    return-void
.end method

.method public setFilteringSupported(Z)V
    .registers 2

    .line 767
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mFilteringSupported:Z

    return-void
.end method

.method public setItemSelected(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 756
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->setItemSelected(I)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public setLayoutClickListener(Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener<",
            "TV;>;)V"
        }
    .end annotation

    .line 762
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mLayoutClickListener:Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener;

    return-void
.end method

.method public setRefreshRequested(Z)V
    .registers 2

    .line 607
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mRefreshRequested:Z

    return-void
.end method

.method public setSelectionCallback(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 556
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSelectionCallback:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    return-void
.end method

.method public setSelectorConnection(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection<",
            "TT;>;)V"
        }
    .end annotation

    .line 773
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSelectionConnection:Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    return-void
.end method

.method public setSortingSupported(Z)V
    .registers 2

    .line 617
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mSortingSupported:Z

    return-void
.end method

.method public setUseDefaultPaddingDecoration(Z)V
    .registers 2

    .line 778
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mUseDefaultPaddingDecoration:Z

    return-void
.end method

.method public setUseDefaultPaddingDecorationSpaceForEdges(Z)V
    .registers 2

    .line 783
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->mUseDefaultPaddingDecorationSpaceForEdges:Z

    return-void
.end method
