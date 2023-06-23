.class public abstract Lcom/genonbeta/android/framework/app/ListViewFragment;
.super Lcom/genonbeta/android/framework/app/ListFragment;
.source "ListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/genonbeta/android/framework/widget/ListViewAdapter<",
        "TT;>;>",
        "Lcom/genonbeta/android/framework/app/ListFragment<",
        "Landroid/widget/ListView;",
        "TT;TE;>;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/ListFragment;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/genonbeta/android/framework/app/ListViewFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/android/framework/app/ListViewFragment$1;-><init>(Lcom/genonbeta/android/framework/app/ListViewFragment;)V

    iput-object v0, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 36
    new-instance v0, Lcom/genonbeta/android/framework/app/ListViewFragment$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/android/framework/app/ListViewFragment$2;-><init>(Lcom/genonbeta/android/framework/app/ListViewFragment;)V

    iput-object v0, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/android/framework/app/ListViewFragment;)Landroid/widget/ListView;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mListView:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getListView()Landroid/view/ViewGroup;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListViewFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListViewFragment;->onEnsureList()V

    .line 100
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/android/framework/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 51
    sget p2, Lcom/genonbeta/android/framework/R$id;->genfw_customListFragment_listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mListView:Landroid/widget/ListView;

    if-nez p2, :cond_1e

    .line 54
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListViewFragment;->getContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListViewFragment;->getListViewContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/genonbeta/android/framework/app/ListViewFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/ListView;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mListView:Landroid/widget/ListView;

    .line 56
    :cond_1e
    iget-object p2, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    iget-object p2, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListViewFragment;->getEmptyView()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-object p1
.end method

.method protected onEnsureList()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListViewFragment;->getEmptyView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    return-void
.end method

.method protected bridge synthetic onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 3

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/android/framework/app/ListViewFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/ListView;

    move-result-object p1

    return-object p1
.end method

.method protected onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/ListView;
    .registers 5

    .line 65
    new-instance p1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/ListViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onSetListAdapter(Lcom/genonbeta/android/framework/widget/ListAdapterImpl;)Z
    .registers 2

    .line 21
    check-cast p1, Lcom/genonbeta/android/framework/widget/ListViewAdapter;

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/app/ListViewFragment;->onSetListAdapter(Lcom/genonbeta/android/framework/widget/ListViewAdapter;)Z

    move-result p1

    return p1
.end method

.method public onSetListAdapter(Lcom/genonbeta/android/framework/widget/ListViewAdapter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListViewFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 88
    :cond_6
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x1

    return p1
.end method
