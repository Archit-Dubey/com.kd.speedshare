.class public abstract Lcom/genonbeta/android/framework/app/RecyclerViewFragment;
.super Lcom/genonbeta/android/framework/app/ListFragment;
.source "RecyclerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        "E:",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter<",
        "TT;TV;>;>",
        "Lcom/genonbeta/android/framework/app/ListFragment<",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "TT;TE;>;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/ListFragment;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment$1;-><init>(Lcom/genonbeta/android/framework/app/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/android/framework/app/RecyclerViewFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public getDefaultLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 3

    .line 102
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getListView()Landroid/view/ViewGroup;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/android/framework/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 59
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_1e

    .line 62
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->getContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->getListViewContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_1e
    return-object p1
.end method

.method protected onEnsureList()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->getDefaultLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    return-object v0
.end method

.method protected onListRefreshed()V
    .registers 6

    .line 41
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->onListRefreshed()V

    .line 43
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 45
    :goto_13
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->getEmptyView()Landroid/view/ViewGroup;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v0, :cond_1d

    const/4 v4, 0x0

    goto :goto_1f

    :cond_1d
    const/16 v4, 0x8

    :goto_1f
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 46
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v0, :cond_2a

    const/16 v1, 0x8

    :cond_2a
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method protected bridge synthetic onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 3

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 5

    .line 70
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->onLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 74
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onSetListAdapter(Lcom/genonbeta/android/framework/widget/ListAdapterImpl;)Z
    .registers 2

    .line 22
    check-cast p1, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->onSetListAdapter(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;)Z

    move-result p1

    return p1
.end method

.method public onSetListAdapter(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x1

    return p1
.end method
