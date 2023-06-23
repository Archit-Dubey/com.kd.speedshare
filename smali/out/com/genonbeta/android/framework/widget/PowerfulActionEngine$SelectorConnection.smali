.class public Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;
.super Ljava/lang/Object;
.source "PowerfulActionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectorConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/android/framework/object/Selectable;",
        "ReturningObject::",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TReturningObject;>;"
        }
    .end annotation
.end field

.field private mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TReturningObject;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReturningObject;",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TReturningObject;>;)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    .line 141
    iput-object p2, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->mCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TReturningObject;>;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->mCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    return-object v0
.end method

.method public getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TReturningObject;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    return-object v0
.end method

.method public getSelectedItemList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getCallback()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;->getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    move-result-object v0

    if-nez v0, :cond_14

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;->getSelectionList()Ljava/util/List;

    move-result-object v0

    :goto_18
    return-object v0
.end method

.method public isSelected(Lcom/genonbeta/android/framework/object/Selectable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getCallback()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;->getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 164
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;->getSelectionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public removeSelected(Lcom/genonbeta/android/framework/object/Selectable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getCallback()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;->hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return p1

    .line 211
    :cond_10
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getCallback()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;->getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;->getSelectionList()Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public selectionActive()Z
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getCallback()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;->hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result v0

    return v0
.end method

.method public setSelected(I)Z
    .registers 3

    .line 179
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getCallback()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;->getSelectableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/object/Selectable;

    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->setSelected(Lcom/genonbeta/android/framework/object/Selectable;I)Z

    move-result p1

    return p1
.end method

.method public setSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 174
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->setSelected(I)Z

    move-result p1

    return p1
.end method

.method public setSelected(Lcom/genonbeta/android/framework/object/Selectable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 184
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->isSelected(Lcom/genonbeta/android/framework/object/Selectable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->setSelected(Lcom/genonbeta/android/framework/object/Selectable;ZI)Z

    move-result p1

    return p1
.end method

.method public setSelected(Lcom/genonbeta/android/framework/object/Selectable;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 194
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->isSelected(Lcom/genonbeta/android/framework/object/Selectable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->setSelected(Lcom/genonbeta/android/framework/object/Selectable;ZI)Z

    move-result p1

    return p1
.end method

.method public setSelected(Lcom/genonbeta/android/framework/object/Selectable;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    const/4 v0, -0x1

    .line 189
    invoke-virtual {p0, p1, p2, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->setSelected(Lcom/genonbeta/android/framework/object/Selectable;ZI)Z

    move-result p1

    return p1
.end method

.method public setSelected(Lcom/genonbeta/android/framework/object/Selectable;ZI)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZI)Z"
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->isSelected(Lcom/genonbeta/android/framework/object/Selectable;)Z

    move-result v0

    if-ne p2, v0, :cond_7

    return p2

    .line 203
    :cond_7
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;->getCallback()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;->check(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z

    move-result p1

    return p1
.end method
