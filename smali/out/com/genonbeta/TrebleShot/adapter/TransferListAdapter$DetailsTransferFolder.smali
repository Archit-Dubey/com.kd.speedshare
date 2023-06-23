.class public Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;
.super Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;
.source "TransferListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StatusItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailsTransferFolder"
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 838
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .registers 2

    const v0, 0x7f0700d5

    return v0
.end method

.method public getId()J
    .registers 3

    .line 860
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->directory:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->directory:Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$DetailsTransferFolder;->friendlyName:Ljava/lang/String;

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public handleStatusIcon(Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V
    .registers 4

    .line 844
    iget-boolean v0, p2, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    if-eqz v0, :cond_f

    const/4 p2, 0x0

    .line 845
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f070107

    .line 846
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_12

    .line 848
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;->handleStatusIcon(Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V

    :goto_12
    return-void
.end method

.method public isSelectableSelected()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setSelectableSelected(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
