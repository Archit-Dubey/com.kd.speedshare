.class Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "FileRenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->onProceedClick(Landroidx/appcompat/app/AlertDialog;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;

.field final synthetic val$renameTo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;Ljava/lang/String;)V
    .registers 3

    .line 66
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->val$renameTo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRun()V
    .registers 12

    .line 72
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    .line 73
    iget-object v4, v3, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->friendlyName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->publishStatusText(Ljava/lang/String;)Z

    .line 75
    iget-object v4, v3, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v4}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getFileFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_37

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const-string v4, ".%s"

    .line 76
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_39

    :cond_37
    const-string v4, ""

    .line 78
    :goto_39
    iget-object v6, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;

    iget-object v6, v6, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->val$renameTo:Ljava/lang/String;

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v4, v7, v5

    const-string v4, "%s%s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;

    iget-object v7, v7, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->val$renameListener:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;

    invoke-virtual {v6, v3, v4, v7}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->renameFile(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;Ljava/lang/String;Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;)Z

    add-int/2addr v2, v5

    goto :goto_e

    .line 82
    :cond_61
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->val$renameListener:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;

    if-eqz v0, :cond_72

    .line 83
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->val$renameListener:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;->onFileRenameCompleted(Landroid/content/Context;)V

    :cond_72
    return-void
.end method
