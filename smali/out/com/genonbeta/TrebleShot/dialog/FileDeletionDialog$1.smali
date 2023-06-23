.class Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;
.super Ljava/lang/Object;
.source "FileDeletionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$copiedItems:Ljava/util/List;

.field final synthetic val$listener:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;Ljava/util/List;Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;Landroid/content/Context;)V
    .registers 5

    .line 41
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->val$copiedItems:Ljava/util/List;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->val$listener:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 45
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;)V

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;

    .line 94
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f11017b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1$1;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    const p2, 0x7f0700cc

    .line 95
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setIconRes(I)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;->val$context:Landroid/content/Context;

    .line 96
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    return-void
.end method
