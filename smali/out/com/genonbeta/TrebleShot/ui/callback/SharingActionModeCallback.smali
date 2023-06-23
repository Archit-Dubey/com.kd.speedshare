.class public Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;
.super Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;
.source "SharingActionModeCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback$SelectionDuo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/genonbeta/TrebleShot/object/Shareable;",
        ">",
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/MenuItem;)Z
    .registers 4

    .line 26
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z
    .registers 14

    .line 51
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v2

    invoke-interface {v2}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f9

    const v2, 0x7f09004f

    const v3, 0x7f09004e

    if-eq v0, v2, :cond_25

    if-ne v0, v3, :cond_f9

    .line 57
    :cond_25
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 p2, 0x1

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 59
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_41

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_3e

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    goto :goto_4c

    :cond_3e
    const-string v0, "android.intent.action.SEND"

    goto :goto_4c

    .line 61
    :cond_41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_4a

    const-string v0, "genonbeta.intent.action.TREBLESHOT_SEND_MULTIPLE"

    goto :goto_4c

    :cond_4a
    const-string v0, "genonbeta.intent.action.TREBLESHOT_SEND"

    .line 59
    :goto_4c
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "extraFileNames"

    const-string v4, "android.intent.extra.STREAM"

    const/4 v5, 0x0

    if-le v0, p2, :cond_a0

    .line 64
    new-instance v0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;-><init>()V

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6e
    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/genonbeta/TrebleShot/object/Shareable;

    .line 69
    iget-object v9, v8, Lcom/genonbeta/TrebleShot/object/Shareable;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v9, v8, Lcom/genonbeta/TrebleShot/object/Shareable;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->isLocked()Z

    move-result v9

    if-nez v9, :cond_6e

    .line 73
    iget-object v8, v8, Lcom/genonbeta/TrebleShot/object/Shareable;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->process(Ljava/lang/String;)V

    goto :goto_6e

    .line 76
    :cond_90
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$MIMEGrouper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_bd

    .line 79
    :cond_a0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p2, :cond_bd

    .line 80
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/object/Shareable;

    .line 82
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/object/Shareable;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v6, v0, Lcom/genonbeta/TrebleShot/object/Shareable;->uri:Landroid/net/Uri;

    .line 83
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/object/Shareable;->fileName:Ljava/lang/String;

    .line 84
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :cond_bd
    :goto_bd
    :try_start_bd
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    if-ne p3, v3, :cond_de

    .line 89
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p3

    invoke-interface {p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f11019b

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 88
    :cond_de
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e1
    .catchall {:try_start_bd .. :try_end_e1} :catchall_e2

    return p2

    :catchall_e2
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f110107

    invoke-static {p1, p2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v5

    .line 98
    :cond_f9
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/Menu;)Z
    .registers 4

    .line 26
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    .line 44
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const p2, 0x7f0d0004

    invoke-virtual {p1, p2, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)Z
    .registers 3

    .line 26
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)Z

    move-result p1

    return p1
.end method

.method public onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)Z
    .registers 3

    .line 36
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;)Z

    const/4 p1, 0x1

    return p1
.end method
