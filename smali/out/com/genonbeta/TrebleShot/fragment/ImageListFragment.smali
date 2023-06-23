.class public Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;
.super Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;
.source "ImageListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment<",
        "Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;",
        ">;",
        "Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f1101ee

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;
    .registers 4

    .line 69
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;)V

    .line 111
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$2;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 30
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->setFilteringSupported(Z)V

    const/16 p1, 0x6e

    .line 33
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->setDefaultOrderingCriteria(I)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->setDefaultSortingCriteria(I)V

    const/4 p1, 0x2

    const/4 v0, 0x4

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->setDefaultViewingGridSize(II)V

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->setUseDefaultPaddingDecoration(Z)V

    return-void
.end method

.method public bridge synthetic onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 23
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 3

    .line 125
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 126
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    goto :goto_13

    .line 127
    :cond_f
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result p1

    :goto_13
    return p1
.end method

.method public onPause()V
    .registers 3

    .line 60
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->onPause()V

    .line 62
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->getDefaultContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 51
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->onResume()V

    .line 53
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 54
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->getDefaultContentObserver()Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 42
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GalleryGroupEditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0700ea

    .line 44
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->setEmptyImage(I)V

    const p1, 0x7f1101c9

    .line 45
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    return-void
.end method
