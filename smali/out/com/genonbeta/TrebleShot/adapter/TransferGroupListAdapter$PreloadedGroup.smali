.class public Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;
.super Lcom/genonbeta/TrebleShot/object/TransferGroup;
.source "TransferGroupListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreloadedGroup"
.end annotation


# instance fields
.field public assignees:Ljava/lang/String;

.field public index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

.field public isRunning:Z

.field public representativeText:Ljava/lang/String;

.field public totalBytes:J

.field public totalBytesCompleted:J

.field public totalCount:I

.field public totalCountCompleted:I

.field public totalPercent:D

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 225
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>()V

    .line 214
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 229
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>()V

    .line 214
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->index:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    const/16 v0, 0x64

    .line 230
    iput v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->viewType:I

    .line 231
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->representativeText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applyFilter([Ljava/lang/String;)Z
    .registers 7

    .line 237
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_1c

    aget-object v3, p1, v2

    .line 238
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->assignees:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1c
    return v1
.end method

.method public comparisonSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getComparableDate()J
    .registers 3

    .line 259
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->dateCreated:J

    return-wide v0
.end method

.method public getComparableName()Ljava/lang/String;
    .registers 2

    .line 253
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->getSelectableTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComparableSize()J
    .registers 3

    .line 265
    iget v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .line 271
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->groupId:J

    return-wide v0
.end method

.method public getRepresentativeText()Ljava/lang/String;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->representativeText:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectableTitle()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 283
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->assignees:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v3, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalBytes:J

    invoke-static {v3, v4, v2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()I
    .registers 2

    .line 295
    iget v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->viewType:I

    return v0
.end method

.method public isGroupRepresentative()Z
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->representativeText:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setDate(J)V
    .registers 3

    .line 319
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->dateCreated:J

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 277
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->groupId:J

    return-void
.end method

.method public setRepresentativeText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 307
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->representativeText:Ljava/lang/String;

    return-void
.end method

.method public setSelectableSelected(Z)Z
    .registers 3

    .line 325
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->isGroupRepresentative()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/object/TransferGroup;->setSelectableSelected(Z)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public setSize(J)V
    .registers 3

    .line 331
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->totalCount:I

    return-void
.end method
