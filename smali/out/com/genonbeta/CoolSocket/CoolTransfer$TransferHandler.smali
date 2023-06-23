.class public abstract Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;
.super Ljava/lang/Object;
.source "CoolTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TransferHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private mParentBuilder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;


# direct methods
.method public constructor <init>(Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;)V"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->PENDING:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->mStatus:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    .line 251
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->mParentBuilder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 2

    .line 258
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getExtra()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .line 268
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .registers 2

    .line 263
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v0

    return-object v0
.end method

.method public getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->mParentBuilder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 278
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getPort()I

    move-result v0

    return v0
.end method

.method public getSkippedBytes()J
    .registers 3

    .line 288
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getSkippedBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/genonbeta/CoolSocket/CoolTransfer$Status;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->mStatus:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    return-object v0
.end method

.method public getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress<",
            "TT;>;"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onRun()V
.end method

.method public run()V
    .registers 2

    .line 334
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->resetCurrentTransferredByte()V

    .line 336
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->RUNNING:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->setStatus(Lcom/genonbeta/CoolSocket/CoolTransfer$Status;)V

    .line 337
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->onRun()V

    .line 338
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->INTERRUPTED:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->setStatus(Lcom/genonbeta/CoolSocket/CoolTransfer$Status;)V

    return-void
.end method

.method public setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V
    .registers 3

    .line 308
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V

    return-void
.end method

.method protected setSocket(Ljava/net/Socket;)V
    .registers 3

    .line 313
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setSocket(Ljava/net/Socket;)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    return-void
.end method

.method public setStatus(Lcom/genonbeta/CoolSocket/CoolTransfer$Status;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->mStatus:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    return-void
.end method

.method public setTransferProgress(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress<",
            "TT;>;)V"
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setTransferProgress(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    return-void
.end method

.method public skipBytes(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;->getParentBuilder()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->skipBytes(J)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    return-void
.end method
