.class public Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;
.super Lcom/genonbeta/TrebleShot/app/EditableListFragment;
.source "NetworkDeviceListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;
.implements Lcom/genonbeta/TrebleShot/ui/callback/DetachListener;
.implements Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;
.implements Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$DeviceSelectionSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment<",
        "Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;",
        ">;",
        "Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;",
        "Lcom/genonbeta/TrebleShot/ui/callback/DetachListener;",
        "Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;",
        "Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$DeviceSelectionSupport;"
    }
.end annotation


# static fields
.field public static final ARG_USE_HORIZONTAL_VIEW:Ljava/lang/String; = "useHorizontalView"

.field public static final REQUEST_LOCATION_PERMISSION:I = 0x283


# instance fields
.field private mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

.field private mDeviceSelectedListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNsdDiscovery:Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

.field private mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;

.field private mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mWaitForWiFi:Z

.field private mWiFiWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 59
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$1;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mWaitForWiFi:Z

    .line 65
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mWiFiWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    return-void
.end method

.method static synthetic access$102(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mWaitForWiFi:Z

    return p1
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->openInfo(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mDeviceSelectedListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mWiFiWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    return-object p0
.end method

.method private openInfo(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 5

    .line 368
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    if-eqz v0, :cond_3e

    .line 369
    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    .line 371
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    iget-object v1, p1, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f11023e

    .line 374
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 375
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isConnectedToNetwork(Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const v1, 0x7f11003d

    goto :goto_32

    :cond_2f
    const v1, 0x7f110034

    :goto_32
    new-instance v2, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$7;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_52

    .line 387
    :cond_3e
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_52
    return-void
.end method


# virtual methods
.method public checkRefreshing()V
    .registers 3

    .line 329
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_11

    .line 330
    invoke-static {}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getDeviceScanner()Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->isScannerAvailable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 330
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_11
    return-void
.end method

.method public getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;
    .registers 2

    .line 336
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    return-object v0
.end method

.method public getIconRes()I
    .registers 2

    const v0, 0x7f0700b8

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f110248

    .line 356
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    if-nez v0, :cond_13

    .line 348
    new-instance v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;-><init>(Lcom/genonbeta/TrebleShot/util/ConnectionUtils;Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    .line 350
    :cond_13
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    return-object v0
.end method

.method public isHorizontalOrientation()Z
    .registers 3

    .line 362
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "useHorizontalView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 363
    :cond_12
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isHorizontalOrientation()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 140
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->setHasOptionsMenu(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    const-string v0, "scan_devices_auto"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 144
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->requestRefresh()V

    :cond_1b
    return-void
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;
    .registers 5

    .line 150
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)V

    .line 215
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$4;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$4;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/ConnectionUtils;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 77
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->setFilteringSupported(Z)V

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->setSortingSupported(Z)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->setUseDefaultPaddingDecoration(Z)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->setUseDefaultPaddingDecorationSpaceForEdges(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06011e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->setDefaultPaddingDecorationSize(F)V

    .line 85
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "genonbeta.intent.action.SCAN_STARTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "genonbeta.intent.action.DEVICE_SCAN_COMPLETED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    new-instance p1, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mNsdDiscovery:Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 295
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 297
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->isHorizontalOrientation()Z

    move-result v0

    if-nez v0, :cond_f

    const v0, 0x7f0d0010

    .line 298
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_f
    return-void
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 8

    .line 229
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    .line 231
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mDeviceSelectedListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    if-eqz p1, :cond_5f

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;->isListenerEffective()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 232
    iget p1, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_38

    iget p1, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    const/16 v0, 0x3e

    if-ge p1, v0, :cond_38

    const p1, 0x7f110115

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_62

    .line 234
    :cond_38
    instance-of p1, v3, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    if-eqz p1, :cond_4d

    .line 235
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, -0x1

    new-instance v5, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$5;

    invoke-direct {v5, p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$5;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)V

    invoke-virtual/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->makeAcquaintance(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UITask;Ljava/lang/Object;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V

    goto :goto_62

    .line 255
    :cond_4d
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$6;

    invoke-direct {v1, p0, v3}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$6;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    invoke-direct {p1, v0, v3, v1}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V

    .line 262
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->show()V

    goto :goto_62

    .line 265
    :cond_5f
    invoke-direct {p0, v3}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->openInfo(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    :goto_62
    const/4 p1, 0x1

    return p1
.end method

.method protected onListView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 8

    .line 97
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->isHorizontalOrientation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 98
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onListView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1

    .line 100
    :cond_b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    new-instance v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0300a5

    invoke-static {v4, v5}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v2, v3

    .line 104
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 107
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v2, 0x7f0300c1

    .line 110
    invoke-static {v0, v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 109
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 113
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onListView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09017c

    if-ne v1, v0, :cond_e

    .line 305
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->requestRefresh()V

    const/4 p1, 0x1

    return p1

    .line 307
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 3

    .line 286
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onPause()V

    .line 287
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 289
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mNsdDiscovery:Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->stopDiscovering()V

    return-void
.end method

.method public onPrepareDetach()V
    .registers 2

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->showCustomView(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x283

    if-ne p2, p1, :cond_14

    .line 318
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mWiFiWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    invoke-virtual {p1, p3, p2, v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->showConnectionOptions(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V

    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 274
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onResume()V

    .line 275
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->refreshList()V

    .line 278
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->checkRefreshing()V

    .line 280
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mNsdDiscovery:Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->startDiscovering()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 121
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0700b8

    .line 123
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->setEmptyImage(I)V

    const p1, 0x7f11019f

    .line 124
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_1f

    .line 127
    new-instance p2, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$2;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)V

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    :cond_1f
    return-void
.end method

.method public requestRefresh()V
    .registers 4

    .line 392
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 394
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->toggleDeviceScanning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 395
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11010a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_24
    return-void
.end method

.method public setDeviceSelectedListener(Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;)V
    .registers 2

    .line 400
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->mDeviceSelectedListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    return-void
.end method
