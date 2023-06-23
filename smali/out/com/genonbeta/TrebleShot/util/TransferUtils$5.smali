.class final Lcom/genonbeta/TrebleShot/util/TransferUtils$5;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "TransferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils;->startTransferWithTest(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

.field final synthetic val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

.field final synthetic val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Landroid/content/Context;)V
    .registers 6

    .line 381
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iput-object p5, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRun()V
    .registers 6

    .line 385
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 388
    :cond_9
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->fetchValidTransfer(Landroid/content/Context;JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)Lcom/genonbeta/TrebleShot/object/TransferObject;

    move-result-object v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 389
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 390
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    new-instance v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$5;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6a

    .line 413
    :cond_30
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getSavePath(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 415
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    new-instance v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$5;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6a

    .line 438
    :cond_5f
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-static {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->startTransfer(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V

    :goto_6a
    return-void
.end method
