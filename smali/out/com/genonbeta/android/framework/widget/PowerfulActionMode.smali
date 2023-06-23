.class public Lcom/genonbeta/android/framework/widget/PowerfulActionMode;
.super Landroidx/appcompat/widget/Toolbar;
.source "PowerfulActionMode.java"

# interfaces
.implements Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;,
        Lcom/genonbeta/android/framework/widget/PowerfulActionMode$OnSelectionTaskListener;,
        Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;
    }
.end annotation


# instance fields
.field private mToolbar:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar<",
            "Landroidx/appcompat/widget/Toolbar;",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->initialize()V

    return-void
.end method


# virtual methods
.method public check(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            "M::",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TM;>;TT;ZI)Z"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->check(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z

    move-result p1

    return p1
.end method

.method public check(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback<",
            "TT;>;TT;ZI)Z"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->check(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z

    move-result p1

    return p1
.end method

.method public finish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V
    .registers 3

    .line 122
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V

    return-void
.end method

.method public finish(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)V
    .registers 3

    .line 65
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V

    return-void
.end method

.method public getContainerLayout()Landroid/view/View;
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getContainerLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar<",
            "Landroidx/appcompat/widget/Toolbar;",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->mToolbar:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    return-object v0
.end method

.method public getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            "M::",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TM;>;)",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder<",
            "TT;>;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    move-result-object p1

    return-object p1
.end method

.method public getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback<",
            "TT;>;)",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder<",
            "TT;>;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    move-result-object p1

    return-object p1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 80
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 3

    .line 134
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result p1

    return p1
.end method

.method public hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)Z
    .registers 3

    .line 85
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result p1

    return p1
.end method

.method protected initialize()V
    .registers 3

    .line 43
    new-instance v0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$1;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$1;-><init>(Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/content/Context;Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->mToolbar:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    return-void
.end method

.method public reload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->reload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result p1

    return p1
.end method

.method public reload(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)Z
    .registers 3

    .line 90
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->reload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result p1

    return p1
.end method

.method public setContainerLayout(Landroid/view/View;)V
    .registers 3

    .line 95
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->setContainerLayout(Landroid/view/View;)V

    return-void
.end method

.method public setOnSelectionTaskListener(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$OnSelectionTaskListener;)V
    .registers 3

    .line 100
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->setOnSelectionTaskListener(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$OnSelectionTaskListener;)V

    return-void
.end method

.method public start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            "M::",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TM;>;)Z"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result p1

    return p1
.end method

.method public start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            "M::",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TM;>;Z)Z"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Z)Z

    move-result p1

    return p1
.end method

.method public start(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback<",
            "TT;>;)Z"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result p1

    return p1
.end method

.method public start(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback<",
            "TT;>;Z)Z"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Z)Z

    move-result p1

    return p1
.end method

.method protected updateVisibility(I)V
    .registers 3

    .line 157
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getEngineToolbar()Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->updateVisibility(I)V

    return-void
.end method
