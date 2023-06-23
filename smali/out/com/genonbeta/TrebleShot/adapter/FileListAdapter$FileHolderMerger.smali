.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;
.super Lcom/genonbeta/android/framework/util/listing/ComparableMerger;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileHolderMerger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
        "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;)V
    .registers 3

    .line 614
    invoke-direct {p0}, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;-><init>()V

    .line 615
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolderImpl;

    if-eqz v0, :cond_c

    .line 616
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->STORAGE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    goto :goto_34

    .line 617
    :cond_c
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;

    if-eqz v0, :cond_15

    .line 618
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->PUBLIC_FOLDER:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    goto :goto_34

    .line 619
    :cond_15
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;

    if-eqz v0, :cond_1e

    .line 620
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->FOLDER:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    goto :goto_34

    .line 621
    :cond_1e
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;

    if-eqz v0, :cond_27

    .line 622
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->RECENT_FILE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    goto :goto_34

    .line 623
    :cond_27
    instance-of p1, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ReceivedFileHolder;

    if-eqz p1, :cond_30

    .line 624
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->FILE_PART:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    goto :goto_34

    .line 626
    :cond_30
    sget-object p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->FILE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    :goto_34
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/genonbeta/android/framework/util/listing/ComparableMerger;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
            "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
            ">;)I"
        }
    .end annotation

    .line 644
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;

    if-eqz v0, :cond_1d

    .line 645
    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->getType()Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->ordinal()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->getType()Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->ordinal()I

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

    .line 609
    check-cast p1, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->compareTo(Lcom/genonbeta/android/framework/util/listing/ComparableMerger;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 632
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;

    .line 633
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->getType()Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->getType()Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public getType()Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;
    .registers 2

    .line 638
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;->mType:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    return-object v0
.end method
