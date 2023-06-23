.class public Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;
.super Lcom/genonbeta/TrebleShot/app/EditableListFragment;
.source "ApplicationListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment<",
        "Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;",
        ">;",
        "Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f110154

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->setFilteringSupported(Z)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;
    .registers 5

    .line 49
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;)V

    .line 79
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$2;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 101
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d000b

    .line 102
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 3

    .line 93
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 94
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    goto :goto_13

    .line 95
    :cond_f
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result p1

    :goto_13
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0901c8

    if-ne v0, v1, :cond_31

    .line 109
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "show_system_apps"

    invoke-virtual {p1, v1, v0}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 111
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 112
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->refreshList()V

    return v0

    .line 119
    :cond_31
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5

    .line 125
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0901c8

    .line 127
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v0

    const-string v1, "show_system_apps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 40
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f07009c

    .line 42
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->setEmptyImage(I)V

    const p1, 0x7f1101c6

    .line 43
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 6

    const/4 v0, 0x0

    .line 141
    :try_start_1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;

    invoke-virtual {v1, p1}, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;->getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;

    .line 142
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 145
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110136

    .line 147
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f110027

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f110022

    .line 149
    new-instance v3, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$3;

    invoke-direct {v3, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_50

    .line 160
    :cond_42
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f1100e5

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_52

    :goto_50
    const/4 p1, 0x1

    return p1

    :catch_52
    return v0
.end method
