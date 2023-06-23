.class public Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;
.super Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;
.source "CustomNetworkDeviceListFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 23
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->setHasOptionsMenu(Z)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->setFilteringSupported(Z)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->setUseDefaultPaddingDecoration(Z)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->setUseDefaultPaddingDecorationSpaceForEdges(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->isScreenLarge()Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_1c

    const/4 p1, 0x5

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->setDefaultViewingGridSize(II)V

    goto :goto_2b

    .line 32
    :cond_1c
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->isScreenNormal()Z

    move-result p1

    const/4 v1, 0x3

    if-eqz p1, :cond_27

    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->setDefaultViewingGridSize(II)V

    goto :goto_2b

    :cond_27
    const/4 p1, 0x2

    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->setDefaultViewingGridSize(II)V

    .line 37
    :goto_2b
    new-instance p1, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment$1;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;)V

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->setDeviceSelectedListener(Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 64
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->setDividerVisible(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_33

    .line 70
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060129

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 72
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    float-to-int p2, p2

    invoke-virtual {v0, p2, p1, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    :cond_33
    return-void
.end method
