.class public abstract Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;
.super Lcom/genonbeta/CoolSocket/CoolTransfer;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Receive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;,
        Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/genonbeta/CoolSocket/CoolTransfer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 342
    invoke-direct {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onTaskPrepareSocket(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;Ljava/net/ServerSocket;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;",
            "Ljava/net/ServerSocket;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;"
        }
    .end annotation
.end method

.method public prepare(Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder<",
            "TT;>;)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive<",
            "TT;>.Handler;"
        }
    .end annotation

    .line 347
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;-><init>(Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;)V

    return-object v0
.end method

.method public receive(Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;Z)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder<",
            "TT;>;Z)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive<",
            "TT;>.Handler;"
        }
    .end annotation

    .line 352
    invoke-virtual {p0, p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->prepare(Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->receive(Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;Z)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;

    move-result-object p1

    return-object p1
.end method

.method public receive(Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;Z)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive<",
            "TT;>.Handler;Z)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive<",
            "TT;>.Handler;"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 358
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->run()V

    goto :goto_d

    .line 360
    :cond_6
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_d
    return-object p1
.end method
