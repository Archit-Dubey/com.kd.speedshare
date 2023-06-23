.class public Lcom/genonbeta/TrebleShot/fragment/HomeFragment;
.super Lcom/genonbeta/android/framework/app/Fragment;
.source "HomeFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;
.implements Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;
.implements Lcom/genonbeta/android/framework/app/FragmentImpl;
.implements Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;


# instance fields
.field private mAdapter:Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/fragment/HomeFragment;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f1101ae

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed()Z
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mAdapter:Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 93
    instance-of v1, v0, Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    check-cast v0, Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

    .line 94
    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    .line 97
    :cond_1a
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_29

    .line 98
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_29
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const p3, 0x7f0c005f

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090125

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const p3, 0x7f090127

    .line 38
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 39
    new-instance p3, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mAdapter:Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

    .line 41
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    const-class v1, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;-><init>(JLjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p3, v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->add(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V

    .line 42
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mAdapter:Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    const-class v1, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;-><init>(JLjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p3, v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->add(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V

    .line 43
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mAdapter:Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    const-class v1, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    const-wide/16 v2, 0x2

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;-><init>(JLjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p3, v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->add(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V

    .line 45
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mAdapter:Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

    invoke-virtual {p3, p2}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->createTabs(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    .line 46
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mAdapter:Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 48
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment$1;

    invoke-direct {v0, p0, p2}, Lcom/genonbeta/TrebleShot/fragment/HomeFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/HomeFragment;Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 69
    new-instance p3, Lcom/genonbeta/TrebleShot/fragment/HomeFragment$2;

    invoke-direct {p3, p0}, Lcom/genonbeta/TrebleShot/fragment/HomeFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/HomeFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-object p1
.end method
