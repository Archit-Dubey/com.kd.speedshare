.class Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;
.super Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;
.source "TransferGroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
        "Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;",
            ">;)V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/MenuItem;)Z
    .registers 4

    .line 242
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z
    .registers 10

    .line 267
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v2

    invoke-interface {v2}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    const v3, 0x7f090048

    if-ne v0, v3, :cond_33

    .line 272
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    .line 273
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p2

    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->removeAsynchronous(Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_84

    :cond_33
    const v3, 0x7f09004a

    if-eq v0, v3, :cond_43

    const v4, 0x7f090049

    if-ne v0, v4, :cond_3e

    goto :goto_43

    .line 291
    :cond_3e
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 278
    :cond_43
    :goto_43
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :cond_49
    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;

    .line 279
    iget-object v5, v4, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget v5, v5, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    if-lez v5, :cond_5f

    if-ne v0, v3, :cond_5f

    const/4 v5, 0x1

    goto :goto_60

    :cond_5f
    const/4 v5, 0x0

    :goto_60
    iput-boolean v5, v4, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->isServedOnWeb:Z

    .line 282
    iget-boolean v4, v4, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->isServedOnWeb:Z

    if-eqz v4, :cond_49

    const/4 p3, 0x1

    goto :goto_49

    .line 286
    :cond_68
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Ljava/util/List;)V

    if-eqz p3, :cond_84

    .line 289
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startWebShareActivity(Landroid/content/Context;Z)V

    :cond_84
    :goto_84
    return v2
.end method

.method public bridge synthetic onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/Menu;)Z
    .registers 4

    .line 242
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    .line 260
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const p2, 0x7f0d0002

    invoke-virtual {p1, p2, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)Z
    .registers 3

    .line 242
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;->onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)Z

    move-result p1

    return p1
.end method

.method public onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)Z
    .registers 3

    .line 252
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)Z

    const/4 p1, 0x1

    return p1
.end method
