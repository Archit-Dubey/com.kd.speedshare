.class public Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;
.super Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;
.source "TransferListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StatusItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageStatusItem"
.end annotation


# instance fields
.field public bytesFree:J

.field public bytesRequired:J

.field public bytesTotal:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 876
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;-><init>()V

    const-wide/16 v0, 0x0

    .line 878
    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesTotal:J

    .line 879
    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesFree:J

    .line 880
    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesRequired:J

    return-void
.end method


# virtual methods
.method public getFirstText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
    .registers 7

    .line 929
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesFree:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    .line 930
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110244

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_14
    const/4 p1, 0x0

    .line 931
    invoke-static {v0, v1, p1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object p1

    :goto_19
    return-object p1
.end method

.method public getIconRes()I
    .registers 2

    const v0, 0x7f0700f5

    return v0
.end method

.method public getId()J
    .registers 3

    .line 909
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->directory:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->directory:Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->friendlyName:Ljava/lang/String;

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPercent()D
    .registers 8

    .line 915
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesTotal:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_24

    iget-wide v4, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesFree:J

    cmp-long v6, v4, v2

    if-gtz v6, :cond_f

    goto :goto_24

    :cond_f
    sub-long/2addr v0, v4

    .line 917
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_26

    :cond_24
    :goto_24
    const-wide/16 v0, 0x0

    :goto_26
    return-wide v0
.end method

.method public getSecondText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
    .registers 3

    .line 937
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11020e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThirdText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
    .registers 4

    .line 943
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getPercentFormat()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->getPercent()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleStatusIcon(Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V
    .registers 3

    const/16 p2, 0x8

    .line 923
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hasIssues()Z
    .registers 6

    .line 885
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesFree:J

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesRequired:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isComplete()Z
    .registers 6

    .line 891
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->bytesFree:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->hasIssues()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public isSelectableSelected()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setSelectableSelected(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
