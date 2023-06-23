.class public Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;
.super Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;
.source "CommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive<",
        "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V
    .registers 2

    .line 1549
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;)V"
        }
    .end annotation

    .line 1566
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 1567
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1568
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v0, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    :cond_28
    return-void
.end method

.method public onError(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/lang/Exception;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 1555
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1557
    :cond_5
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v0, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 1558
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyReceiveError(Lcom/genonbeta/TrebleShot/object/TransferObject;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1560
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1
.end method

.method public onNotify(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;I)V"
        }
    .end annotation

    .line 1575
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->recoverInterruptions:Z

    .line 1577
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTimeRemaining()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/genonbeta/TrebleShot/util/TimeUtils;->getDuration(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const v4, 0x7f110201

    invoke-virtual {v2, v4, v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1578
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, p2, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->updateProgress(IIZ)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1580
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v0, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 1581
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getCurrentTransferredByte()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->setBytesValue(J)V

    .line 1583
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p2, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I

    .line 1586
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    const/4 p2, 0x2

    iput p2, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->attemptsLeft:I

    return-void
.end method

.method public onPrepare(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;"
        }
    .end annotation

    .line 1631
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTotalByte()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_32

    .line 1632
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;-><init>()V

    .line 1634
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v2, v2, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->calculateTransactionSize(JLcom/genonbeta/TrebleShot/object/TransferGroup$Index;)V

    .line 1636
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object p1

    iget-wide v1, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incoming:J

    iget-wide v3, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCompleted:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->setTotalByte(J)V

    .line 1639
    :cond_32
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1
.end method

.method public onProcessListChanged(Ljava/util/ArrayList;Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;>;",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;Z)V"
        }
    .end annotation

    .line 1659
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onProcessListChanged(Ljava/util/ArrayList;Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Z)V

    if-nez p3, :cond_65

    .line 1662
    invoke-virtual {p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 1664
    instance-of p3, p1, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    if-eqz p3, :cond_3b

    iget-object p3, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {p3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$600(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Landroid/media/MediaScannerConnection;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 1665
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {p3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$600(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Landroid/media/MediaScannerConnection;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileMimeType:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    :cond_3b
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p2

    if-eqz p2, :cond_65

    .line 1668
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.genonbeta.TrebleShot.action.FILE_LIST_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "extraPath"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p3

    .line 1670
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "extraFile"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1668
    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_65
    return-void
.end method

.method public onTaskEnd(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;)V"
        }
    .end annotation

    .line 1593
    :try_start_0
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->sync()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 1595
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1598
    :goto_10
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getFileSize()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_94

    .line 1599
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 1600
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 1602
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 1604
    :try_start_3e
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v2

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-static {v2, v0, v3}, Lcom/genonbeta/TrebleShot/util/FileUtils;->saveReceivedFile(Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/object/TransferObject;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    iput-object v0, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 1605
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/object/TransferObject;->file:Ljava/lang/String;

    const-string v0, "CommunicationService"

    .line 1606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive.onTransferCompleted(): Saved as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_8e} :catch_8f

    goto :goto_a5

    :catch_8f
    move-exception p1

    .line 1608
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a5

    .line 1611
    :cond_94
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 1612
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_CURRENT:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p1, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method public onTaskOrientateStreams(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;"
        }
    .end annotation

    .line 1645
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide p2, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->skippedBytes:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_25

    .line 1647
    :try_start_10
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide p2, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->skippedBytes:J

    invoke-virtual {p1, p2, p3}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->skipBytes(J)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception p1

    .line 1649
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1650
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1

    .line 1653
    :cond_25
    :goto_25
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1
.end method

.method public onTaskPrepareSocket(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;"
        }
    .end annotation

    .line 1619
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1
.end method

.method public onTaskPrepareSocket(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/net/ServerSocket;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;",
            "Ljava/net/ServerSocket;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;"
        }
    .end annotation

    .line 1625
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1
.end method
