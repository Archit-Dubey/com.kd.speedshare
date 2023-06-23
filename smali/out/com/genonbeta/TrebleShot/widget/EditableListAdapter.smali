.class public abstract Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;
.super Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;
.source "EditableListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;
.implements Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/TrebleShot/object/Editable;",
        "V:",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        ">",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter<",
        "TT;TV;>;",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl<",
        "TT;>;",
        "Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;"
    }
.end annotation


# static fields
.field public static final MODE_SORT_BY_DATE:I = 0x6e

.field public static final MODE_SORT_BY_NAME:I = 0x64

.field public static final MODE_SORT_BY_SIZE:I = 0x78

.field public static final MODE_SORT_ORDER_ASCENDING:I = 0x64

.field public static final MODE_SORT_ORDER_DESCENDING:I = 0x6e

.field public static final VIEW_TYPE_DEFAULT:I


# instance fields
.field private mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mGeneratedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mGridLayoutRequested:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSortingCriteria:I

.field private mSortingOrderAscending:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mItemList:Ljava/util/List;

    const/16 p1, 0x64

    .line 45
    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mSortingCriteria:I

    .line 46
    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mSortingOrderAscending:I

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mGridLayoutRequested:Z

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public compareItems(IILcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;TT;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public filterItem(Lcom/genonbeta/TrebleShot/object/Editable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getFilteringDelegate()Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$FilteringDelegate;->getFilteringKeyword(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 78
    array-length v1, v0

    if-lez v1, :cond_1e

    .line 80
    invoke-interface {p1, v0}, Lcom/genonbeta/TrebleShot/object/Editable;->applyFilter([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    :goto_1f
    return p1
.end method

.method public getCount()I
    .registers 2

    .line 86
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDefaultComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mGeneratedComparator:Ljava/util/Comparator;

    if-nez v0, :cond_b

    .line 92
    new-instance v0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;-><init>(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mGeneratedComparator:Ljava/util/Comparator;

    .line 136
    :cond_b
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mGeneratedComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    return-object v0
.end method

.method public getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/NotReadyException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_13

    if-ltz p1, :cond_13

    .line 160
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/Editable;

    return-object p1

    .line 158
    :cond_13
    new-instance v0, Lcom/genonbeta/TrebleShot/exception/NotReadyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The list does not contain  this index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/NotReadyException;
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 152
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 172
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/object/Editable;->getId()J

    move-result-wide v0
    :try_end_8
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    move-exception p1

    .line 174
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;->printStackTrace()V

    .line 178
    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSectionName(ILcom/genonbeta/TrebleShot/object/Editable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSortingCriteria()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_28

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x78

    if-eq v0, v1, :cond_15

    .line 222
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 219
    :cond_15
    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/object/Editable;->getComparableSize()J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 217
    :cond_1f
    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/object/Editable;->getComparableDate()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSectionNameDate(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 215
    :cond_28
    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/object/Editable;->getComparableName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSectionNameTrimmedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSectionNameDate(J)Ljava/lang/String;
    .registers 5

    .line 227
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSectionNameTrimmedText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 232
    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/TextUtils;->trimText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .registers 3

    .line 202
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSectionName(ILcom/genonbeta/TrebleShot/object/Editable;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 204
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;->printStackTrace()V

    .line 207
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11018d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSortingCriteria()I
    .registers 2

    .line 242
    iget v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mSortingCriteria:I

    return v0
.end method

.method public getSortingCriteria(Lcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSortingCriteria()I

    move-result p1

    return p1
.end method

.method public getSortingOrder()I
    .registers 2

    .line 252
    iget v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mSortingOrderAscending:I

    return v0
.end method

.method public getSortingOrder(Lcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSortingOrder()I

    move-result p1

    return p1
.end method

.method public isGridLayoutRequested()Z
    .registers 2

    .line 262
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mGridLayoutRequested:Z

    return v0
.end method

.method public isGridSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public notifyAllSelectionChanges()V
    .registers 1

    .line 267
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->syncSelectionList()V

    .line 268
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyGridSizeUpdate(IZ)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p2, :cond_5

    if-gt p1, v0, :cond_a

    :cond_5
    const/4 p2, 0x2

    if-le p1, p2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 273
    :cond_a
    :goto_a
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mGridLayoutRequested:Z

    return v0
.end method

.method public onUpdate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 60
    :try_start_5
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 61
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->syncSelectionList(Ljava/util/List;)V

    .line 64
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setFragment(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    return-void
.end method

.method public setSortingCriteria(II)V
    .registers 3

    .line 279
    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mSortingCriteria:I

    .line 280
    iput p2, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mSortingOrderAscending:I

    return-void
.end method

.method public declared-synchronized syncSelectionList()V
    .registers 3

    monitor-enter p0

    .line 285
    :try_start_1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13

    .line 286
    :try_start_6
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->syncSelectionList(Ljava/util/List;)V

    .line 287
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_10

    .line 288
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v1

    .line 287
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized syncSelectionList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 292
    :try_start_1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_32

    .line 295
    :cond_12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/object/Editable;

    .line 296
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->mFragment:Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    invoke-interface {v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->isSelected(Lcom/genonbeta/android/framework/object/Selectable;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/genonbeta/TrebleShot/object/Editable;->setSelectableSelected(Z)Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_34

    goto :goto_16

    .line 297
    :cond_30
    monitor-exit p0

    return-void

    .line 293
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0

    goto :goto_38

    :goto_37
    throw p1

    :goto_38
    goto :goto_37
.end method
