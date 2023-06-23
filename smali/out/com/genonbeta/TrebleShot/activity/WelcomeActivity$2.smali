.class Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$2;
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

.field final synthetic val$viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;Landroidx/viewpager/widget/ViewPager;)V
    .registers 3

    .line 114
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$2;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 118
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$2;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ltz p1, :cond_14

    .line 119
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$2;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_14
    return-void
.end method
