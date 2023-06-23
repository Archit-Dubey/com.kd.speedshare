.class public Lcom/genonbeta/TrebleShot/service/WebShareServer$BoundRunner;
.super Ljava/lang/Object;
.source "WebShareServer.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/WebShareServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundRunner"
.end annotation


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private final running:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfi/iki/elonen/NanoHTTPD$ClientHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$BoundRunner;->running:Ljava/util/List;

    .line 584
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$BoundRunner;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public closeAll()V
    .registers 3

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$BoundRunner;->running:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    .line 592
    invoke-virtual {v1}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->close()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    .registers 3

    .line 599
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$BoundRunner;->running:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public exec(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$BoundRunner;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 606
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$BoundRunner;->running:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
