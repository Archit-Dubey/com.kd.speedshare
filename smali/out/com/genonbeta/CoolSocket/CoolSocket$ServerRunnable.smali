.class Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;
.super Ljava/lang/Object;
.source "CoolSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/CoolSocket/CoolSocket;


# direct methods
.method private constructor <init>(Lcom/genonbeta/CoolSocket/CoolSocket;)V
    .registers 2

    .line 762
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/CoolSocket/CoolSocket;Lcom/genonbeta/CoolSocket/CoolSocket$1;)V
    .registers 3

    .line 762
    invoke-direct {p0, p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;-><init>(Lcom/genonbeta/CoolSocket/CoolSocket;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket;->onServerStarted()V

    .line 771
    :cond_5
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 774
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_20

    .line 776
    :cond_1b
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v1, v0}, Lcom/genonbeta/CoolSocket/CoolSocket;->respondRequest(Ljava/net/Socket;)Z

    .line 778
    :goto_20
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket;->isInterrupted()Z

    move-result v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_2b
    .catchall {:try_start_0 .. :try_end_26} :catchall_29

    if-eqz v0, :cond_5

    goto :goto_31

    :catchall_29
    move-exception v0

    goto :goto_37

    :catch_2b
    move-exception v0

    .line 780
    :try_start_2c
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v1, v0}, Lcom/genonbeta/CoolSocket/CoolSocket;->onInternalError(Ljava/lang/Exception;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_29

    .line 782
    :goto_31
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket;->onServerStopped()V

    return-void

    :goto_37
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket;->onServerStopped()V

    .line 783
    goto :goto_3e

    :goto_3d
    throw v0

    :goto_3e
    goto :goto_3d
.end method
