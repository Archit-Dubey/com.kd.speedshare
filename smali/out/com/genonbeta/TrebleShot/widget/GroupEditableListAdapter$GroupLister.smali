.class public Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;
.super Lcom/genonbeta/android/framework/util/listing/Lister;
.source "GroupEditableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupLister"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;",
        ">",
        "Lcom/genonbeta/android/framework/util/listing/Lister<",
        "TT;",
        "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private mCustomLister:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mNoGroupingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Lcom/genonbeta/android/framework/util/listing/Lister;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->mNoGroupingList:Ljava/util/List;

    .line 299
    iput p2, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->mMode:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister<",
            "TT;>;)V"
        }
    .end annotation

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;-><init>(Ljava/util/List;I)V

    .line 305
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->mCustomLister:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;

    return-void
.end method


# virtual methods
.method public offer(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 316
    iget v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->mMode:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_13

    .line 317
    new-instance v0, Lcom/genonbeta/android/framework/util/date/DateMerger;

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->getComparableDate()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/android/framework/util/date/DateMerger;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offer(Ljava/lang/Object;Lcom/genonbeta/android/framework/util/listing/Merger;)V

    goto :goto_26

    :cond_13
    const/16 v1, 0x64

    if-eq v0, v1, :cond_21

    .line 318
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->mCustomLister:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;

    if-eqz v1, :cond_21

    .line 320
    invoke-interface {v1, p0, v0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;->onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 321
    :cond_21
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->mNoGroupingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_26
    return-void
.end method

.method public offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 310
    invoke-interface {p1, p2}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->filterItem(Lcom/genonbeta/TrebleShot/object/Editable;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 311
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offer(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    :cond_9
    return-void
.end method

.method public setCustomLister(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister<",
            "TT;>;)",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "TT;>;"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->mCustomLister:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;

    return-object p0
.end method
