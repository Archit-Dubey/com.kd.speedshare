.class public abstract Lcom/genonbeta/TrebleShot/util/CommunicationBridge;
.super Ljava/lang/Object;
.source "CommunicationBridge.java"

# interfaces
.implements Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;,
        Lcom/genonbeta/TrebleShot/util/CommunicationBridge$DifferentClientException;,
        Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;
    .registers 3

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0, p1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge;->connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;ZLcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    move-result-object p0

    return-object p0
.end method

.method public static connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;ZLcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;
    .registers 4

    .line 44
    new-instance v0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;-><init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;)V

    if-eqz p1, :cond_b

    .line 47
    invoke-interface {p2, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;->onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V

    goto :goto_13

    .line 49
    :cond_b
    new-instance p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$1;

    invoke-direct {p0, p2, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$1;-><init>(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V

    .line 57
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$1;->start()V

    :goto_13
    return-object v0
.end method

.method public static connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/Class;Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/genonbeta/TrebleShot/database/AccessDatabase;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 35
    invoke-static {p0, v0, p2}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge;->connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;ZLcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->getReturn()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_16

    if-eqz p1, :cond_16

    .line 38
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->getReturn()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method
