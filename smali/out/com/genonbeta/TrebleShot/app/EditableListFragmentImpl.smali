.class public interface abstract Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;
.super Ljava/lang/Object;
.source "EditableListFragmentImpl.java"

# interfaces
.implements Lcom/genonbeta/android/framework/app/ListFragmentImpl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/TrebleShot/object/Editable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/framework/app/ListFragmentImpl<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract applyViewingChanges(I)Z
.end method

.method public abstract changeGridViewSize(I)V
.end method

.method public abstract changeOrderingCriteria(I)V
.end method

.method public abstract changeSortingCriteria(I)V
.end method

.method public abstract getAdapterImpl()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getFilteringDelegate()Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getListView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getOrderingCriteria()I
.end method

.method public abstract getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getSortingCriteria()I
.end method

.method public abstract getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isRefreshLocked()Z
.end method

.method public abstract isRefreshRequested()Z
.end method

.method public abstract isSortingSupported()Z
.end method

.method public abstract loadIfRequested()Z
.end method

.method public abstract openUri(Landroid/net/Uri;)Z
.end method

.method public abstract setFilteringDelegate(Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setSelectionCallback(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setSelectorConnection(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection<",
            "TT;>;)V"
        }
    .end annotation
.end method
