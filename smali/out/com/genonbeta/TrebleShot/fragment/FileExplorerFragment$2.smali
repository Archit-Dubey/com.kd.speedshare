.class Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$2;
.super Ljava/lang/Object;
.source "FileExplorerFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderCreated(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 2

    .line 153
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->refreshList()V

    return-void
.end method
