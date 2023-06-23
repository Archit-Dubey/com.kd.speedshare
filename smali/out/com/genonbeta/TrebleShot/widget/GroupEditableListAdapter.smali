.class public abstract Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;
.source "GroupEditableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;,
        Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;,
        Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;,
        Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;",
        "V:",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        ">",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter<",
        "TT;TV;>;"
    }
.end annotation


# static fields
.field public static final MODE_GROUP_BY_DATE:I = 0x6e

.field public static final MODE_GROUP_BY_NOTHING:I = 0x64

.field public static final VIEW_TYPE_ACTION_BUTTON:I = 0x6e

.field public static final VIEW_TYPE_REPRESENTATIVE:I = 0x64


# instance fields
.field private mGroupBy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;-><init>(Landroid/content/Context;)V

    .line 43
    iput p2, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->mGroupBy:I

    return-void
.end method


# virtual methods
.method public createLister(Ljava/util/List;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "TT;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;

    invoke-direct {v0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public getGroupBy()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->mGroupBy:I

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->getViewType()I

    move-result p1
    :try_end_a
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    :catch_b
    move-exception p1

    .line 110
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getRepresentativeText(Lcom/genonbeta/android/framework/util/listing/Merger;)Ljava/lang/String;
    .registers 4

    .line 117
    instance-of v0, p1, Lcom/genonbeta/android/framework/util/date/DateMerger;

    if-eqz v0, :cond_13

    .line 118
    check-cast p1, Lcom/genonbeta/android/framework/util/date/DateMerger;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getSectionNameDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :cond_13
    instance-of v0, p1, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;

    if-eqz v0, :cond_1e

    .line 120
    check-cast p1, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;->getString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSectionName(ILcom/genonbeta/TrebleShot/object/Editable;)Ljava/lang/String;
    .registers 3

    .line 29
    check-cast p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getSectionName(ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSectionName(ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 129
    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->isGroupRepresentative()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 130
    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->getRepresentativeText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 132
    :cond_b
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getGroupBy()I

    move-result v0

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_18

    .line 136
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSectionName(ILcom/genonbeta/TrebleShot/object/Editable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 134
    :cond_18
    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->getComparableDate()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getSectionNameDate(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public onLoad()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getGroupBy()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->createLister(Ljava/util/List;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;

    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->onLoad(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;)V

    .line 58
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_86

    .line 59
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->getList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$1;

    invoke-direct {v3, p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$1;-><init>(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;

    .line 69
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;->getBelongings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getDefaultComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getRepresentativeText(Lcom/genonbeta/android/framework/util/listing/Merger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;

    move-result-object v3

    .line 72
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;->getBelongings()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;

    if-eqz v3, :cond_5d

    .line 75
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_5d
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;->getBelongings()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v3, v5, v6}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->setSize(J)V

    .line 78
    invoke-interface {v4}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->getComparableDate()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->setDate(J)V

    .line 79
    invoke-interface {v3}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->getRepresentativeText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->setId(J)V

    .line 81
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;->getBelongings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2e

    .line 84
    :cond_86
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getDefaultComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8d
    return-object v0
.end method

.method protected abstract onLoad(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public setGroupBy(I)V
    .registers 2

    .line 101
    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->mGroupBy:I

    return-void
.end method
