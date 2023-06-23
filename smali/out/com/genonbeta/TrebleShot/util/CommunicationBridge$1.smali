.class final Lcom/genonbeta/TrebleShot/util/CommunicationBridge$1;
.super Ljava/lang/Thread;
.source "CommunicationBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/CommunicationBridge;->connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;ZLcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clientInstance:Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

.field final synthetic val$handler:Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V
    .registers 3

    .line 50
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$1;->val$handler:Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$1;->val$clientInstance:Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 54
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 55
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$1;->val$handler:Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$1;->val$clientInstance:Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    invoke-interface {v0, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;->onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V

    return-void
.end method
