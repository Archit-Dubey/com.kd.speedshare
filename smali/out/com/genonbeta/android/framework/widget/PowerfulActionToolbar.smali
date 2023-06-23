.class public abstract Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;
.super Ljava/lang/Object;
.source "PowerfulActionToolbar.java"

# interfaces
.implements Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Landroidx/appcompat/widget/Toolbar;",
        "ReturningObject::",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback<",
        "TReturningObject;>;"
    }
.end annotation


# instance fields
.field private mContainerLayout:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

.field private mFinishAllowed:Z

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private mTaskListener:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$OnSelectionTaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$OnSelectionTaskListener<",
            "TReturningObject;>;"
        }
    .end annotation
.end field

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/Toolbar;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TE;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mFinishAllowed:Z

    .line 29
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 31
    new-instance p2, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mMenuInflater:Landroid/view/MenuInflater;

    .line 32
    new-instance p2, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    invoke-direct {p2, p1, p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;-><init>(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;)V

    iput-object p2, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;)Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mFinishAllowed:Z

    return p0
.end method


# virtual methods
.method public getContainerLayout()Landroid/view/View;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mContainerLayout:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEngine()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public isFinishAllowed()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mFinishAllowed:Z

    return v0
.end method

.method public onCheck(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TE;TReturningObject;>;TE;ZI)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onFinish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 2

    const/16 p1, 0x8

    .line 165
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->updateVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onReload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 8

    .line 110
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->updateVisibility(I)V

    .line 114
    iget-boolean v1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mFinishAllowed:Z

    if-eqz v1, :cond_31

    .line 115
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    sget v2, Lcom/genonbeta/android/framework/R$drawable;->genfw_close_white_24dp:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 116
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 117
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$1;

    invoke-direct {v2, p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$1;-><init>(Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_31
    instance-of v1, p1, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;

    const/4 v2, 0x1

    if-eqz v1, :cond_51

    move-object v1, p1

    check-cast v1, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;

    .line 128
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_51

    const/4 v1, 0x1

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    if-eqz v1, :cond_79

    .line 132
    new-instance v1, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;-><init>(Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V

    .line 147
    :goto_59
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p1

    if-ge v0, p1, :cond_79

    .line 148
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 149
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 150
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_79
    return v2
.end method

.method public onStart(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Z)Z
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

    .line 103
    instance-of p2, p1, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;

    if-eqz p2, :cond_16

    check-cast p1, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;

    .line 104
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;->onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public setContainerLayout(Landroid/view/View;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mContainerLayout:Landroid/view/View;

    return-void
.end method

.method public setFinishAllowed(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mFinishAllowed:Z

    return-void
.end method

.method public setOnSelectionTaskListener(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$OnSelectionTaskListener;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mTaskListener:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$OnSelectionTaskListener;

    return-void
.end method

.method protected updateVisibility(I)V
    .registers 5

    if-nez p1, :cond_5

    const/high16 v0, 0x10a0000

    goto :goto_8

    :cond_5
    const v0, 0x10a0001

    .line 83
    :goto_8
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getContainerLayout()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getContainerLayout()Landroid/view/View;

    move-result-object v1

    :goto_15
    if-nez p1, :cond_32

    .line 86
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 89
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mTaskListener:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$OnSelectionTaskListener;

    if-eqz p1, :cond_4c

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$OnSelectionTaskListener;->onSelectionTask(ZLcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)V

    goto :goto_4c

    .line 92
    :cond_32
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 93
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->mTaskListener:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$OnSelectionTaskListener;

    if-eqz p1, :cond_4c

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$OnSelectionTaskListener;->onSelectionTask(ZLcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)V

    :cond_4c
    :goto_4c
    return-void
.end method
