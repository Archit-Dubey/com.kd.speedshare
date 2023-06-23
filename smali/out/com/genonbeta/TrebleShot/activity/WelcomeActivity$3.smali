.class Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

.field final synthetic val$pagerAdapter:Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;

.field final synthetic val$viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;Landroidx/viewpager/widget/ViewPager;Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;)V
    .registers 4

    .line 124
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;->val$pagerAdapter:Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 128
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;->val$pagerAdapter:Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1b

    .line 129
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_41

    .line 132
    :cond_1b
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "introduction_shown"

    .line 133
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 134
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    const-class v2, Lcom/genonbeta/TrebleShot/activity/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->finish()V

    :goto_41
    return-void
.end method
