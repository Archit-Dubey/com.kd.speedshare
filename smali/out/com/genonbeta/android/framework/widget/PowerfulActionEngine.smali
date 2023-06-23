.class public Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;
.super Ljava/lang/Object;
.source "PowerfulActionEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Implementation;,
        Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$OnSelectionTaskListener;,
        Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;,
        Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;,
        Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;,
        Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;,
        Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReturningObject::",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActiveActionModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEngineCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback<",
            "TReturningObject;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback<",
            "TReturningObject;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mActiveActionModes:Ljava/util/Map;

    .line 23
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mEngineCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;

    return-void
.end method


# virtual methods
.method public check(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TReturningObject;>;TT;ZI)Z"
        }
    .end annotation

    .line 29
    invoke-interface {p2, p3}, Lcom/genonbeta/android/framework/object/Selectable;->setSelectableSelected(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 32
    :cond_8
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 33
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    .line 35
    :cond_11
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mEngineCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;->onCheck(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    if-eqz p3, :cond_28

    .line 39
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;->getSelectionList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 41
    :cond_28
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;->getSelectionList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    :goto_33
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mEngineCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;->onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    invoke-interface {p1, p3, v0, p2, p4}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;->onItemChecked(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Lcom/genonbeta/android/framework/object/Selectable;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public finish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mActiveActionModes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    if-eqz v0, :cond_27

    .line 52
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mEngineCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;

    invoke-interface {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;->onFinish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 53
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mEngineCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;

    invoke-interface {v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;->onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;->onFinish(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)V

    .line 55
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mActiveActionModes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->reload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    :cond_27
    return-void
.end method

.method public getActiveActionModes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mActiveActionModes:Ljava/util/Map;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TReturningObject;>;)",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder<",
            "TT;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mActiveActionModes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    return-object p1
.end method

.method public hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mActiveActionModes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 3

    if-eqz p1, :cond_15

    .line 83
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mActiveActionModes:Ljava/util/Map;

    .line 84
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mEngineCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;

    .line 85
    invoke-interface {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;->onReload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x1

    return p1

    .line 86
    :cond_15
    :goto_15
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V

    const/4 p1, 0x0

    return p1
.end method

.method public start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TReturningObject;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Z)Z

    move-result p1

    return p1
.end method

.method public start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TReturningObject;>;Z)Z"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mActiveActionModes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_12

    :cond_a
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mEngineCallback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;

    .line 101
    invoke-interface {v0, p1, p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;->onStart(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Z)Z

    move-result p2

    if-nez p2, :cond_17

    .line 102
    :cond_12
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V

    const/4 p1, 0x0

    return p1

    .line 106
    :cond_17
    iget-object p2, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->mActiveActionModes:Ljava/util/Map;

    new-instance v0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    invoke-direct {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->reload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result p1

    return p1
.end method
