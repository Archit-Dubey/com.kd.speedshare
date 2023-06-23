.class public Lcom/genonbeta/TrebleShot/activity/HomeActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;
.implements Lcom/genonbeta/TrebleShot/ui/callback/PowerfulActionModeSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/activity/HomeActivity$ActivityReceiver;
    }
.end annotation


# static fields
.field public static final REQUEST_PERMISSION_ALL:I = 0x1


# instance fields
.field private mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

.field private mChosenMenuItemId:I

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mExitPressTime:J

.field private mFilter:Landroid/content/IntentFilter;

.field private mHomeFragment:Lcom/genonbeta/TrebleShot/fragment/HomeFragment;

.field private mNavigationView:Lcom/google/android/material/navigation/NavigationView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTrustZoneToggle:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->applyAwaitingDrawerAction()V

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)Landroid/content/SharedPreferences;
    .registers 1

    .line 58
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)Landroid/view/MenuItem;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mTrustZoneToggle:Landroid/view/MenuItem;

    return-object p0
.end method

.method private applyAwaitingDrawerAction()V
    .registers 4

    .line 218
    iget v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mChosenMenuItemId:I

    if-nez v0, :cond_6

    goto/16 :goto_ad

    :cond_6
    const v1, 0x7f090169

    if-ne v1, v0, :cond_17

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_ad

    :cond_17
    const v1, 0x7f090165

    if-ne v1, v0, :cond_28

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_ad

    :cond_28
    const v1, 0x7f09016b

    if-ne v1, v0, :cond_37

    .line 225
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;->show()Landroidx/appcompat/app/AlertDialog;

    goto/16 :goto_ad

    :cond_37
    const v1, 0x7f09016d

    if-ne v1, v0, :cond_47

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_ad

    :cond_47
    const v1, 0x7f09016a

    if-ne v1, v0, :cond_57

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_ad

    :cond_57
    const v1, 0x7f090168

    if-ne v1, v0, :cond_60

    .line 232
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->exitApp()V

    goto :goto_ad

    :cond_60
    const v1, 0x7f090167

    if-ne v1, v0, :cond_79

    .line 235
    :try_start_65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.genonbeta.TrebleShot.activity.DonationActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_73
    .catch Ljava/lang/ClassNotFoundException; {:try_start_65 .. :try_end_73} :catch_74

    goto :goto_ad

    :catch_74
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_ad

    :cond_79
    const v1, 0x7f090166

    if-ne v1, v0, :cond_a5

    .line 240
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11017e

    .line 241
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f11017f

    .line 242
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1100b1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f11008c

    .line 244
    new-instance v2, Lcom/genonbeta/TrebleShot/activity/HomeActivity$6;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity$6;-><init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_ad

    :cond_a5
    const v1, 0x7f09016e

    if-ne v1, v0, :cond_ad

    .line 262
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->toggleTrustZone()V

    :cond_ad
    :goto_ad
    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mChosenMenuItemId:I

    return-void
.end method

.method private createHeaderView()V
    .registers 8

    .line 270
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mNavigationView:Lcom/google/android/material/navigation/NavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    .line 271
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mNavigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f090166

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 272
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 274
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "en"

    const/16 v6, 0x18

    if-lt v4, v6, :cond_4e

    .line 275
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-lez v4, :cond_5b

    .line 278
    :goto_32
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5b

    .line 279
    invoke-virtual {v3, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v1, 0x1

    .line 280
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5b

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 284
    :cond_4e
    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5b
    :goto_5b
    if-eqz v0, :cond_a0

    .line 287
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v1

    const v2, 0x7f090143

    .line 289
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090144

    .line 290
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090106

    .line 291
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090107

    .line 292
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 294
    iget-object v5, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v4, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->loadProfilePictureInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 298
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$7;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity$7;-><init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a0
    return-void
.end method


# virtual methods
.method public getPowerfulActionMode()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mHomeFragment:Lcom/genonbeta/TrebleShot/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 200
    :cond_9
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_1c

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 201
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_3e

    .line 202
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mExitPressTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2d

    .line 203
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onBackPressed()V

    goto :goto_3e

    .line 205
    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mExitPressTime:J

    const v0, 0x7f110105

    const/4 v1, 0x0

    .line 206
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 78
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0028

    .line 80
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->setContentView(I)V

    const p1, 0x7f090201

    .line 82
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 83
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 85
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/fragment/HomeFragment;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mHomeFragment:Lcom/genonbeta/TrebleShot/fragment/HomeFragment;

    const v0, 0x7f0900c6

    .line 86
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    const v0, 0x7f09017a

    .line 87
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mNavigationView:Lcom/google/android/material/navigation/NavigationView;

    const v0, 0x7f0900dd

    .line 88
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 89
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mNavigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f09016e

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mTrustZoneToggle:Landroid/view/MenuItem;

    .line 90
    new-instance v6, Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v4, 0x7f1101dc

    const v5, 0x7f1101db

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    .line 91
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 92
    invoke-virtual {v6}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 94
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.TRUSTZONE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/HomeActivity$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 104
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mNavigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 105
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mActionMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/HomeActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/activity/HomeActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->setOnSelectionTaskListener(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$OnSelectionTaskListener;)V

    .line 114
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->isLatestChangeLogSeen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c5

    .line 115
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110116

    .line 116
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110097

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/HomeActivity$5;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity$5;-><init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)V

    .line 117
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110055

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/HomeActivity$4;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity$4;-><init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)V

    .line 126
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110057

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/HomeActivity$3;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity$3;-><init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;)V

    .line 136
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 148
    :cond_c5
    sget-object p1, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->googlePlay:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getBuildFlavor()Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e4

    .line 149
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mNavigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f090167

    .line 150
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_e4

    const/4 v0, 0x1

    .line 153
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_e4
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iput p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mChosenMenuItemId:I

    .line 188
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_10

    const v0, 0x800003

    .line 189
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onPause()V

    .line 177
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_a

    .line 178
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_a
    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 167
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onResume()V

    .line 168
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/HomeActivity$ActivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/genonbeta/TrebleShot/activity/HomeActivity$ActivityReceiver;-><init>(Lcom/genonbeta/TrebleShot/activity/HomeActivity;Lcom/genonbeta/TrebleShot/activity/HomeActivity$1;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->requestTrustZoneStatus()V

    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 160
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onStart()V

    .line 161
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->createHeaderView()V

    return-void
.end method

.method public onUserProfileUpdated()V
    .registers 1

    .line 213
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/HomeActivity;->createHeaderView()V

    return-void
.end method

.method public requestTrustZoneStatus()V
    .registers 3

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.REQUEST_TRUSTZONE_STATUS"

    .line 318
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 317
    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public toggleTrustZone()V
    .registers 3

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.TOGGLE_SEAMLESS_MODE"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 323
    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
