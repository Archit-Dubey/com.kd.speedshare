.class public abstract Lcom/genonbeta/android/framework/app/ListFragment;
.super Lcom/genonbeta/android/framework/app/Fragment;
.source "ListFragment.java"

# interfaces
.implements Lcom/genonbeta/android/framework/app/ListFragmentImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/app/ListFragment$ListLoader;,
        Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Landroid/view/ViewGroup;",
        "T:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/genonbeta/android/framework/widget/ListAdapterImpl<",
        "TT;>;>",
        "Lcom/genonbeta/android/framework/app/Fragment;",
        "Lcom/genonbeta/android/framework/app/ListFragmentImpl<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ListFragment"

.field public static final TASK_ID_REFRESH:I


# instance fields
.field private mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/view/ViewGroup;

.field private mCustomViewContainer:Landroid/view/ViewGroup;

.field private mDefaultViewContainer:Landroid/view/ViewGroup;

.field private mEmptyActionButton:Landroid/widget/Button;

.field private mEmptyImage:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/ViewGroup;

.field private mListViewContainer:Landroid/view/ViewGroup;

.field private mLoaderCallbackRefresh:Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/android/framework/app/ListFragment<",
            "TZ;TT;TE;>.",
            "LoaderCallbackRefresh;"
        }
    .end annotation
.end field

.field private mProgressView:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;-><init>(Lcom/genonbeta/android/framework/app/ListFragment;Lcom/genonbeta/android/framework/app/ListFragment$1;)V

    iput-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mLoaderCallbackRefresh:Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/android/framework/app/ListFragment;)Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/android/framework/app/ListFragment;)Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mLoaderCallbackRefresh:Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;

    return-object p0
.end method


# virtual methods
.method public createLoader()Landroidx/loader/content/AsyncTaskLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/AsyncTaskLoader<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/genonbeta/android/framework/app/ListFragment$ListLoader;

    iget-object v1, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    invoke-direct {v0, v1}, Lcom/genonbeta/android/framework/app/ListFragment$ListLoader;-><init>(Lcom/genonbeta/android/framework/widget/ListAdapterImpl;)V

    return-object v0
.end method

.method public getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    return-object v0
.end method

.method protected getContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCustomViewContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mCustomViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDefaultViewContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mDefaultViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getEmptyActionButton()Landroid/widget/Button;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyActionButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getEmptyImage()Landroid/widget/ImageView;
    .registers 2

    .line 144
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->onEnsureList()V

    .line 145
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getEmptyText()Landroid/widget/TextView;
    .registers 2

    .line 150
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->onEnsureList()V

    .line 151
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getEmptyView()Landroid/view/ViewGroup;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getListAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    return-object v0
.end method

.method public abstract getListView()Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation
.end method

.method protected getListViewContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mListViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getLoaderCallbackRefresh()Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/android/framework/app/ListFragment<",
            "TZ;TT;TE;>.",
            "LoaderCallbackRefresh;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mLoaderCallbackRefresh:Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;

    return-object v0
.end method

.method public getProgressView()Landroid/widget/ProgressBar;
    .registers 2

    .line 176
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->onEnsureList()V

    .line 177
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mProgressView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    .line 91
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    iget-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/app/ListFragment;->setListAdapter(Lcom/genonbeta/android/framework/widget/ListAdapterImpl;)V

    .line 94
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mLoaderCallbackRefresh:Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1, v1, v2, v0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public abstract onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 54
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/android/framework/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/genonbeta/android/framework/R$layout;->genfw_abstract_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_customViewContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mCustomViewContainer:Landroid/view/ViewGroup;

    .line 66
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_defaultViewContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mDefaultViewContainer:Landroid/view/ViewGroup;

    .line 67
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_listViewContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mListViewContainer:Landroid/view/ViewGroup;

    .line 68
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mContainer:Landroid/view/ViewGroup;

    .line 69
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_emptyView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyView:Landroid/view/ViewGroup;

    .line 70
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_emptyTextView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyText:Landroid/widget/TextView;

    .line 71
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_emptyImageView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyImage:Landroid/widget/ImageView;

    .line 72
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_progressView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 73
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_emptyActionButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyActionButton:Landroid/widget/Button;

    return-object p1
.end method

.method protected abstract onEnsureList()V
.end method

.method protected onListRefreshed()V
    .registers 1

    return-void
.end method

.method protected abstract onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")TZ;"
        }
    .end annotation
.end method

.method protected onPrepareRefreshingList()V
    .registers 1

    return-void
.end method

.method public abstract onSetListAdapter(Lcom/genonbeta/android/framework/widget/ListAdapterImpl;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 81
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->getListView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 84
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->getListView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_listView:I

    if-eq p1, p2, :cond_1e

    .line 85
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->getListView()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_listView:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setId(I)V

    :cond_1e
    return-void
.end method

.method public refreshList()V
    .registers 2

    .line 187
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->getLoaderCallbackRefresh()Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->requestRefresh()Z

    return-void
.end method

.method public setEmptyImage(I)V
    .registers 3

    .line 192
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->onEnsureList()V

    .line 193
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 198
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->onEnsureList()V

    .line 199
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListAdapter(Lcom/genonbeta/android/framework/widget/ListAdapterImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 205
    :goto_9
    iput-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    .line 207
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/app/ListFragment;->onSetListAdapter(Lcom/genonbeta/android/framework/widget/ListAdapterImpl;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 208
    iget-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_29

    if-nez v0, :cond_29

    .line 209
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_26

    const/4 v1, 0x1

    :cond_26
    invoke-virtual {p0, v2, v1}, Lcom/genonbeta/android/framework/app/ListFragment;->setListShown(ZZ)V

    :cond_29
    return-void
.end method

.method public setListShown(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/android/framework/app/ListFragment;->setListShown(ZZ)V

    return-void
.end method

.method public setListShown(ZZ)V
    .registers 7

    .line 220
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->onEnsureList()V

    .line 222
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-ne v0, p1, :cond_12

    return-void

    :cond_12
    if-eqz p2, :cond_3c

    .line 226
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x10a0001

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 227
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x10a0000

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 229
    iget-object v2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2f

    move-object v3, p2

    goto :goto_30

    :cond_2f
    move-object v3, v0

    :goto_30
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_38

    move-object p2, v0

    :cond_38
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_46

    .line 232
    :cond_3c
    iget-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 233
    iget-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 236
    :goto_46
    iget-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    if-eqz p1, :cond_4e

    const/4 v2, 0x0

    goto :goto_50

    :cond_4e
    const/16 v2, 0x8

    :goto_50
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 237
    iget-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_59

    const/16 v1, 0x8

    :cond_59
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public showCustomView(Z)V
    .registers 6

    .line 242
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mCustomViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_9

    const/4 v3, 0x0

    goto :goto_b

    :cond_9
    const/16 v3, 0x8

    :goto_b
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mDefaultViewContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_14

    const/16 v1, 0x8

    :cond_14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public toggleCustomView()Z
    .registers 4

    .line 248
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment;->getCustomViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    xor-int/lit8 v2, v0, 0x1

    .line 250
    invoke-virtual {p0, v2}, Lcom/genonbeta/android/framework/app/ListFragment;->showCustomView(Z)V

    xor-int/2addr v0, v1

    return v0
.end method

.method public useEmptyActionButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyActionButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 260
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/app/ListFragment;->useEmptyActionButton(Z)V

    return-void
.end method

.method public useEmptyActionButton(Z)V
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment;->mEmptyActionButton:Landroid/widget/Button;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
