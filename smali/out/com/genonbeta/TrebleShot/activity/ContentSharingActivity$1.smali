.class Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$1;
.super Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;
.source "ContentSharingActivity.java"


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

.field final synthetic val$selectorConnection:Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

.field final synthetic val$viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;Landroidx/viewpager/widget/ViewPager;)V
    .registers 6

    .line 68
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$1;->val$selectorConnection:Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    iput-object p5, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$1;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0, p2, p3}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public onItemInstantiated(Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;)V
    .registers 4

    .line 72
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->getInitiatedItem()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    .line 75
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;)Lcom/genonbeta/TrebleShot/ui/callback/SharingActionModeCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->setSelectionCallback(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)V

    .line 76
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$1;->val$selectorConnection:Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    invoke-interface {v0, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->setSelectorConnection(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;)V

    .line 79
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$1;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/SmartFragmentPagerAdapter$StableItem;->getCurrentPosition()I

    move-result p1

    if-ne v1, p1, :cond_25

    .line 80
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;->attachListeners(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    :cond_25
    return-void
.end method
