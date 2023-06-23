.class public Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;
.super Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;
.source "TransferListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferFolder"
.end annotation


# instance fields
.field public bytesReceived:J

.field public bytesTotal:J

.field public filesReceived:I

.field public filesTotal:I

.field private mHasIssues:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 733
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;-><init>()V

    const/4 v0, 0x0

    .line 726
    iput v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesTotal:I

    .line 727
    iput v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesReceived:I

    const-wide/16 v1, 0x0

    .line 728
    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesTotal:J

    .line 729
    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesReceived:J

    .line 730
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->mHasIssues:Z

    .line 734
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->groupId:J

    .line 735
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->friendlyName:Ljava/lang/String;

    .line 736
    iput-object p4, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->directory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 804
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->directory:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->directory:Ljava/lang/String;

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->directory:Ljava/lang/String;

    .line 806
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public getFirstText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
    .registers 4

    .line 773
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesTotal:J

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIconRes()I
    .registers 2

    const v0, 0x7f0700cb

    return v0
.end method

.method public getId()J
    .registers 3

    .line 812
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->directory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPercent()D
    .registers 8

    .line 759
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesReceived:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_23

    iget-wide v4, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesTotal:J

    cmp-long v6, v4, v2

    if-gtz v6, :cond_f

    goto :goto_23

    .line 761
    :cond_f
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->bytesTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_25

    :cond_23
    :goto_23
    const-wide/16 v0, 0x0

    :goto_25
    return-wide v0
.end method

.method public getSecondText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
    .registers 5

    .line 779
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesReceived:I

    .line 780
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesTotal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f11023a

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThirdText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
    .registers 4

    .line 786
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getPercentFormat()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->getPercent()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 6

    .line 792
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transfer"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget-wide v3, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->groupId:J

    .line 796
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->directory:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->directory:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "groupId=? AND (directory LIKE ? OR directory = ?)"

    .line 793
    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    return-object v0
.end method

.method public handleStatusIcon(Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V
    .registers 3

    const/16 p2, 0x8

    .line 767
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hasIssues()Z
    .registers 2

    .line 742
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->mHasIssues:Z

    return v0
.end method

.method public isComplete()Z
    .registers 3

    .line 748
    iget v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesTotal:I

    iget v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->filesReceived:I

    if-ne v0, v1, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setHasIssues(Z)V
    .registers 2

    .line 830
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->mHasIssues:Z

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 818
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->setId(J)V

    .line 819
    const-class p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setId(): This method should not be invoked"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
