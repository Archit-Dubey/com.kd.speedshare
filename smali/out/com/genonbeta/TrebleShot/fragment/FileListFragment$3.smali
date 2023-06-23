.class final Lcom/genonbeta/TrebleShot/fragment/FileListFragment$3;
.super Ljava/lang/Object;
.source "FileListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->handleEditingAction(ILcom/genonbeta/TrebleShot/fragment/FileListFragment;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

.field final synthetic val$fragment:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;)V
    .registers 3

    .line 137
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$3;->val$fragment:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$3;->val$adapter:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileRename(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;)V
    .registers 3

    .line 141
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$3;->val$fragment:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->scanFile(Lcom/genonbeta/android/framework/io/DocumentFile;)Z

    return-void
.end method

.method public onFileRenameCompleted(Landroid/content/Context;)V
    .registers 5

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.genonbeta.TrebleShot.action.FILE_LIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$3;->val$adapter:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    .line 148
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_1b

    :cond_11
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$3;->val$adapter:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    .line 150
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    :goto_1b
    const-string v2, "extraPath"

    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
