.class public Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;
.super Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;
.source "TransferPathResolverRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field private mHomeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1101ae

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->mHomeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public goTo(Lcom/genonbeta/TrebleShot/object/NetworkDevice;[Ljava/lang/String;)V
    .registers 10

    .line 37
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->initAdapter()V

    .line 42
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    if-eqz p2, :cond_3f

    .line 44
    :try_start_11
    array-length v1, p2

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_3f

    aget-object v3, p2, v2

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_3c

    .line 48
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_29

    .line 49
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_29
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 55
    :cond_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_41

    goto :goto_45

    :goto_44
    throw p1

    :goto_45
    goto :goto_44
.end method

.method public onFirstItem()Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 29
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    const v3, 0x7f0700b7

    invoke-direct {v0, v2, v3, v1}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0

    .line 32
    :cond_12
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferPathResolverRecyclerAdapter;->mHomeName:Ljava/lang/String;

    const v3, 0x7f0700d4

    invoke-direct {v0, v2, v3, v1}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method
