.class final Lcom/genonbeta/TrebleShot/fragment/FileListFragment$2;
.super Ljava/lang/Object;
.source "FileListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;


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

    .line 119
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$2;->val$fragment:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$2;->val$adapter:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Landroid/content/Context;I)V
    .registers 5

    .line 129
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.genonbeta.TrebleShot.action.FILE_LIST_CHANGED"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$2;->val$adapter:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    .line 130
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p3

    if-nez p3, :cond_11

    const/4 p3, 0x0

    goto :goto_1b

    :cond_11
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$2;->val$adapter:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    .line 132
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p3

    :goto_1b
    const-string v0, "extraPath"

    .line 130
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 129
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onFileDeletion(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 4

    .line 123
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$2;->val$fragment:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {p1, p3}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->scanFile(Lcom/genonbeta/android/framework/io/DocumentFile;)Z

    return-void
.end method
