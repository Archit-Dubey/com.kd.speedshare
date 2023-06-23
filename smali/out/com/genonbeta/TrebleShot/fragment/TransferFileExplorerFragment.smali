.class public Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;
.super Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;
.source "TransferFileExplorerFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# instance fields
.field private mPathAdapter:Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;

.field private mPathView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f11019e

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 35
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09014c

    .line 36
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->setDividerView(I)V

    return-void
.end method

.method protected onListRefreshed()V
    .registers 5

    .line 77
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->onListRefreshed()V

    .line 79
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v2

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_23

    :cond_1d
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_23
    invoke-virtual {v1, v2, v0}, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->goTo(Lcom/genonbeta/TrebleShot/object/NetworkDevice;[Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->notifyDataSetChanged()V

    .line 85
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 86
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_40
    return-void
.end method

.method protected bridge synthetic onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 3

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 7

    .line 42
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p2, 0x7f09014b

    .line 45
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    new-instance p2, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;

    .line 48
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 51
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 52
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 55
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;)V

    invoke-virtual {p2, v1}, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->setOnClickListener(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;)V

    const p2, 0x7f09014a

    .line 64
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 70
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09014a

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->setSnackbarContainer(Landroid/view/View;)V

    return-void
.end method
