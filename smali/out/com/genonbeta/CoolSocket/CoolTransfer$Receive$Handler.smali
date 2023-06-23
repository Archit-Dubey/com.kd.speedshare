.class public Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;
.super Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;


# direct methods
.method public constructor <init>(Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder<",
            "TT;>;)V"
        }
    .end annotation

    .line 422
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    .line 423
    invoke-direct {p0, p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;-><init>(Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;)V

    return-void
.end method


# virtual methods
.method public getBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 525
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getServerSocket()Ljava/net/ServerSocket;
    .registers 2

    .line 530
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .registers 2

    .line 535
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->getTimeout()I

    move-result v0

    return v0
.end method

.method protected onRun()V
    .registers 12

    .line 429
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->addProcess(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 431
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onPrepare(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V

    .line 434
    :try_start_e
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 435
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 436
    new-instance v0, Ljava/net/ServerSocket;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 438
    :cond_2c
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getTimeout()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3e

    .line 439
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 441
    :cond_3e
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onTaskPrepareSocket(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/net/ServerSocket;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V

    .line 443
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 444
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->setSocket(Ljava/net/Socket;)V

    .line 446
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getTimeout()I

    move-result v0

    if-eq v0, v1, :cond_73

    .line 447
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 449
    :cond_73
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onTaskPrepareSocket(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V

    .line 451
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 452
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 456
    iget-object v4, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v4, p0, v0, v5}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onTaskOrientateStreams(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V

    .line 458
    sget-object v4, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_142

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_af
    if-eq v5, v1, :cond_12a

    .line 460
    iget-object v5, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v5}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->getBlockingObject()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_b8} :catch_1a2
    .catchall {:try_start_e .. :try_end_b8} :catchall_1a0

    .line 461
    :try_start_b8
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getBuffer()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_e0

    .line 462
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 463
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 467
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v7

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->incrementTransferredByte(J)J

    .line 469
    :cond_e0
    monitor-exit v5
    :try_end_e1
    .catchall {:try_start_b8 .. :try_end_e1} :catchall_127

    .line 471
    :try_start_e1
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v5

    iget-object v7, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v5, v7, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->doNotify(Lcom/genonbeta/CoolSocket/CoolTransfer;Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Z

    .line 473
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->getTimeout()I

    move-result v5

    if-lez v5, :cond_106

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->getTimeout()I

    move-result v5

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-gtz v5, :cond_11f

    :cond_106
    sget-object v5, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    .line 474
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11f

    .line 475
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_11d

    goto :goto_11f

    :cond_11d
    move v5, v6

    goto :goto_af

    .line 476
    :cond_11f
    :goto_11f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "CoolTransfer: Timed out... Exiting."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_126} :catch_1a2
    .catchall {:try_start_e1 .. :try_end_126} :catchall_1a0

    goto :goto_12a

    :catchall_127
    move-exception v0

    .line 469
    :try_start_128
    monitor-exit v5
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_127

    :try_start_129
    throw v0

    .line 481
    :cond_12a
    :goto_12a
    sget-object v1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    .line 482
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->incrementTransferredFileCount()I

    .line 483
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v1, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onTaskEnd(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 487
    :cond_142
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 488
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_14c} :catch_1a2
    .catchall {:try_start_129 .. :try_end_14c} :catchall_1a0

    .line 496
    :cond_14c
    :try_start_14c
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_168

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_168

    .line 497
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_163} :catch_164

    goto :goto_168

    :catch_164
    move-exception v0

    .line 499
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 503
    :cond_168
    :goto_168
    :try_start_168
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_184

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_184

    .line 504
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_17f} :catch_180

    goto :goto_184

    :catch_180
    move-exception v0

    .line 506
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 509
    :cond_184
    :goto_184
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onDestroy(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 511
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19a

    .line 512
    :goto_195
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onPrepareNext(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 514
    :cond_19a
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->removeProcess(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    goto :goto_1f6

    :catchall_1a0
    move-exception v0

    goto :goto_1f7

    :catch_1a2
    move-exception v0

    .line 493
    :try_start_1a3
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v1, p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onError(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/lang/Exception;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V
    :try_end_1ac
    .catchall {:try_start_1a3 .. :try_end_1ac} :catchall_1a0

    .line 496
    :try_start_1ac
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_1c8

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1c8

    .line 497
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1c3
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1c3} :catch_1c4

    goto :goto_1c8

    :catch_1c4
    move-exception v0

    .line 499
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 503
    :cond_1c8
    :goto_1c8
    :try_start_1c8
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_1e4

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1e4

    .line 504
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1df} :catch_1e0

    goto :goto_1e4

    :catch_1e0
    move-exception v0

    .line 506
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 509
    :cond_1e4
    :goto_1e4
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onDestroy(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 511
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19a

    goto :goto_195

    :goto_1f6
    return-void

    .line 496
    :goto_1f7
    :try_start_1f7
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_213

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_213

    .line 497
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_1f7 .. :try_end_20e} :catch_20f

    goto :goto_213

    :catch_20f
    move-exception v1

    .line 499
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 503
    :cond_213
    :goto_213
    :try_start_213
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz v1, :cond_22f

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_22f

    .line 504
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_22a
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_22a} :catch_22b

    goto :goto_22f

    :catch_22b
    move-exception v1

    .line 506
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 509
    :cond_22f
    :goto_22f
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v1, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onDestroy(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 511
    sget-object v1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_245

    .line 512
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v1, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->onPrepareNext(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 514
    :cond_245
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;

    invoke-virtual {v1, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->removeProcess(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 515
    goto :goto_24c

    :goto_24b
    throw v0

    :goto_24c
    goto :goto_24b
.end method

.method public setServerSocket(Ljava/net/ServerSocket;)V
    .registers 3

    .line 540
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->setServerSocket(Ljava/net/ServerSocket;)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    return-void
.end method

.method public skipBytes(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    invoke-super {p0, p1, p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->skipBytes(J)V

    return-void
.end method
