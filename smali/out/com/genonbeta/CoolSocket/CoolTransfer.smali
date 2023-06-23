.class public abstract Lcom/genonbeta/CoolSocket/CoolTransfer;
.super Ljava/lang/Object;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;,
        Lcom/genonbeta/CoolSocket/CoolTransfer$Send;,
        Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;,
        Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;,
        Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;,
        Lcom/genonbeta/CoolSocket/CoolTransfer$Status;,
        Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DELAY_DISABLED:I = -0x1


# instance fields
.field private mBlockingObject:Ljava/lang/Object;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNotifyDelay:I

.field private final mProcess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mProcess:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mNotifyDelay:I

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mBlockingObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected addProcess(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer;->getProcessList()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 54
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer;->getProcessList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer;->getProcessList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer;->onProcessListChanged(Ljava/util/ArrayList;Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Z)V

    .line 56
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public getBlockingObject()Ljava/lang/Object;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mBlockingObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_c

    const/16 v0, 0xa

    .line 67
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 69
    :cond_c
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getNotifyDelay()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mNotifyDelay:I

    return v0
.end method

.method public getProcessList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mProcess:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract onDestroy(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onError(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/lang/Exception;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;"
        }
    .end annotation
.end method

.method public abstract onNotify(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public abstract onPrepare(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;"
        }
    .end annotation
.end method

.method public onPrepareNext(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onProcessListChanged(Ljava/util/ArrayList;Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;>;",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public abstract onTaskEnd(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public onTaskOrientateStreams(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;"
        }
    .end annotation

    .line 44
    sget-object p1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p1
.end method

.method public abstract onTaskPrepareSocket(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;"
        }
    .end annotation
.end method

.method protected removeProcess(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer;->getProcessList()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 100
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer;->getProcessList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer;->getProcessList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer;->onProcessListChanged(Ljava/util/ArrayList;Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Z)V

    .line 102
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public setBlockingObject(Ljava/lang/Object;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mBlockingObject:Ljava/lang/Object;

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public setNotifyDelay(I)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer;->mNotifyDelay:I

    return-void
.end method
