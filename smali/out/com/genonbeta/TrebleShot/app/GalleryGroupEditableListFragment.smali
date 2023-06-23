.class public abstract Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;
.super Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;
.source "GalleryGroupEditableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;",
        "V:",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        "E:",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter<",
        "TT;TV;>;>",
        "Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment<",
        "TT;TV;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x6e

    .line 24
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->setDefaultGroupingCriteria(I)V

    return-void
.end method

.method public onGroupingOptions(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onGroupingOptions(Ljava/util/Map;)V

    const v0, 0x7f1101ac

    .line 32
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1101aa

    .line 33
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1101a8

    .line 34
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
