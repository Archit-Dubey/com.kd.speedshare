.class public Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "FileExplorerActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/PowerfulActionModeSupport;


# static fields
.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "filePath"


# instance fields
.field private mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

.field private mFragmentFileExplorer:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method

.method private openFolder(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 117
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->mFragmentFileExplorer:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->requestPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public checkRequestedPath(Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "filePath"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 100
    :try_start_11
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->openFolder(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_26

    :catch_1d
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_26

    :cond_22
    const/4 p1, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->openFolder(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    :goto_26
    return-void
.end method

.method public getPowerfulActionMode()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->mFragmentFileExplorer:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 84
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->mFragmentFileExplorer:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 85
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->mFragmentFileExplorer:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)V

    goto :goto_25

    .line 87
    :cond_22
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onBackPressed()V

    :cond_25
    :goto_25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 39
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0026

    .line 41
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->setContentView(I)V

    const p1, 0x7f090201

    .line 43
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 44
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f090081

    .line 46
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    .line 47
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090082

    .line 48
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->mFragmentFileExplorer:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 51
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0700ae

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 52
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    :cond_47
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->setOnSelectionTaskListener(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$OnSelectionTaskListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->checkRequestedPath(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 73
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 75
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
