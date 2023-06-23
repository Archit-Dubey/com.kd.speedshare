.class public Lcom/genonbeta/android/framework/app/ListFragment$ListLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "ListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/app/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<G:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "TG;>;>;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/android/framework/widget/ListAdapterImpl<",
            "TG;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/widget/ListAdapterImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/widget/ListAdapterImpl<",
            "TG;>;)V"
        }
    .end annotation

    .line 347
    invoke-interface {p1}, Lcom/genonbeta/android/framework/widget/ListAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 348
    iput-object p1, p0, Lcom/genonbeta/android/framework/app/ListFragment$ListLoader;->mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .line 341
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment$ListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TG;>;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListFragment$ListLoader;->mAdapter:Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    invoke-interface {v0}, Lcom/genonbeta/android/framework/widget/ListAdapterImpl;->onLoad()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .registers 1

    .line 354
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStartLoading()V

    .line 355
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListFragment$ListLoader;->forceLoad()V

    return-void
.end method
