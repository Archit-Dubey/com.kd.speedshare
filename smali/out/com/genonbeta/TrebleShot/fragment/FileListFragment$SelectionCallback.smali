.class Lcom/genonbeta/TrebleShot/fragment/FileListFragment$SelectionCallback;
.super Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;
.source "FileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/FileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback<",
        "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFragment:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;)V
    .registers 2

    .line 608
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    .line 609
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    return-void
.end method


# virtual methods
.method public bridge synthetic onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/MenuItem;)Z
    .registers 4

    .line 602
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z
    .registers 7

    .line 623
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 625
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v1

    invoke-interface {v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1b

    .line 626
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 628
    :cond_1b
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v2

    invoke-interface {v2}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->handleEditingAction(ILcom/genonbeta/TrebleShot/fragment/FileListFragment;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 629
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_34
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/Menu;)Z
    .registers 4

    .line 602
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$SelectionCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 615
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    .line 616
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const p2, 0x7f0d0001

    invoke-virtual {p1, p2, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
