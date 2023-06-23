.class public Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "WelcomeActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mPermissionsView:Landroid/view/ViewGroup;

.field private mProfileView:Landroid/view/ViewGroup;

.field private mSplashView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;)Landroid/content/SharedPreferences;
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected checkPermissionsState()V
    .registers 6

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    return-void

    .line 206
    :cond_7
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->checkRunningConditions(Landroid/content/Context;)Z

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mPermissionsView:Landroid/view/ViewGroup;

    const v2, 0x7f09014f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_1b

    const/4 v4, 0x0

    goto :goto_1d

    :cond_1b
    const/16 v4, 0x8

    .line 209
    :goto_1d
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mPermissionsView:Landroid/view/ViewGroup;

    const v4, 0x7f090150

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_2d

    const/16 v2, 0x8

    .line 212
    :cond_2d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    .line 45
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0031

    .line 46
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->setContentView(I)V

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->setSkipPermissionRequest(Z)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->setWelcomePageDisallowed(Z)V

    const v0, 0x7f090092

    .line 50
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f090094

    .line 51
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f090091

    .line 52
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ProgressBar;

    const v0, 0x7f090093

    .line 53
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 54
    new-instance v7, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;

    invoke-direct {v7}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;-><init>()V

    const v1, 0x7f0300be

    .line 58
    invoke-static {p0, v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 60
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v2, v6, :cond_60

    .line 61
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 63
    invoke-static {v2, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 64
    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_67

    .line 66
    :cond_60
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 70
    :goto_67
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0071

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mSplashView:Landroid/view/ViewGroup;

    .line 71
    invoke-virtual {v7, v1}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->addView(Landroid/view/View;)I

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_a7

    .line 75
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0073

    invoke-virtual {v1, v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mPermissionsView:Landroid/view/ViewGroup;

    .line 76
    invoke-virtual {v7, v1}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->addView(Landroid/view/View;)I

    .line 77
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->checkPermissionsState()V

    .line 79
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mPermissionsView:Landroid/view/ViewGroup;

    const v2, 0x7f090150

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$1;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_a7
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0072

    invoke-virtual {v1, v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mProfileView:Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {v7, v1}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->addView(Landroid/view/View;)I

    .line 93
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->setUserProfile()V

    .line 96
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0074

    invoke-virtual {v1, v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->addView(Landroid/view/View;)I

    .line 99
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0075

    invoke-virtual {v1, v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const v6, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v8, 0x7d0

    .line 102
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v6, -0x1

    .line 103
    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    const/4 v6, 0x2

    .line 104
    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    const v6, 0x7f090151

    .line 106
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 107
    invoke-virtual {v6, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 109
    invoke-virtual {v7, v1}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->addView(Landroid/view/View;)I

    .line 111
    invoke-virtual {v7}, Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 113
    new-instance p1, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$2;

    invoke-direct {p1, p0, v0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v4, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance p1, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;

    invoke-direct {p1, p0, v0, v7}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$3;-><init>(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;Landroidx/viewpager/widget/ViewPager;Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;)V

    invoke-virtual {v5, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance p1, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;

    move-object v1, p1

    move-object v2, p0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$4;-><init>(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/genonbeta/TrebleShot/widget/DynamicViewPagerAdapter;)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 174
    invoke-virtual {v0, v7}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 198
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->checkPermissionsState()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 180
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onResume()V

    .line 182
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->slideSplashView()V

    .line 183
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->setUserProfile()V

    .line 184
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->checkPermissionsState()V

    return-void
.end method

.method public onUserProfileUpdated()V
    .registers 1

    .line 190
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onUserProfileUpdated()V

    .line 191
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->setUserProfile()V

    return-void
.end method

.method protected setUserProfile()V
    .registers 7

    .line 217
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mProfileView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_54

    .line 218
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mProfileView:Landroid/view/ViewGroup;

    const v2, 0x7f090143

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 221
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mProfileView:Landroid/view/ViewGroup;

    const v3, 0x7f090144

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 222
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mProfileView:Landroid/view/ViewGroup;

    const v4, 0x7f090106

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 223
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mProfileView:Landroid/view/ViewGroup;

    const v5, 0x7f090107

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 225
    iget-object v5, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v3, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->loadProfilePictureInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 229
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$5;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity$5;-><init>(Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mProfileView:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    :cond_54
    return-void
.end method

.method protected slideSplashView()V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mSplashView:Landroid/view/ViewGroup;

    const v1, 0x7f09014e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f01001d

    .line 245
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 247
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;->mSplashView:Landroid/view/ViewGroup;

    const v1, 0x7f09014d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f01001c

    .line 248
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
