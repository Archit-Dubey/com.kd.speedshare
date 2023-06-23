.class public Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;
.super Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;
.source "TransferListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericTransferItem"
.end annotation


# instance fields
.field private mDeviceName:Ljava/lang/String;

.field private mFile:Lcom/genonbeta/android/framework/io/DocumentFile;

.field private mSupportThumbnail:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 611
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 615
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;-><init>()V

    const/16 v0, 0x64

    .line 616
    iput v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->viewType:I

    .line 617
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->setRepresentativeText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public applyFilter([Ljava/lang/String;)Z
    .registers 8

    .line 623
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->applyFilter([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 626
    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_23

    aget-object v4, p1, v3

    .line 627
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->fileMimeType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    return v1

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_23
    return v2
.end method

.method public getFirstText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
    .registers 4

    .line 675
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->fileSize:J

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIconRes()I
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->fileMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->loadMimeIcon(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPercent()D
    .registers 6

    .line 655
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 658
    :cond_d
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3a

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->getBytesValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    goto :goto_3a

    :cond_20
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 660
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->getBytesValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_3c

    :cond_3a
    :goto_3a
    const-wide/16 v0, 0x0

    :goto_3c
    return-wide v0
.end method

.method public getSecondText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
    .registers 3

    .line 681
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110244

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method public getThirdText(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;)Ljava/lang/String;
    .registers 3

    .line 688
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getPercentFormat()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getTransactionFlagString(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Ljava/text/NumberFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleStatusIcon(Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V
    .registers 4

    const/4 p2, 0x0

    .line 666
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 667
    sget-object p2, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {p2, v0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const p2, 0x7f0700a0

    goto :goto_15

    :cond_12
    const p2, 0x7f0700a1

    :goto_15
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public hasIssues()Z
    .registers 3

    .line 636
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->REMOVED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 637
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public isComplete()Z
    .registers 3

    .line 643
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;)Z
    .registers 4

    .line 694
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->mFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->mSupportThumbnail:Z

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 695
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->mFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 696
    invoke-virtual {v1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/net/Uri;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    .line 697
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->getIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/GlideRequest;->error(I)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    const/16 v1, 0xa0

    .line 698
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/GlideRequest;->override(I)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->centerCrop()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    .line 700
    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const/4 p1, 0x1

    return p1

    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .registers 2

    .line 710
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setFile(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 2

    .line 715
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->mFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    return-void
.end method

.method public setSupportThumbnail(Z)V
    .registers 2

    .line 720
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GenericTransferItem;->mSupportThumbnail:Z

    return-void
.end method
