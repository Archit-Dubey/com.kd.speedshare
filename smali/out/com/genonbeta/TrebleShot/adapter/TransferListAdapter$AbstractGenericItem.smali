.class public abstract Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;
.super Lcom/genonbeta/TrebleShot/object/TransferObject;
.source "TransferListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractGenericItem"
.end annotation


# instance fields
.field public representativeText:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 517
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 521
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>()V

    const/16 v0, 0x64

    .line 522
    iput v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->viewType:I

    .line 523
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->setRepresentativeText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public applyFilter([Ljava/lang/String;)Z
    .registers 7

    .line 529
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_20

    aget-object v3, p1, v2

    .line 530
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->friendlyName:Ljava/lang/String;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->friendlyName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_20
    return v1
.end method

.method public abstract getFirstText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
.end method

.method public abstract getIconRes()I
.end method

.method public abstract getPercent()D
.end method

.method public getRepresentativeText()Ljava/lang/String;
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->representativeText:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSecondText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
.end method

.method public abstract getThirdText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
.end method

.method public getViewType()I
    .registers 2

    .line 564
    iget v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->viewType:I

    return v0
.end method

.method public abstract handleStatusIcon(Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V
.end method

.method public abstract hasIssues()Z
.end method

.method public abstract isComplete()Z
.end method

.method public isGroupRepresentative()Z
    .registers 3

    .line 582
    iget v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->viewType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;)Z
.end method

.method public setDate(J)V
    .registers 3

    return-void
.end method

.method public setRepresentativeText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 576
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->representativeText:Ljava/lang/String;

    return-void
.end method

.method public setSelectableSelected(Z)Z
    .registers 3

    .line 594
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->isGroupRepresentative()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/object/TransferObject;->setSelectableSelected(Z)Z

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

    .line 600
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->fileSize:J

    return-void
.end method
