.class Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;
.super Ljava/lang/Object;
.source "EditableListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getDefaultComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;->this$0:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;->this$0:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSortingOrder(Lcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_12

    move-object v3, p1

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    if-eqz v0, :cond_17

    move-object v0, p2

    goto :goto_18

    :cond_17
    move-object v0, p1

    .line 114
    :goto_18
    invoke-interface {v3}, Lcom/genonbeta/TrebleShot/object/Editable;->comparisonSupported()Z

    move-result v4

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/object/Editable;->comparisonSupported()Z

    move-result v5

    if-ne v4, v5, :cond_29

    .line 115
    invoke-interface {v3}, Lcom/genonbeta/TrebleShot/object/Editable;->comparisonSupported()Z

    move-result v4

    if-nez v4, :cond_29

    return v2

    .line 117
    :cond_29
    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/object/Editable;->comparisonSupported()Z

    move-result v4

    if-nez v4, :cond_30

    return v2

    .line 119
    :cond_30
    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/object/Editable;->comparisonSupported()Z

    move-result v2

    if-nez v2, :cond_38

    const/4 p1, -0x1

    return p1

    .line 123
    :cond_38
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;->this$0:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSortingCriteria(Lcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I

    move-result p1

    if-eq p1, v1, :cond_73

    const/16 p2, 0x6e

    if-eq p1, p2, :cond_66

    const/16 p2, 0x78

    if-eq p1, p2, :cond_59

    .line 131
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;->this$0:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSortingCriteria()I

    move-result p2

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;->this$0:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getSortingOrder()I

    move-result v1

    invoke-virtual {p1, p2, v1, v3, v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->compareItems(IILcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I

    move-result p1

    return p1

    .line 127
    :cond_59
    invoke-interface {v3}, Lcom/genonbeta/TrebleShot/object/Editable;->getComparableSize()J

    move-result-wide p1

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/object/Editable;->getComparableSize()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/genonbeta/android/framework/util/MathUtils;->compare(JJ)I

    move-result p1

    return p1

    .line 125
    :cond_66
    invoke-interface {v3}, Lcom/genonbeta/TrebleShot/object/Editable;->getComparableDate()J

    move-result-wide p1

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/object/Editable;->getComparableDate()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/genonbeta/android/framework/util/MathUtils;->compare(JJ)I

    move-result p1

    return p1

    .line 129
    :cond_73
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;->getCollator()Ljava/text/Collator;

    move-result-object p1

    invoke-interface {v3}, Lcom/genonbeta/TrebleShot/object/Editable;->getComparableName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/object/Editable;->getComparableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 93
    check-cast p1, Lcom/genonbeta/TrebleShot/object/Editable;

    check-cast p2, Lcom/genonbeta/TrebleShot/object/Editable;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;->compare(Lcom/genonbeta/TrebleShot/object/Editable;Lcom/genonbeta/TrebleShot/object/Editable;)I

    move-result p1

    return p1
.end method

.method public getCollator()Ljava/text/Collator;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;->mCollator:Ljava/text/Collator;

    if-nez v0, :cond_e

    .line 99
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x2

    .line 100
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 103
    :cond_e
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$1;->mCollator:Ljava/text/Collator;

    return-object v0
.end method
