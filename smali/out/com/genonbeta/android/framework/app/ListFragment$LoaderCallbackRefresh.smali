.class Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/app/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderCallbackRefresh"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private mReloadRequested:Z

.field private mRunning:Z

.field final synthetic this$0:Lcom/genonbeta/android/framework/app/ListFragment;


# direct methods
.method private constructor <init>(Lcom/genonbeta/android/framework/app/ListFragment;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->mRunning:Z

    .line 271
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->mReloadRequested:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/android/framework/app/ListFragment;Lcom/genonbeta/android/framework/app/ListFragment$1;)V
    .registers 3

    .line 268
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;-><init>(Lcom/genonbeta/android/framework/app/ListFragment;)V

    return-void
.end method


# virtual methods
.method public isReloadRequested()Z
    .registers 2

    .line 318
    iget-boolean v0, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->mReloadRequested:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 313
    iget-boolean v0, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->mRunning:Z

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->mReloadRequested:Z

    const/4 p2, 0x1

    .line 278
    iput-boolean p2, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->mRunning:Z

    .line 280
    iget-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    invoke-static {p2}, Lcom/genonbeta/android/framework/app/ListFragment;->access$100(Lcom/genonbeta/android/framework/app/ListFragment;)Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p2

    invoke-interface {p2}, Lcom/genonbeta/android/framework/widget/ListAdapterImpl;->getCount()I

    move-result p2

    if-nez p2, :cond_17

    .line 281
    iget-object p2, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    invoke-virtual {p2, p1}, Lcom/genonbeta/android/framework/app/ListFragment;->setListShown(Z)V

    .line 283
    :cond_17
    iget-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/app/ListFragment;->createLoader()Landroidx/loader/content/AsyncTaskLoader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 268
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 289
    iget-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/app/ListFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 290
    iget-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/app/ListFragment;->onPrepareRefreshingList()V

    .line 292
    iget-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    invoke-static {p1}, Lcom/genonbeta/android/framework/app/ListFragment;->access$100(Lcom/genonbeta/android/framework/app/ListFragment;)Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/genonbeta/android/framework/widget/ListAdapterImpl;->onUpdate(Ljava/util/List;)V

    .line 293
    iget-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    invoke-static {p1}, Lcom/genonbeta/android/framework/app/ListFragment;->access$100(Lcom/genonbeta/android/framework/app/ListFragment;)Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/android/framework/widget/ListAdapterImpl;->onDataSetChanged()V

    .line 295
    iget-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/genonbeta/android/framework/app/ListFragment;->setListShown(Z)V

    .line 296
    iget-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/app/ListFragment;->onListRefreshed()V

    .line 299
    :cond_2a
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->isReloadRequested()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 300
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->refresh()V

    :cond_33
    const/4 p1, 0x0

    .line 302
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->mRunning:Z

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public refresh()V
    .registers 5

    .line 323
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    invoke-static {v0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->this$0:Lcom/genonbeta/android/framework/app/ListFragment;

    .line 324
    invoke-static {v1}, Lcom/genonbeta/android/framework/app/ListFragment;->access$200(Lcom/genonbeta/android/framework/app/ListFragment;)Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public requestRefresh()Z
    .registers 3

    .line 329
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->isReloadRequested()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    return v0

    .line 332
    :cond_e
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 333
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->refresh()V

    goto :goto_1b

    .line 335
    :cond_19
    iput-boolean v1, p0, Lcom/genonbeta/android/framework/app/ListFragment$LoaderCallbackRefresh;->mReloadRequested:Z

    :goto_1b
    return v1
.end method
