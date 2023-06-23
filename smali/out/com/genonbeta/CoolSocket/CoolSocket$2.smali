.class Lcom/genonbeta/CoolSocket/CoolSocket$2;
.super Ljava/lang/Object;
.source "CoolSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/CoolSocket/CoolSocket;->respondRequest(Ljava/net/Socket;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

.field final synthetic val$connectionHandler:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lcom/genonbeta/CoolSocket/CoolSocket;Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Ljava/net/Socket;)V
    .registers 4

    .line 258
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    iput-object p2, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->val$connectionHandler:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    iput-object p3, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->val$socket:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-static {v0}, Lcom/genonbeta/CoolSocket/CoolSocket;->access$100(Lcom/genonbeta/CoolSocket/CoolSocket;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1d

    .line 264
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->val$connectionHandler:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-static {v1}, Lcom/genonbeta/CoolSocket/CoolSocket;->access$100(Lcom/genonbeta/CoolSocket/CoolSocket;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_18
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 269
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->val$connectionHandler:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {v0, v1}, Lcom/genonbeta/CoolSocket/CoolSocket;->onConnected(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V

    .line 272
    :try_start_24
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->val$socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_49

    .line 273
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/genonbeta/CoolSocket/CoolSocket;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": You should close connections in the end of onConnected(ActiveConnection) method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->val$socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_49} :catch_62
    .catchall {:try_start_24 .. :try_end_49} :catchall_60

    .line 279
    :cond_49
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getConnections()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 280
    :try_start_50
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket;->getConnections()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->val$connectionHandler:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    monitor-exit v0

    goto :goto_79

    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_50 .. :try_end_5f} :catchall_5d

    throw v1

    :catchall_60
    move-exception v0

    goto :goto_7d

    :catch_62
    move-exception v0

    .line 277
    :try_start_63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    .line 279
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getConnections()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 280
    :try_start_6d
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket;->getConnections()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->val$connectionHandler:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    monitor-exit v0

    :goto_79
    return-void

    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_7a

    throw v1

    .line 279
    :goto_7d
    iget-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket;->getConnections()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 280
    :try_start_84
    iget-object v2, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolSocket;->getConnections()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/genonbeta/CoolSocket/CoolSocket$2;->val$connectionHandler:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_84 .. :try_end_90} :catchall_91

    .line 282
    throw v0

    :catchall_91
    move-exception v0

    .line 281
    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0
.end method
