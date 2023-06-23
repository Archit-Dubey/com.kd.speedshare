.class Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

.field final synthetic val$nextButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field final synthetic val$pagerAdapter:Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;

.field final synthetic val$previousButton:Landroidx/appcompat/widget/AppCompatImageView;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;)V
    .registers 6

    .line 143
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->this$0:Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$previousButton:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$nextButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p5, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$pagerAdapter:Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6

    .line 147
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$progressBar:Landroid/widget/ProgressBar;

    mul-int/lit8 v0, p1, 0x64

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-nez p1, :cond_1a

    .line 150
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 151
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$previousButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setAlpha(F)V

    goto :goto_26

    .line 153
    :cond_1a
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$progressBar:Landroid/widget/ProgressBar;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 154
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$previousButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setAlpha(F)V

    :goto_26
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .line 161
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 163
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$nextButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;->val$pagerAdapter:Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_15

    const p1, 0x7f0700ab

    goto :goto_18

    :cond_15
    const p1, 0x7f0700e5

    :goto_18
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    return-void
.end method
