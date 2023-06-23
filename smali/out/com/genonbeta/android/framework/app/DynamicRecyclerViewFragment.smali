.class public abstract Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;
.super Lcom/genonbeta/android/framework/app/RecyclerViewFragment;
.source "DynamicRecyclerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        "Z:",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter<",
        "TT;TV;>;>",
        "Lcom/genonbeta/android/framework/app/RecyclerViewFragment<",
        "TT;TV;TZ;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public isHorizontalOrientation()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isScreenLandscape()Z
    .registers 3

    .line 38
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 39
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$bool;->genfw_screen_isLandscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public isScreenLarge()Z
    .registers 3

    .line 56
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 57
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$bool;->genfw_screen_isLarge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public isScreenNormal()Z
    .registers 3

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 51
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$bool;->genfw_screen_isNormal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public isScreenSmall()Z
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 45
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$bool;->genfw_screen_isSmall:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public isXScreenLarge()Z
    .registers 3

    .line 62
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 63
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$bool;->genfw_screen_isXLarge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public onLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 6

    .line 20
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->isScreenLarge()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->isHorizontalOrientation()Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x2

    goto :goto_16

    :cond_15
    const/4 v2, 0x1

    .line 21
    :goto_16
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->isHorizontalOrientation()Z

    move-result v4

    xor-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method public bridge synthetic onSetListAdapter(Lcom/genonbeta/android/framework/widget/ListAdapterImpl;)Z
    .registers 2

    .line 14
    check-cast p1, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onSetListAdapter(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;)Z

    move-result p1

    return p1
.end method

.method public onSetListAdapter(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)Z"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->isHorizontalOrientation()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;->setUseHorizontalOrientation(Z)V

    .line 28
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->onSetListAdapter(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;)Z

    move-result p1

    return p1
.end method
