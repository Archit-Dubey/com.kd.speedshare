.class public Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "ContentSharingActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackPressedListener:Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

.field private mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

.field private mSelectionCallback:Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;)Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mSelectionCallback:Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;

    return-object p0
.end method


# virtual methods
.method public attachListeners(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mSelectionCallback:Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;->updateProvider(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    .line 162
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mBackPressedListener:Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mBackPressedListener:Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 152
    :cond_a
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mSelectionCallback:Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 153
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mSelectionCallback:Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)V

    goto :goto_1f

    .line 155
    :cond_1c
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onBackPressed()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    .line 49
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0024

    .line 50
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->setContentView(I)V

    const p1, 0x7f090201

    .line 52
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 53
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 55
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2d

    .line 56
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v1, 0x7f0700ae

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    :cond_2d
    const p1, 0x7f09007d

    .line 60
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    const p1, 0x7f09007e

    .line 61
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f09007f

    .line 62
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 64
    new-instance v2, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    iput-object v2, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mSelectionCallback:Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;

    .line 65
    new-instance v6, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->mSelectionCallback:Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;

    invoke-direct {v6, v2, v3}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;-><init>(Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)V

    .line 67
    new-instance v9, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$1;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v2, v9

    move-object v3, p0

    move-object v4, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;Landroidx/viewpager/widget/ViewPager;)V

    .line 85
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "argSelectByClick"

    .line 86
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    new-instance v3, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    const-wide/16 v4, 0x0

    const-class v6, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;-><init>(JLjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v9, v3}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->add(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V

    .line 89
    new-instance v3, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    const-wide/16 v4, 0x1

    const-class v6, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;-><init>(JLjava/lang/Class;Landroid/os/Bundle;)V

    const v2, 0x7f11019e

    .line 90
    invoke-virtual {p0, v2}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    move-result-object v2

    .line 89
    invoke-virtual {v9, v2}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->add(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V

    .line 91
    new-instance v2, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    const-wide/16 v3, 0x2

    const-class v5, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;-><init>(JLjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v9, v2}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->add(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V

    .line 92
    new-instance v2, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    const-wide/16 v3, 0x3

    const-class v5, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;-><init>(JLjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v9, v2}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->add(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V

    .line 93
    new-instance v2, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    const-wide/16 v3, 0x4

    const-class v5, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;-><init>(JLjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v9, v2}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->add(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v9, p1, v2, v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->createTabs(Lcom/google/android/material/tabs/TabLayout;ZZ)V

    .line 96
    invoke-virtual {v1, v9}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 97
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 99
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;

    invoke-direct {v0, p0, v1, v9}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;Landroidx/viewpager/widget/ViewPager;Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 141
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 143
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
