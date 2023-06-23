.class public abstract Lcom/genonbeta/CoolSocket/CoolSocket;
.super Ljava/lang/Object;
.source "CoolSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/CoolSocket/CoolSocket$Client;,
        Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;,
        Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
    }
.end annotation


# static fields
.field public static final HEADER_ITEM_LENGTH:Ljava/lang/String; = "length"

.field public static final HEADER_SEPARATOR:Ljava/lang/String; = "\nHEADER_END\n"

.field public static final NO_TIMEOUT:I = -0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mMaxConnections:I

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mServerThread:Ljava/lang/Thread;

.field private mSocketAddress:Ljava/net/SocketAddress;

.field private mSocketRunnable:Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;

.field private mSocketTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/genonbeta/CoolSocket/CoolSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/CoolSocket/CoolSocket;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mConnections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketAddress:Ljava/net/SocketAddress;

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketTimeout:I

    const/16 v1, 0xa

    .line 43
    iput v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mMaxConnections:I

    .line 44
    new-instance v1, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;

    invoke-direct {v1, p0, v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;-><init>(Lcom/genonbeta/CoolSocket/CoolSocket;Lcom/genonbeta/CoolSocket/CoolSocket$1;)V

    iput-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketRunnable:Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mConnections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketAddress:Ljava/net/SocketAddress;

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketTimeout:I

    const/16 v1, 0xa

    .line 43
    iput v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mMaxConnections:I

    .line 44
    new-instance v1, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;

    invoke-direct {v1, p0, v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;-><init>(Lcom/genonbeta/CoolSocket/CoolSocket;Lcom/genonbeta/CoolSocket/CoolSocket$1;)V

    iput-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketRunnable:Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;

    .line 60
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketAddress:Ljava/net/SocketAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mConnections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketAddress:Ljava/net/SocketAddress;

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketTimeout:I

    const/16 v1, 0xa

    .line 43
    iput v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mMaxConnections:I

    .line 44
    new-instance v1, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;

    invoke-direct {v1, p0, v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;-><init>(Lcom/genonbeta/CoolSocket/CoolSocket;Lcom/genonbeta/CoolSocket/CoolSocket$1;)V

    iput-object v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketRunnable:Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;

    .line 71
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketAddress:Ljava/net/SocketAddress;

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/CoolSocket/CoolSocket;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketTimeout:I

    return p0
.end method

.method public static connect(Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolSocket$Client;

    invoke-direct {v0}, Lcom/genonbeta/CoolSocket/CoolSocket$Client;-><init>()V

    .line 92
    invoke-interface {p0, v0}, Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;->onConnect(Lcom/genonbeta/CoolSocket/CoolSocket$Client;)V

    .line 94
    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket$Client;->getReturn()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    .line 95
    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket$Client;->getReturn()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return-object p0
.end method

.method public static connect(Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;)V
    .registers 2

    .line 105
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolSocket$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/CoolSocket/CoolSocket$1;-><init>(Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;)V

    .line 113
    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket$1;->start()V

    return-void
.end method


# virtual methods
.method public getConnectionCountByAddress(Ljava/net/InetAddress;)I
    .registers 5

    .line 125
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    .line 126
    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_22
    return v1
.end method

.method public declared-synchronized getConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mConnections:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_c

    .line 151
    iget v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mMaxConnections:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 153
    :cond_c
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .line 164
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected getServerSocket()Ljava/net/ServerSocket;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method protected getServerThread()Ljava/lang/Thread;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mServerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method protected getSocketRunnable()Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketRunnable:Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;

    return-object v0
.end method

.method public getSocketTimeout()I
    .registers 2

    .line 208
    iget v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketTimeout:I

    return v0
.end method

.method public isComponentsReady()Z
    .registers 2

    .line 218
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isInterrupted()Z
    .registers 2

    .line 227
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 228
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isServerAlive()Z
    .registers 2

    .line 237
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 238
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method protected abstract onConnected(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V
.end method

.method public onInternalError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onServerStarted()V
    .registers 1

    return-void
.end method

.method public onServerStopped()V
    .registers 1

    return-void
.end method

.method protected respondRequest(Ljava/net/Socket;)Z
    .registers 5

    .line 250
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mMaxConnections:I

    if-le v0, v1, :cond_11

    if-nez v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    .line 251
    :cond_11
    :goto_11
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    iget v1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketTimeout:I

    invoke-direct {v0, p1, v1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;-><init>(Ljava/net/Socket;I)V

    .line 253
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getConnections()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_1d
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_33

    .line 257
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/CoolSocket/CoolSocket$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/genonbeta/CoolSocket/CoolSocket$2;-><init>(Lcom/genonbeta/CoolSocket/CoolSocket;Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    return p1

    :catchall_33
    move-exception p1

    .line 255
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public setExecutor(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public setMaxConnections(I)V
    .registers 2

    .line 307
    iput p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mMaxConnections:I

    return-void
.end method

.method public setSocketAddress(Ljava/net/SocketAddress;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketAddress:Ljava/net/SocketAddress;

    return-void
.end method

.method public setSocketTimeout(I)V
    .registers 2

    .line 327
    iput p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketTimeout:I

    return-void
.end method

.method public start()Z
    .registers 5

    .line 339
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 341
    :cond_11
    :try_start_11
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mServerSocket:Ljava/net/ServerSocket;

    .line 342
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    iget-object v2, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mSocketAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_21} :catch_78

    .line 349
    :cond_21
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_44

    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Thread$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_44

    .line 354
    :cond_39
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_70

    return v1

    .line 350
    :cond_44
    :goto_44
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getSocketRunnable()Lcom/genonbeta/CoolSocket/CoolSocket$ServerRunnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket;->mServerThread:Ljava/lang/Thread;

    .line 352
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/genonbeta/CoolSocket/CoolSocket;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Main Thread"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 357
    :cond_70
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v2

    :catch_78
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method public startDelayed(I)Z
    .registers 9

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 376
    :cond_4
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->isServerAlive()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    int-to-long v4, p1

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    const/4 p1, 0x0

    return p1

    .line 383
    :cond_16
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->start()Z

    move-result p1

    return p1
.end method

.method public startEnsured(I)Z
    .registers 10

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 399
    invoke-virtual {p0, p1}, Lcom/genonbeta/CoolSocket/CoolSocket;->startDelayed(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    .line 402
    :cond_c
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->isServerAlive()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    int-to-long v6, p1

    cmp-long v2, v4, v6

    if-lez v2, :cond_c

    return v3

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method public stop()Z
    .registers 2

    .line 415
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 418
    :cond_8
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 420
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 422
    :try_start_19
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_25
    :goto_25
    const/4 v0, 0x1

    return v0
.end method
