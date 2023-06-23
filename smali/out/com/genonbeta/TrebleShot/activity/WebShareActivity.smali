.class public Lcom/genonbeta/TrebleShot/activity/WebShareActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "WebShareActivity.java"


# static fields
.field public static final EXTRA_WEBSERVER_START_REQUIRED:Ljava/lang/String; = "extraStartRequired"


# instance fields
.field private mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFilter:Landroid/content/IntentFilter;

    .line 50
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/WebShareActivity;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 64
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0030

    .line 65
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->setContentView(I)V

    .line 67
    new-instance p1, Lcom/genonbeta/TrebleShot/activity/WebShareActivity$2;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/WebShareActivity;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 73
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "com.genonbeta.TrebleShot.transaction.action.WEBSHARE_STATUS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const p1, 0x7f090201

    .line 75
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 76
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 78
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_32

    .line 79
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_32
    const p1, 0x7f0900c4

    .line 81
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 82
    new-instance v1, Lcom/genonbeta/TrebleShot/activity/WebShareActivity$3;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity$3;-><init>(Lcom/genonbeta/TrebleShot/activity/WebShareActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_65

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extraStartRequired"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 92
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 93
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->toggleWebShare(Z)V

    :cond_65
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 118
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 120
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 107
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 99
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->requestWebShareStatus()V

    return-void
.end method

.method public requestWebShareStatus()V
    .registers 3

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.REQUEST_WEBSHARE_STATUS"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 127
    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public toggleWebShare(Z)V
    .registers 4

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.TOGGLE_WEBSHARE"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    const-string v1, "extraToggleWebShareStartAlways"

    .line 137
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    :cond_15
    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public updateWebShareStatus(Z)V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p1, :cond_8

    const v1, 0x7f050035

    goto :goto_b

    :cond_8
    const v1, 0x7f05003c

    :goto_b
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 146
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p1, :cond_1e

    const v1, 0x7f0700e8

    goto :goto_21

    :cond_1e
    const v1, 0x7f0700eb

    :goto_21
    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 149
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_65

    .line 150
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz p1, :cond_3b

    const/16 v1, 0x51

    goto :goto_3d

    :cond_3b
    const/16 v1, 0x11

    :goto_3d
    iput v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 154
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_65

    .line 157
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    :cond_65
    if-eqz p1, :cond_6e

    .line 161
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_80

    .line 163
    :cond_6e
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->mFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f010025

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_80
    return-void
.end method
