.class public interface abstract Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;
.super Ljava/lang/Object;
.source "EditableListAdapterImpl.java"

# interfaces
.implements Lcom/genonbeta/android/framework/widget/ListAdapterImpl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/TrebleShot/object/Editable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/framework/widget/ListAdapterImpl<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract filterItem(Lcom/genonbeta/TrebleShot/object/Editable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/NotReadyException;
        }
    .end annotation
.end method

.method public abstract notifyAllSelectionChanges()V
.end method

.method public abstract notifyItemChanged(I)V
.end method

.method public abstract notifyItemRangeChanged(II)V
.end method

.method public abstract syncSelectionList()V
.end method

.method public abstract syncSelectionList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method
