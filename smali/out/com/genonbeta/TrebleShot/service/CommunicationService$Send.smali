.class public Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;
.super Lcom/genonbeta/CoolSocket/CoolTransfer$Send;
.source "CommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Send"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/CoolSocket/CoolTransfer$Send<",
        "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V
    .registers 2

    .line 1675
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;-><init>()V

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

    .line 1711
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 1712
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1713
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
    .registers 3
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

    .line 1681
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1683
    :cond_5
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object p2, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object p2, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 1685
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1
.end method

.method public onNotify(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;I)V"
        }
    .end annotation

    .line 1691
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTimeRemaining()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/genonbeta/TrebleShot/util/TimeUtils;->getDuration(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f110201

    invoke-virtual {v1, v3, v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1692
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p2, v4}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->updateProgress(IIZ)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1694
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v0, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 1695
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

    .line 1697
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I

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

    .line 1725
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTotalByte()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_32

    .line 1726
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;-><init>()V

    .line 1728
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v2, v2, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->calculateTransactionSize(JLcom/genonbeta/TrebleShot/object/TransferGroup$Index;)V

    .line 1729
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object p1

    iget-wide v1, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoing:J

    iget-wide v3, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCompleted:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->setTotalByte(J)V

    .line 1732
    :cond_32
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1
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

    .line 1703
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getCurrentTransferredByte()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getFileSize()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1b

    sget-object p1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    goto :goto_1d

    :cond_1b
    sget-object p1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    :goto_1d
    iput-object p1, v0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

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

    .line 1739
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onTaskOrientateStreams(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    .line 1741
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide p2, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->skippedBytes:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_28

    .line 1743
    :try_start_13
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getExtra()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide p2, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->skippedBytes:J

    invoke-virtual {p1, p2, p3}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->skipBytes(J)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_20} :catch_21

    goto :goto_28

    :catch_21
    move-exception p1

    .line 1745
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1746
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1

    .line 1749
    :cond_28
    :goto_28
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

    .line 1719
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1
.end method
