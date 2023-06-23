.class public Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;
.super Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;
.source "MusicListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment<",
        "Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;",
        ">;",
        "Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f1101da

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;
    .registers 4

    .line 78
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;)V

    .line 110
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$2;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->setFilteringSupported(Z)V

    const/16 p1, 0x65

    .line 32
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->setDefaultGroupingCriteria(I)V

    return-void
.end method

.method public bridge synthetic onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 22
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 3

    .line 124
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 125
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    goto :goto_13

    .line 126
    :cond_f
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result p1

    :goto_13
    return p1
.end method

.method public onGridSpanSize(II)I
    .registers 4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_5

    goto :goto_9

    .line 134
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onGridSpanSize(II)I

    move-result p2

    :goto_9
    return p2
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

    .line 66
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onGroupingOptions(Ljava/util/Map;)V

    const v0, 0x7f1101ac

    .line 68
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1101aa

    .line 69
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1101a8

    .line 70
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1101a9

    .line 71
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1101ab

    .line 72
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 56
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onPause()V

    .line 58
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getDefaultContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 47
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getDefaultContentObserver()Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 38
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0700dc

    .line 40
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->setEmptyImage(I)V

    const p1, 0x7f1101ca

    .line 41
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    return-void
.end method
