.class public Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SmartFragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .registers 3

    .line 35
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 30
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->mItems:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public add(ILcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createTabs(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .registers 7

    .line 81
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_51

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    :goto_8
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 83
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getStableItem(I)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    move-result-object v2

    .line 84
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 87
    iget-object v4, v2, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->title:Ljava/lang/String;

    if-eqz v4, :cond_25

    iget-object v4, v2, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_25

    .line 88
    iget-object v2, v2, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->title:Ljava/lang/String;

    goto :goto_39

    .line 89
    :cond_25
    instance-of v2, v3, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;

    if-eqz v2, :cond_35

    .line 90
    move-object v2, v3

    check-cast v2, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_39

    .line 92
    :cond_35
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    :goto_39
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v4

    .line 95
    invoke-interface {v4, v0, v1, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 97
    instance-of v4, v3, Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;

    if-eqz v4, :cond_4e

    .line 98
    check-cast v3, Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;

    invoke-interface {v3}, Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;->getIconRes()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_51
    return-void
.end method

.method public createTabs(Lcom/google/android/material/tabs/TabLayout;)V
    .registers 3

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, p1, v0, v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->createTabs(Lcom/google/android/material/tabs/TabLayout;ZZ)V

    return-void
.end method

.method public createTabs(Lcom/google/android/material/tabs/TabLayout;ZZ)V
    .registers 9

    .line 60
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_58

    const/4 v0, 0x0

    .line 61
    :goto_7
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 62
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getStableItem(I)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 64
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    .line 66
    instance-of v4, v2, Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;

    if-eqz v4, :cond_29

    if-eqz p2, :cond_29

    .line 67
    move-object v4, v2

    check-cast v4, Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;

    invoke-interface {v4}, Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;->getIconRes()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 69
    :cond_29
    iget-boolean v4, v1, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->iconOnly:Z

    if-nez v4, :cond_52

    if-eqz p3, :cond_52

    .line 70
    iget-object v4, v1, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->title:Ljava/lang/String;

    if-eqz v4, :cond_41

    iget-object v4, v1, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_41

    .line 71
    iget-object v1, v1, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_52

    .line 72
    :cond_41
    instance-of v1, v2, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;

    if-eqz v1, :cond_52

    .line 73
    check-cast v2, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 75
    :cond_52
    :goto_52
    invoke-virtual {p1, v3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_58
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .registers 4

    .line 142
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getStableItem(I)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->getInitiatedItem()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_14

    .line 146
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->clazzName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 148
    :cond_14
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 136
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getStableItem(I)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    move-result-object p1

    iget-wide v0, p1, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->itemId:J

    return-wide v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 4

    .line 157
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 159
    instance-of v1, v0, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;

    .line 160
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_17

    .line 161
    :cond_13
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_17
    return-object p1
.end method

.method public getStableItem(I)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    .line 106
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 108
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getStableItem(I)Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;

    move-result-object v0

    .line 109
    iput-object p1, v0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->mInitiatedItem:Landroidx/fragment/app/Fragment;

    .line 110
    iput p2, v0, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->mCurrentPosition:I

    .line 112
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->onItemInstantiated(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V

    return-object p1
.end method

.method public onItemInstantiated(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V
    .registers 2

    return-void
.end method
