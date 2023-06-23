.class public abstract Lcom/genonbeta/CoolSocket/CoolTransfer$Send;
.super Lcom/genonbeta/CoolSocket/CoolTransfer;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Send"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;,
        Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;
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

    .line 551
    invoke-direct {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer;-><init>()V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder<",
            "TT;>;)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send<",
            "TT;>.Handler;"
        }
    .end annotation

    .line 554
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;-><init>(Lcom/genonbeta/CoolSocket/CoolTransfer$Send;Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;)V

    return-object v0
.end method

.method public send(Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;Z)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder<",
            "TT;>;Z)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send<",
            "TT;>.Handler;"
        }
    .end annotation

    .line 559
    invoke-virtual {p0, p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->prepare(Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->send(Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;Z)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;

    move-result-object p1

    return-object p1
.end method

.method public send(Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;Z)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send<",
            "TT;>.Handler;Z)",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$Send<",
            "TT;>.Handler;"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 565
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;->run()V

    goto :goto_d

    .line 567
    :cond_6
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_d
    return-object p1
.end method
