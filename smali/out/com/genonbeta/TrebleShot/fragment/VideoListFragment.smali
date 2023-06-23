.class public Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;
.super Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment<",
        "Lcom/genonbeta/TrebleShot/adapter/VideoListAdapter$VideoHolder;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/VideoListAdapter;",
        ">;",
        "Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f110252

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/VideoListAdapter;
    .registers 4

    .line 65
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;)V

    .line 108
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$2;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/VideoListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 26
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->setFilteringSupported(Z)V

    const/16 p1, 0x6e

    .line 29
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->setDefaultOrderingCriteria(I)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->setDefaultSortingCriteria(I)V

    const/4 p1, 0x2

    const/4 v0, 0x4

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->setDefaultViewingGridSize(II)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->setUseDefaultPaddingDecoration(Z)V

    return-void
.end method

.method public bridge synthetic onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 19
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 3

    .line 122
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 123
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    goto :goto_13

    .line 124
    :cond_f
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result p1

    :goto_13
    return p1
.end method

.method public onGridSpanSize(II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_8

    .line 132
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->onGridSpanSize(II)I

    move-result p2

    :goto_8
    return p2
.end method

.method public onPause()V
    .registers 3

    .line 56
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->onPause()V

    .line 58
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->getDefaultContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 47
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->getDefaultContentObserver()Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 38
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f070104

    .line 40
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->setEmptyImage(I)V

    const p1, 0x7f1101ce

    .line 41
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    return-void
.end method
