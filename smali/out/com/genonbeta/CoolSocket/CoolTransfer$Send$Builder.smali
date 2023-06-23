.class public Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;
.super Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer$Send;
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
.field private mInputStream:Ljava/io/InputStream;

.field private mServerIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 572
    invoke-direct {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getServerIp()Ljava/lang/String;
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->mServerIp:Ljava/lang/String;

    return-object v0
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

    .line 590
    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->mInputStream:Ljava/io/InputStream;

    .line 591
    iput-object v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->mServerIp:Ljava/lang/String;

    .line 592
    invoke-super {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->reset()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setInputStream(Ljava/io/File;)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 603
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->setInputStream(Ljava/io/InputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInputStream(Ljava/io/InputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public setServerIp(Ljava/lang/String;)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 608
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->mServerIp:Ljava/lang/String;

    return-object p0
.end method
