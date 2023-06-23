.class public abstract Lcom/genonbeta/TrebleShot/app/ShareableListFragment;
.super Lcom/genonbeta/TrebleShot/app/EditableListFragment;
.source "ShareableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/genonbeta/TrebleShot/object/Shareable;",
        "V:",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        "E:",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter<",
        "TT;TV;>;>",
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment<",
        "TT;TV;TE;>;"
    }
.end annotation


# instance fields
.field private mCachedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDefaultEmptyText:Ljava/lang/String;

.field private mSearchActive:Z

.field private mSearchComposer:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field private mSearchSupport:Z

.field private mToastNoResult:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mCachedList:Ljava/util/List;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mSearchSupport:Z

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mSearchActive:Z

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mDefaultEmptyText:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mToastNoResult:Landroid/widget/Toast;

    .line 29
    new-instance v0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/app/ShareableListFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mSearchComposer:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    return-void
.end method


# virtual methods
.method public getCachedList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mCachedList:Ljava/util/List;

    return-object v0
.end method

.method public getSearchSupport()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mSearchSupport:Z

    return v0
.end method

.method public isRefreshLocked()Z
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isRefreshLocked()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mSearchActive:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 54
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 56
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getSearchSupport()Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x7f0d0012

    .line 57
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0901b1

    .line 59
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 61
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mSearchComposer:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    const/16 p2, 0x1f4

    .line 62
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    :cond_26
    return-void
.end method

.method public search(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iput-boolean v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mSearchActive:Z

    const v3, 0x7f11018c

    if-eqz v2, :cond_9b

    .line 92
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mCachedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2b

    .line 93
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mCachedList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    :cond_2b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mCachedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genonbeta/TrebleShot/object/Shareable;

    .line 98
    invoke-virtual {v5, p1}, Lcom/genonbeta/TrebleShot/object/Shareable;->searchMatches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 99
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 101
    :cond_4c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6c

    .line 102
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v4, v2}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->onUpdate(Ljava/util/List;)V

    .line 103
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mToastNoResult:Landroid/widget/Toast;

    if-eqz v2, :cond_c2

    .line 106
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_c2

    :cond_6c
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 108
    invoke-virtual {p0, v3, v2}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 110
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mToastNoResult:Landroid/widget/Toast;

    if-nez v4, :cond_92

    .line 111
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mToastNoResult:Landroid/widget/Toast;

    const/16 v4, 0x30

    .line 112
    invoke-virtual {v2}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    iget-object v6, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mToastNoResult:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getYOffset()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_95

    .line 114
    :cond_92
    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_95
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mToastNoResult:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_c2

    .line 118
    :cond_9b
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->loadIfRequested()Z

    move-result v2

    if-nez v2, :cond_c2

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mCachedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_c2

    .line 119
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mCachedList:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->onUpdate(Ljava/util/List;)V

    .line 120
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->notifyDataSetChanged()V

    .line 122
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mCachedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 125
    :cond_c2
    :goto_c2
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mDefaultEmptyText:Ljava/lang/String;

    if-nez v2, :cond_d4

    .line 126
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getEmptyText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mDefaultEmptyText:Ljava/lang/String;

    .line 128
    :cond_d4
    iget-boolean v2, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mSearchActive:Z

    if-eqz v2, :cond_e1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 129
    invoke-virtual {p0, v3, v2}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e3

    :cond_e1
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mDefaultEmptyText:Ljava/lang/String;

    .line 128
    :goto_e3
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_f3

    goto :goto_f4

    :cond_f3
    const/4 v0, 0x0

    :goto_f4
    return v0
.end method

.method public setSearchSupport(Z)V
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->mSearchSupport:Z

    return-void
.end method
