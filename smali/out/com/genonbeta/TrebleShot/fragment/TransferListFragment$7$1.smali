.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "TransferListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;

    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 9

    .line 330
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->access$000(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->pauseTransfer(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V

    .line 332
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "transfer"

    invoke-direct {v1, v4, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    .line 336
    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getTransferGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v4

    iget-wide v4, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "groupId=? AND type=?"

    .line 334
    invoke-virtual {v1, v4, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v1

    const-class v3, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 333
    invoke-virtual {v0, v1, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 338
    new-instance v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getTransferGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v3

    iget-wide v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-direct {v1, v3, v4}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 342
    :try_start_5d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v3

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 343
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->val$selectedPath:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->savePath:Ljava/lang/String;

    .line 345
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_76
    :cond_76
    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 346
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v4

    if-nez v4, :cond_da

    .line 352
    iget-object v4, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->publishStatusText(Ljava/lang/String;)Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_91} :catch_f0

    .line 355
    :try_start_91
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v4

    iget-object v6, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;

    iget-object v6, v6, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-virtual {v6}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getTransferGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v6

    invoke-static {v4, v3, v6, v2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getIncomingPseudoFile(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/TransferGroup;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v4

    .line 356
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v6

    invoke-static {v6, v3, v1, v5}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getIncomingPseudoFile(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/TransferGroup;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v3
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a9} :catch_76

    if-eqz v4, :cond_76

    if-eqz v3, :cond_76

    .line 362
    :try_start_ad
    invoke-virtual {v4}, Lcom/genonbeta/android/framework/io/DocumentFile;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 363
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v6

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v7

    invoke-static {v6, v4, v3, v7}, Lcom/genonbeta/TrebleShot/util/FileUtils;->move(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/util/Interrupter;)Z

    goto :goto_76

    .line 365
    :cond_bf
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_da
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 370
    :cond_e0
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->val$selectedPath:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->updateSavePath(Ljava/lang/String;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ef} :catch_f0

    goto :goto_f4

    :catch_f0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f4
    return-void
.end method
