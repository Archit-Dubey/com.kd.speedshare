.class public abstract Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PathResolverRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;,
        Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->mList:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->initAdapter()V

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;)Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->mClickListener:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index<",
            "TT;>;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public initAdapter()V
    .registers 4

    .line 68
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 69
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->onFirstItem()Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 23
    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;I)V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    iput-object p2, p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->index:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    .line 52
    iget-object p2, p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->text:Landroid/widget/Button;

    iget-object v0, p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->index:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p2, p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->image:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->index:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    iget v0, v0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;->imgRes:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->mClickListener:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;

    if-eqz p2, :cond_2a

    .line 56
    iget-object p2, p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->text:Landroid/widget/Button;

    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$1;-><init>(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2a
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;
    .registers 5

    .line 45
    new-instance p2, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0085

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;-><init>(Landroid/view/View;Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$1;)V

    return-object p2
.end method

.method public abstract onFirstItem()Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index<",
            "TT;>;"
        }
    .end annotation
.end method

.method public setOnClickListener(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->mClickListener:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;

    return-void
.end method
