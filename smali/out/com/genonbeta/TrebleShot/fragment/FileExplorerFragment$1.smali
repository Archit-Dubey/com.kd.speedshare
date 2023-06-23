.class Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$1;
.super Ljava/lang/Object;
.source "FileExplorerFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener<",
        "Lcom/genonbeta/android/framework/io/DocumentFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder<",
            "Lcom/genonbeta/android/framework/io/DocumentFile;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->index:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;->object:Ljava/lang/Object;

    check-cast p1, Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    return-void
.end method
