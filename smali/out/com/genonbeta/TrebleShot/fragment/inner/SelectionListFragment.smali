.class public Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;
.super Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;
.source "SelectionListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment<",
        "Lcom/genonbeta/android/framework/object/Selectable;",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        "Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;",
        ">;",
        "Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;",
        "Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .registers 2

    const v0, 0x7f0700d6

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f11019e

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;
    .registers 3

    .line 38
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 51
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0013

    .line 52
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f090066

    if-ne v0, v2, :cond_e

    .line 61
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->updateSelection(Z)Z

    goto :goto_17

    :cond_e
    const v2, 0x7f090067

    if-ne v0, v2, :cond_18

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->updateSelection(Z)Z

    :goto_17
    return v1

    .line 65
    :cond_18
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .registers 1

    .line 91
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->refreshList()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 73
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0700d6

    .line 75
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->setEmptyImage(I)V

    const p1, 0x7f1101c5

    .line 76
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    const p1, 0x7f110061

    .line 78
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$1;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;)V

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->useEmptyActionButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateSelection(Z)Z
    .registers 5

    .line 110
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 111
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->getList()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 112
    :try_start_11
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/android/framework/object/Selectable;

    .line 113
    invoke-interface {v2, p1}, Lcom/genonbeta/android/framework/object/Selectable;->setSelectableSelected(Z)Z

    goto :goto_1f

    .line 114
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_3b

    .line 116
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1

    :catchall_3b
    move-exception p1

    .line 114
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1

    :cond_3e
    const/4 p1, 0x0

    return p1
.end method
