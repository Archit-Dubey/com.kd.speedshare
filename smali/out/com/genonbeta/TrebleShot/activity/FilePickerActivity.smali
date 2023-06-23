.class public Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "FilePickerActivity.java"


# static fields
.field public static final ACTION_CHOOSE_DIRECTORY:Ljava/lang/String; = "com.genonbeta.intent.action.CHOOSE_DIRECTORY"

.field public static final ACTION_CHOOSE_FILE:Ljava/lang/String; = "com.genonbeta.intent.action.CHOOSE_FILE"

.field public static final EXTRA_ACTIVITY_TITLE:Ljava/lang/String; = "activityTitle"

.field public static final EXTRA_CHOSEN_PATH:Ljava/lang/String; = "chosenPath"

.field public static final EXTRA_START_PATH:Ljava/lang/String; = "startPath"


# instance fields
.field private mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private mFileExplorerFragment:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;)Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFileExplorerFragment:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->finishWithResult(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    return-void
.end method

.method private finishWithResult(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 4

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.genonbeta.intent.action.CHOOSE_DIRECTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "chosenPath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    .line 174
    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFileExplorerFragment:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    if-eqz v0, :cond_a

    .line 168
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 169
    :cond_a
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onBackPressed()V

    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 45
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    .line 46
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f090072

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFileExplorerFragment:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    const p1, 0x7f0900c4

    .line 49
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 157
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 159
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .registers 7

    .line 55
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onStart()V

    .line 57
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_103

    .line 60
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 61
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v3, 0x7f0700ae

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 62
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "activityTitle"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 65
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    .line 69
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.genonbeta.intent.action.CHOOSE_DIRECTORY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f110166

    if-eqz v3, :cond_9e

    .line 70
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_6f

    if-nez v0, :cond_68

    .line 72
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_6f

    .line 74
    :cond_68
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    .line 77
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFileExplorerFragment:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    .line 78
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->setConfiguration(ZZLjava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFileExplorerFragment:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->refreshList()V

    .line 83
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFileExplorerFragment:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    .line 84
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0xc8

    .line 86
    invoke-virtual {v0, v2, v2, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 88
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 90
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    .line 91
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d6

    .line 104
    :cond_9e
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.genonbeta.intent.action.CHOOSE_FILE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 105
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_c8

    if-nez v0, :cond_c1

    .line 107
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f110164

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_c8

    .line 109
    :cond_c1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    .line 112
    :cond_c8
    :goto_c8
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFileExplorerFragment:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$2;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->setLayoutClickListener(Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener;)V

    goto :goto_d6

    .line 137
    :cond_d3
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->finish()V

    .line 139
    :goto_d6
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_106

    .line 140
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "startPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 142
    :try_start_e8
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->mFileExplorerFragment:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_fd} :catch_fe

    goto :goto_106

    :catch_fe
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_106

    .line 148
    :cond_103
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->finish()V

    :cond_106
    :goto_106
    return-void
.end method
