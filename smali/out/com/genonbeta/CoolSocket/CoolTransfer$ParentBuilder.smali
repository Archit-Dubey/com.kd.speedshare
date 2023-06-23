.class public Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
.super Ljava/lang/Object;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParentBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBuffer:[B

.field private mExtra:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mFileSize:J

.field private mFlag:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

.field private mPort:I

.field private mProgress:Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSkippedBytes:J

.field private mSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mFlag:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mBuffer:[B

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mExtra:Ljava/lang/Object;

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .line 148
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mFileSize:J

    return-wide v0
.end method

.method public getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mFlag:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mPort:I

    return v0
.end method

.method public getSkippedBytes()J
    .registers 3

    .line 168
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mSkippedBytes:J

    return-wide v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mSocket:Ljava/net/Socket;

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

    .line 173
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mProgress:Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    if-nez v0, :cond_c

    .line 174
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    invoke-direct {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;-><init>()V

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setTransferProgress(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 176
    :cond_c
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mProgress:Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    return-object v0
.end method

.method public reset()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mPort:I

    const-wide/16 v0, 0x0

    .line 182
    iput-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mFileSize:J

    .line 183
    iput-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mSkippedBytes:J

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mBuffer:[B

    .line 185
    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mSocket:Ljava/net/Socket;

    .line 186
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->resetCurrentTransferredByte()V

    return-object p0
.end method

.method public setBuffer([B)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mBuffer:[B

    return-object p0
.end method

.method public setExtra(Ljava/lang/Object;)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mExtra:Ljava/lang/Object;

    return-object p0
.end method

.method public setFileSize(J)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 199
    iput-wide p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mFileSize:J

    return-object p0
.end method

.method public setFlag(Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mFlag:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-void
.end method

.method public setPort(I)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 210
    iput p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mPort:I

    return-object p0
.end method

.method public setSkippedBytes(J)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 216
    iput-wide p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mSkippedBytes:J

    return-object p0
.end method

.method public setSocket(Ljava/net/Socket;)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mSocket:Ljava/net/Socket;

    return-object p0
.end method

.method public setTransferProgress(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress<",
            "TT;>;)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->mProgress:Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    return-object p0
.end method

.method public skipBytes(J)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getSkippedBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    .line 235
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getSkippedBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->decrementTransferredByte(J)J

    .line 237
    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setSkippedBytes(J)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->incrementTransferredByte(J)J

    return-object p0
.end method
