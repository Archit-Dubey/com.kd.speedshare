.class Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/RequestFutureTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Waiter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method notifyAll(Ljava/lang/Object;)V
    .registers 2

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method waitForTimeout(Ljava/lang/Object;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 277
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V

    return-void
.end method
