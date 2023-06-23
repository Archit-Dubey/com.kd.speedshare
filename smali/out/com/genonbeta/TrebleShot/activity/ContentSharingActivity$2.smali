.class Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;
.super Ljava/lang/Object;
.source "ContentSharingActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;

.field final synthetic val$pagerAdapter:Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

.field final synthetic val$viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;Landroidx/viewpager/widget/ViewPager;Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;)V
    .registers 4

    .line 100
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;->val$pagerAdapter:Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 106
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;->val$pagerAdapter:Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    .line 108
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->attachListeners(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    .line 110
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapterImpl()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2$1;-><init>(Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;Lcom/genonbeta/TrebleShot/app/EditableListFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_33
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method
