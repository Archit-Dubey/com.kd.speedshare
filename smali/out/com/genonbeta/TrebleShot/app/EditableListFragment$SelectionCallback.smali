.class public Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;
.super Ljava/lang/Object;
.source "EditableListFragment.java"

# interfaces
.implements Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/app/EditableListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/TrebleShot/object/Editable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->updateProvider(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;
    .registers 1

    .line 799
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    return-object p0
.end method

.method private updateSelectionTitle(Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)V
    .registers 3

    .line 866
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object v0

    .line 868
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 870
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl<",
            "TT;>;"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getAdapterImpl()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;"
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    return-object v0
.end method

.method public getSelectableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 827
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->getAdapter()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSelectionActivated()Z
    .registers 2

    .line 820
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    .line 821
    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->selectionActive()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public bridge synthetic onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/MenuItem;)Z
    .registers 4

    .line 799
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z
    .registers 5

    .line 901
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x0

    const p3, 0x7f09003b

    if-ne p1, p3, :cond_f

    const/4 p1, 0x1

    .line 904
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->setSelection(Z)V

    goto :goto_3e

    :cond_f
    const p3, 0x7f09003c

    if-ne p1, p3, :cond_18

    .line 906
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->setSelection(Z)V

    goto :goto_3e

    :cond_18
    const p3, 0x7f09003a

    if-ne p1, p3, :cond_3e

    .line 908
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;

    iget-object p3, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance p3, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback$1;

    invoke-direct {p3, p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback$1;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)V

    .line 909
    invoke-virtual {p1, p3}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 925
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_3e
    :goto_3e
    return p2
.end method

.method public bridge synthetic onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/Menu;)Z
    .registers 4

    .line 799
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 883
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const/high16 p2, 0x7f0d0000

    invoke-virtual {p1, p2, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onFinish(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)V
    .registers 3

    .line 799
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onFinish(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)V

    return-void
.end method

.method public onFinish(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)V
    .registers 3

    const/4 p1, 0x0

    .line 933
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->setSelection(Z)V

    .line 935
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 936
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->loadIfRequested()Z

    return-void
.end method

.method public bridge synthetic onItemChecked(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Lcom/genonbeta/android/framework/object/Selectable;I)V
    .registers 5

    .line 799
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    check-cast p3, Lcom/genonbeta/TrebleShot/object/Editable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onItemChecked(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Lcom/genonbeta/TrebleShot/object/Editable;I)V

    return-void
.end method

.method public onItemChecked(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Lcom/genonbeta/TrebleShot/object/Editable;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode;",
            "TT;I)V"
        }
    .end annotation

    .line 890
    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->updateSelectionTitle(Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)V

    const/4 p1, -0x1

    if-eq p4, p1, :cond_14

    .line 893
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->getAdapter()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->syncSelectionList()V

    .line 894
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->getAdapter()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->notifyItemChanged(I)V

    :cond_14
    return-void
.end method

.method public bridge synthetic onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)Z
    .registers 3

    .line 799
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)Z

    move-result p1

    return p1
.end method

.method public onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)Z
    .registers 3

    .line 876
    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->updateSelectionTitle(Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setItemSelected(I)Z
    .registers 3

    .line 832
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->isSelectionActivated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(I)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public setSelection(Z)V
    .registers 4

    .line 852
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->getSelectableList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->setSelection(ZLjava/util/List;)V

    .line 855
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->getAdapter()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->syncSelectionList()V

    .line 856
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->getAdapter()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->getSelectableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public setSelection(ZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 837
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/object/Editable;

    .line 838
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(Lcom/genonbeta/android/framework/object/Selectable;Z)Z

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public setSelection()Z
    .registers 3

    .line 843
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->getSelectableList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 845
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->setSelection(Z)V

    return v0
.end method

.method public updateProvider(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 861
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    return-void
.end method
