.class public Lcom/genonbeta/CoolSocket/CoolSocket$Client;
.super Ljava/lang/Object;
.source "CoolSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;
    }
.end annotation


# instance fields
.field private mReturn:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;I)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-direct {v0, p2}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;-><init>(I)V

    .line 804
    invoke-virtual {v0, p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->connect(Ljava/net/SocketAddress;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Ljava/net/SocketAddress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    invoke-virtual {p1, p2}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->connect(Ljava/net/SocketAddress;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    return-void
.end method

.method public getReturn()Ljava/lang/Object;
    .registers 2

    .line 826
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$Client;->mReturn:Ljava/lang/Object;

    return-object v0
.end method

.method public setReturn(Ljava/lang/Object;)V
    .registers 2

    .line 836
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$Client;->mReturn:Ljava/lang/Object;

    return-void
.end method
