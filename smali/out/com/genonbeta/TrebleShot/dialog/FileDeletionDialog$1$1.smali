.class Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "FileDeletionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mTotalDeletion:I

.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;

    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->mTotalDeletion:I

    return-void
.end method

.method private delete(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 4

    .line 68
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 71
    :cond_b
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->isDirectory()Z

    move-result v0

    .line 72
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->isFile()Z

    move-result v1

    if-eqz v0, :cond_18

    .line 75
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->deleteDirectory(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    .line 77
    :cond_18
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->delete()Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz v1, :cond_26

    .line 79
    iget v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->mTotalDeletion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->mTotalDeletion:I

    .line 81
    :cond_26
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->val$listener:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;->onFileDeletion(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    .line 82
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->publishStatusText(Ljava/lang/String;)Z

    :cond_3c
    return-void
.end method

.method private deleteDirectory(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 5

    .line 88
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->listFiles()[Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 91
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    .line 92
    invoke-direct {p0, v2}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->delete(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->val$copiedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 54
    :try_start_14
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    .line 56
    invoke-direct {p0, v1}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->delete(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_8

    :catch_20
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_8

    .line 62
    :cond_25
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->val$listener:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;

    if-eqz v0, :cond_38

    .line 63
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->val$listener:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v1

    iget v2, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->mTotalDeletion:I

    invoke-interface {v0, p0, v1, v2}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;->onCompleted(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Landroid/content/Context;I)V

    :cond_38
    return-void
.end method
