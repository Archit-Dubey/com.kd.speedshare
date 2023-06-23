.class public Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "ConnectionManagerActivity.java"

# interfaces
.implements Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;,
        Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$DeviceSelectionSupport;,
        Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;,
        Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_FRAGMENT:Ljava/lang/String; = "com.genonbeta.intent.action.CONNECTION_MANAGER_CHANGE_FRAGMENT"

.field public static final EXTRA_ACTIVITY_SUBTITLE:Ljava/lang/String; = "extraActivitySubtitle"

.field public static final EXTRA_CONNECTION_ADAPTER:Ljava/lang/String; = "extraConnectionAdapter"

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "extraDeviceId"

.field public static final EXTRA_FRAGMENT_ENUM:Ljava/lang/String; = "extraFragmentEnum"

.field public static final EXTRA_REQUEST_TYPE:Ljava/lang/String; = "extraRequestType"


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mBarcodeConnectFragment:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

.field private mDeviceListFragment:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

.field private final mDeviceSelectionListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHotspotManagerFragment:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

.field private mNetworkManagerFragment:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

.field private mOptionsFragment:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestType:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

.field private mTitleProvided:Ljava/lang/String;

.field private mToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mFilter:Landroid/content/IntentFilter;

    .line 67
    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->RETURN_RESULT:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mRequestType:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    .line 69
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mDeviceSelectionListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    .line 122
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mRequestType:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mDeviceSelectionListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    return-object p0
.end method

.method private checkFragment()V
    .registers 3

    .line 269
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getShowingFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_c

    .line 272
    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->Options:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->setFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V

    goto :goto_11

    .line 274
    :cond_c
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mTitleProvided:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->applyViewChanges(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :goto_11
    return-void
.end method


# virtual methods
.method public applyViewChanges(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .registers 6

    .line 248
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    .line 250
    instance-of v1, p1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$DeviceSelectionSupport;

    if-eqz v1, :cond_e

    .line 251
    move-object v1, p1

    check-cast v1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$DeviceSelectionSupport;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mDeviceSelectionListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    invoke-interface {v1, v2}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$DeviceSelectionSupport;->setDeviceSelectedListener(Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;)V

    .line 253
    :cond_e
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 254
    instance-of v1, p1, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;

    if-eqz v1, :cond_1f

    check-cast p1, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;

    .line 255
    invoke-interface {p1, p0}, Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_26

    :cond_1f
    const p1, 0x7f11016f

    .line 256
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_26
    if-eqz v0, :cond_32

    .line 259
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p2, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object p2, p1

    :goto_2e
    invoke-virtual {v1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 261
    :cond_32
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public varargs createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;
    .registers 4

    const v0, 0x7f09007b

    .line 280
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public getShowingFragment()Landroidx/fragment/app/Fragment;
    .registers 3

    .line 304
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getShowingFragmentId()Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;
    .registers 3

    .line 286
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getShowingFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 288
    instance-of v1, v0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    if-eqz v1, :cond_b

    .line 289
    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->ScanQrCode:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    return-object v0

    .line 290
    :cond_b
    instance-of v1, v0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

    if-eqz v1, :cond_12

    .line 291
    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->CreateHotspot:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    return-object v0

    .line 292
    :cond_12
    instance-of v1, v0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    if-eqz v1, :cond_19

    .line 293
    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->UseExistingNetwork:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    return-object v0

    .line 294
    :cond_19
    instance-of v0, v0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    if-eqz v0, :cond_20

    .line 295
    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->UseKnownDevice:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    return-object v0

    .line 298
    :cond_20
    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->Options:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 227
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getShowingFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    if-eqz v0, :cond_c

    .line 228
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onBackPressed()V

    goto :goto_11

    .line 230
    :cond_c
    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->Options:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->setFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V

    :goto_11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 171
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 173
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->setResult(I)V

    const p1, 0x7f0c0023

    .line 174
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->setContentView(I)V

    .line 176
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object p1

    const v0, 0x7f090201

    .line 177
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090099

    .line 178
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f09007c

    .line 179
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f090202

    .line 180
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 181
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mOptionsFragment:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    .line 182
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v3}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mBarcodeConnectFragment:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    .line 183
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v3}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mHotspotManagerFragment:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

    .line 184
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v3}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mNetworkManagerFragment:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    .line 185
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v3}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mDeviceListFragment:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    .line 187
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.genonbeta.intent.action.CONNECTION_MANAGER_CHANGE_FRAGMENT"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.DEVICE_ACQUAINTANCE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.INCOMING_TRANSFER_READY"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 193
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_c0

    .line 194
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 196
    :cond_c0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_f8

    .line 197
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraRequestType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 199
    :try_start_d2
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mRequestType:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e0} :catch_e1

    goto :goto_e2

    :catch_e1
    nop

    .line 204
    :cond_e2
    :goto_e2
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraActivitySubtitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 205
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mTitleProvided:Ljava/lang/String;

    :cond_f8
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 239
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 241
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 2

    .line 220
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onPause()V

    .line 221
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 212
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onResume()V

    .line 213
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->checkFragment()V

    .line 214
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V
    .registers 5

    .line 310
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getShowingFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$3;->$SwitchMap$com$genonbeta$TrebleShot$activity$ConnectionManagerActivity$AvailableFragment:[I

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_21

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1e

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1b

    .line 329
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mOptionsFragment:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    goto :goto_23

    .line 326
    :cond_1b
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mDeviceListFragment:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    goto :goto_23

    .line 323
    :cond_1e
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mNetworkManagerFragment:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    goto :goto_23

    .line 320
    :cond_21
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mHotspotManagerFragment:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;

    :goto_23
    if-eqz v0, :cond_27

    if-eq p1, v0, :cond_5b

    .line 333
    :cond_27
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    if-eqz v0, :cond_34

    .line 336
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_34
    if-eqz v0, :cond_44

    .line 338
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    if-eqz v0, :cond_44

    const v0, 0x7f01001e

    const v2, 0x7f010021

    .line 339
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_4d

    :cond_44
    const v0, 0x7f01001f

    const v2, 0x7f010020

    .line 341
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    :goto_4d
    const v0, 0x7f09007b

    .line 343
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 344
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 346
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mTitleProvided:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->applyViewChanges(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_5b
    return-void

    .line 316
    :cond_5c
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mOptionsFragment:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 317
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mOptionsFragment:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->access$300(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;)V

    :cond_69
    return-void
.end method

.method protected showEnterIpAddressDialog()V
    .registers 4

    .line 352
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    .line 353
    new-instance v1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-direct {v1, v0, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;-><init>(Lcom/genonbeta/TrebleShot/util/ConnectionUtils;Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;)V

    .line 354
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->mDeviceSelectionListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;)V

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
