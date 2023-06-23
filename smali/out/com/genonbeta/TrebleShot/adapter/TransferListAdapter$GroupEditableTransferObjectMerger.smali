.class public Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;
.super Lcom/genonbeta/android/framework/util/listing/ComparableMerger;
.source "TransferListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupEditableTransferObjectMerger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
        "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;)V
    .registers 3

    .line 964
    invoke-direct {p0}, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;-><init>()V

    .line 965
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StatusItem;

    if-eqz v0, :cond_c

    .line 966
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->STATUS:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    goto :goto_33

    .line 967
    :cond_c
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;

    if-eqz v0, :cond_15

    .line 968
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FOLDER:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    goto :goto_33

    .line 970
    :cond_15
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->hasIssues()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 971
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FILE_ERROR:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    goto :goto_33

    .line 972
    :cond_20
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 973
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FILE_ONGOING:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    goto :goto_33

    .line 975
    :cond_2f
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FILE:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    :goto_33
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/genonbeta/android/framework/util/listing/ComparableMerger;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
            "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
            ">;)I"
        }
    .end annotation

    .line 994
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;

    if-eqz v0, :cond_1d

    .line 995
    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->getType()Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->ordinal()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->getType()Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->ordinal()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/genonbeta/android/framework/util/MathUtils;->compare(JJ)I

    move-result p1

    return p1

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 959
    check-cast p1, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->compareTo(Lcom/genonbeta/android/framework/util/listing/ComparableMerger;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 982
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;

    .line 983
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->getType()Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->getType()Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public getType()Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;
    .registers 2

    .line 988
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    return-object v0
.end method
