.class Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;
.super Ljava/lang/Object;
.source "FileRenameDialog.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$renameListener:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;Landroid/content/Context;)V
    .registers 4

    .line 46
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->val$renameListener:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProceedClick(Landroidx/appcompat/app/AlertDialog;)Z
    .registers 7

    .line 50
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3e

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

    .line 53
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->val$renameListener:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;

    invoke-virtual {v0, v3, p1, v4}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->renameFile(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;Ljava/lang/String;Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 54
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->val$renameListener:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;

    if-eqz p1, :cond_3d

    .line 55
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;->onFileRenameCompleted(Landroid/content/Context;)V

    :cond_3d
    return v2

    :cond_3e
    :try_start_3e
    new-array v0, v2, [Ljava/lang/Object;

    .line 60
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_53} :catch_72

    .line 65
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->val$context:Landroid/content/Context;

    const v1, 0x7f110206

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1$1;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    const v0, 0x7f0700b2

    .line 86
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setIconRes(I)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;->val$context:Landroid/content/Context;

    .line 87
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    return v2

    :catch_72
    return v1
.end method
