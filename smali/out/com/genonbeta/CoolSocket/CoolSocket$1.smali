.class Lcom/genonbeta/CoolSocket/CoolSocket$1;
.super Ljava/lang/Thread;
.source "CoolSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/CoolSocket/CoolSocket;->connect(Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;


# direct methods
.method constructor <init>(Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$1;->val$handler:Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 110
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 111
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$1;->val$handler:Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genonbeta/CoolSocket/CoolSocket;->connect(Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method
