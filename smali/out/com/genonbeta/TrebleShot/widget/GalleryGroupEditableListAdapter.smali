.class public abstract Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.source "GalleryGroupEditableListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;",
        "V:",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        ">",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter<",
        "TT;TV;>;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final MODE_GROUP_BY_ALBUM:I = 0x6f


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public createLister(Ljava/util/List;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->createLister(Ljava/util/List;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->setCustomLister(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSectionName(ILcom/genonbeta/TrebleShot/object/Editable;)Ljava/lang/String;
    .registers 3

    .line 16
    check-cast p2, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter;->getSectionName(ILcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSectionName(ILcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;->isGroupRepresentative()Z

    move-result v0

    if-nez v0, :cond_11

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter;->getGroupBy()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_11

    .line 51
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;->albumName:Ljava/lang/String;

    return-object p1

    .line 53
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getSectionName(ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSectionName(ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Ljava/lang/String;
    .registers 3

    .line 16
    check-cast p2, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter;->getSectionName(ILcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "TT;>;ITT;)Z"
        }
    .end annotation

    const/16 v0, 0x6f

    if-ne p2, v0, :cond_10

    .line 31
    new-instance p2, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;

    iget-object v0, p3, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;->albumName:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offer(Ljava/lang/Object;Lcom/genonbeta/android/framework/util/listing/Merger;)V

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z
    .registers 4

    .line 16
    check-cast p3, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter;->onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;)Z

    move-result p1

    return p1
.end method
