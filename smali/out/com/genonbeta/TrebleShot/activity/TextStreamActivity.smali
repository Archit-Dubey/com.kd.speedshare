.class public Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "TextStreamActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/PowerfulActionModeSupport;


# instance fields
.field private mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

.field private mStreamListFragment:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getPowerfulActionMode()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->mStreamListFragment:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 55
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->mStreamListFragment:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)V

    goto :goto_1d

    .line 57
    :cond_1a
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onBackPressed()V

    :goto_1d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 26
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002d

    .line 27
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->setContentView(I)V

    const p1, 0x7f090201

    .line 29
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 30
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f090039

    .line 32
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    .line 33
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090083

    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->mStreamListFragment:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    .line 36
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 37
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0700ae

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 38
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    :cond_47
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->setOnSelectionTaskListener(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$OnSelectionTaskListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 66
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/TextStreamActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 68
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
