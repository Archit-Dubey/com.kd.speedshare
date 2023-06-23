.class Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback$1;
.super Ljava/lang/Object;
.source "EditableListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)V
    .registers 2

    .line 910
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback$1;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .line 914
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback$1;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->access$100(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 916
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/object/Editable;

    .line 917
    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/object/Editable;->isSelectableSelected()Z

    move-result v1

    if-nez v1, :cond_17

    .line 918
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback$1;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->access$100(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v1

    invoke-interface {v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(Lcom/genonbeta/android/framework/object/Selectable;Z)Z

    goto :goto_17

    .line 921
    :cond_38
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback$1;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->getAdapter()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->notifyAllSelectionChanges()V

    return-void
.end method
