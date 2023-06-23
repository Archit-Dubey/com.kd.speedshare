.class public Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;
.super Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer$Receive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mOutputStream:Ljava/io/OutputStream;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 365
    invoke-direct {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;-><init>()V

    const/4 v0, -0x1

    .line 367
    iput v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->mTimeout:I

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getServerSocket()Ljava/net/ServerSocket;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->mServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public getTimeout()I
    .registers 2

    .line 383
    iget v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->mTimeout:I

    return v0
.end method

.method public reset()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->mOutputStream:Ljava/io/OutputStream;

    .line 390
    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v0, -0x1

    .line 391
    iput v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->mTimeout:I

    .line 392
    invoke-super {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->reset()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setOutputStream(Ljava/io/File;)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->setOutputStream(Ljava/io/OutputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOutputStream(Ljava/io/OutputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->mOutputStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method public setServerSocket(Ljava/net/ServerSocket;)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/ServerSocket;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->mServerSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method public setTimeout(I)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 414
    iput p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->mTimeout:I

    return-object p0
.end method
