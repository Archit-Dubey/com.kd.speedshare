.class public Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;
.super Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer$Send;
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
.field final synthetic this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;


# direct methods
.method public constructor <init>(Lcom/genonbeta/CoolSocket/CoolTransfer$Send;Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder<",
            "TT;>;)V"
        }
    .end annotation

    .line 616
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    .line 617
    invoke-direct {p0, p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;-><init>(Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;)V

    return-void
.end method


# virtual methods
.method public getBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 696
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getServerIp()Ljava/lang/String;
    .registers 2

    .line 701
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->getServerIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRun()V
    .registers 8

    .line 628
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->addProcess(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 629
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onPrepare(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V

    .line 632
    :try_start_e
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 633
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_30

    .line 634
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->setSocket(Ljava/net/Socket;)V

    .line 635
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 638
    :cond_30
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getServerIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 639
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onTaskPrepareSocket(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V

    .line 641
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 642
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onTaskOrientateStreams(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V

    .line 647
    sget-object v1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7c
    const/4 v3, -0x1

    if-eq v2, v3, :cond_cc

    .line 649
    iget-object v2, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->getBlockingObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_86} :catch_128
    .catchall {:try_start_e .. :try_end_86} :catchall_126

    .line 650
    :try_start_86
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getBuffer()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_a6

    .line 651
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getBuffer()[B

    move-result-object v4

    invoke-virtual {v0, v4, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 652
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 654
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v4

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->incrementTransferredByte(J)J

    .line 656
    :cond_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_86 .. :try_end_a7} :catchall_c9

    .line 658
    :try_start_a7
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v2

    iget-object v4, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v2, v4, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->doNotify(Lcom/genonbeta/CoolSocket/CoolTransfer;Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Z

    .line 660
    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 661
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v2
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_c4} :catch_128
    .catchall {:try_start_a7 .. :try_end_c4} :catchall_126

    if-eqz v2, :cond_c7

    goto :goto_cc

    :cond_c7
    move v2, v3

    goto :goto_7c

    :catchall_c9
    move-exception v0

    .line 656
    :try_start_ca
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    :try_start_cb
    throw v0

    .line 665
    :cond_cc
    :goto_cc
    sget-object v1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 666
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->incrementTransferredFileCount()I

    .line 667
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v1, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onTaskEnd(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 671
    :cond_e4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 672
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ee} :catch_128
    .catchall {:try_start_cb .. :try_end_ee} :catchall_126

    .line 679
    :cond_ee
    :try_start_ee
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_10a

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 680
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_105} :catch_106

    goto :goto_10a

    :catch_106
    move-exception v0

    .line 682
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 685
    :cond_10a
    :goto_10a
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onDestroy(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 687
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_120

    .line 688
    :goto_11b
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onPrepareNext(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 690
    :cond_120
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->removeProcess(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    goto :goto_160

    :catchall_126
    move-exception v0

    goto :goto_161

    :catch_128
    move-exception v0

    .line 676
    :try_start_129
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v1, p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onError(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/lang/Exception;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V
    :try_end_132
    .catchall {:try_start_129 .. :try_end_132} :catchall_126

    .line 679
    :try_start_132
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_14e

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14e

    .line 680
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_149} :catch_14a

    goto :goto_14e

    :catch_14a
    move-exception v0

    .line 682
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 685
    :cond_14e
    :goto_14e
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v0, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onDestroy(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 687
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_120

    goto :goto_11b

    :goto_160
    return-void

    .line 679
    :goto_161
    :try_start_161
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_17d

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_17d

    .line 680
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_178} :catch_179

    goto :goto_17d

    :catch_179
    move-exception v1

    .line 682
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 685
    :cond_17d
    :goto_17d
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v1, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onDestroy(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 687
    sget-object v1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_193

    .line 688
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v1, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->onPrepareNext(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 690
    :cond_193
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->this$0:Lcom/genonbeta/CoolSocket/CoolTransfer$Send;

    invoke-virtual {v1, p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->removeProcess(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V

    .line 691
    goto :goto_19a

    :goto_199
    throw v0

    :goto_19a
    goto :goto_199
.end method

.method public skipBytes(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    invoke-super {p0, p1, p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->skipBytes(J)V

    .line 708
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    return-void
.end method
