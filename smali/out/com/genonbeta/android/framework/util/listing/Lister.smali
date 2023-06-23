.class public Lcom/genonbeta/android/framework/util/listing/Lister;
.super Ljava/lang/Object;
.source "Lister.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/genonbeta/android/framework/util/listing/Merger<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/framework/util/listing/Lister;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/genonbeta/android/framework/util/listing/Lister;->mList:Ljava/util/List;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;Lcom/genonbeta/android/framework/util/listing/Merger;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/listing/Lister;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 28
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/listing/Lister;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 30
    :cond_13
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/listing/Lister;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/android/framework/util/listing/Merger;

    .line 32
    :goto_1d
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/util/listing/Merger;->getBelongings()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
