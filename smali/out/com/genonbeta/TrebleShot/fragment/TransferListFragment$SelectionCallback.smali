.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;
.super Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;
.source "TransferListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
        "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)V
    .registers 2

    .line 449
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    .line 450
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;->mAdapter:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/MenuItem;)Z
    .registers 4

    .line 443
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z
    .registers 10

    .line 464
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 466
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v2

    invoke-interface {v2}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v2, 0x7f090051

    if-ne v0, v2, :cond_6b

    .line 469
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p2

    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f11013b

    .line 471
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p2

    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0f000a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2, p3, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f110033

    const/4 p3, 0x0

    .line 473
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f11005c

    .line 474
    new-instance p3, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback$1;

    invoke-direct {p3, p0, v1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 484
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v2

    .line 486
    :cond_6b
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/Menu;)Z
    .registers 4

    .line 443
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 456
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    .line 457
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const p2, 0x7f0d0006

    invoke-virtual {p1, p2, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
