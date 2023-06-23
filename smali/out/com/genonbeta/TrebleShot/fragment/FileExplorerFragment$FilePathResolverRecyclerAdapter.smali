.class Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;
.super Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;
.source "FileExplorerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePathResolverRecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter<",
        "Lcom/genonbeta/android/framework/io/DocumentFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;Landroid/content/Context;)V
    .registers 3

    .line 201
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    .line 202
    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public goTo(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 6

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    :goto_5
    if-eqz p1, :cond_2f

    .line 217
    new-instance v1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    if-nez p1, :cond_5

    const-string v2, "."

    .line 223
    iget-object v3, v1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 224
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    const v3, 0x7f11019a

    invoke-virtual {v2, v3}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;->title:Ljava/lang/String;

    goto :goto_5

    .line 227
    :cond_2f
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->initAdapter()V

    .line 229
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 230
    :goto_37
    :try_start_37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_52

    .line 231
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 233
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_37

    .line 236
    :cond_52
    monitor-exit p1

    return-void

    :catchall_54
    move-exception v0

    monitor-exit p1
    :try_end_56
    .catchall {:try_start_37 .. :try_end_56} :catchall_54

    goto :goto_58

    :goto_57
    throw v0

    :goto_58
    goto :goto_57
.end method

.method public onFirstItem()Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index<",
            "Lcom/genonbeta/android/framework/io/DocumentFile;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1101ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0700d4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method
