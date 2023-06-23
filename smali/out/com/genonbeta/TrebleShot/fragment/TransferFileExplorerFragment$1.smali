.class Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment$1;
.super Ljava/lang/Object;
.source "TransferFileExplorerFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getGroupId()J

    move-result-wide v1

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->index:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;->object:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->goPath(JLjava/lang/String;)V

    return-void
.end method
