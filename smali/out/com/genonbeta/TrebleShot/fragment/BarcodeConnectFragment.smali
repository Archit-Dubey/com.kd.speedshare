.class public Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;
.super Lcom/genonbeta/android/framework/app/Fragment;
.source "BarcodeConnectFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;
.implements Lcom/genonbeta/TrebleShot/ui/UITask;
.implements Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;
.implements Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$DeviceSelectionSupport;


# static fields
.field public static final REQUEST_PERMISSION_CAMERA:I = 0x1

.field public static final REQUEST_PERMISSION_LOCATION:I = 0x2

.field public static final REQUEST_TURN_WIFI_ON:I = 0x4

.field public static final TAG:Ljava/lang/String; = "BarcodeConnectFragment"


# instance fields
.field private mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private mConductButton:Landroid/widget/Button;

.field private mConductContainer:Landroid/view/ViewGroup;

.field private mConductImage:Landroid/widget/ImageView;

.field private mConductText:Landroid/widget/TextView;

.field private mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

.field private mDeviceSelectedListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPermissionRequestedCamera:Z

.field private mPermissionRequestedLocation:Z

.field private mPermissionWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

.field private mShowAsText:Z

.field private mTaskContainer:Landroid/view/View;

.field private mTaskInterruptButton:Landroid/widget/Button;

.field private mTextModeIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/Fragment;-><init>()V

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mPermissionRequestedCamera:Z

    .line 92
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mPermissionRequestedLocation:Z

    .line 93
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mShowAsText:Z

    .line 96
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mPermissionWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    .line 113
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$3;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mRegisteredListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mDeviceSelectedListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mPermissionWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    return-object p0
.end method


# virtual methods
.method public getIconRes()I
    .registers 2

    const v0, 0x7f0700ef

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f110213

    .line 372
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected handleBarcode(Ljava/lang/String;)V
    .registers 12

    const-string v0, "nwPwd"

    const-string v1, "ipAdr"

    const-string v2, "nwName"

    const-string v3, "pin"

    .line 258
    new-instance v4, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$5;

    invoke-direct {v4, p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$5;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)V

    const/4 v5, 0x0

    const v6, 0x7f110033

    .line 269
    :try_start_11
    iget-boolean v7, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mShowAsText:Z

    if-nez v7, :cond_bd

    .line 272
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
    new-instance v8, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    invoke-direct {v8}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;-><init>()V

    .line 275
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 276
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2b

    :cond_2a
    const/4 v3, -0x1

    .line 279
    :goto_2b
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 280
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->SSID:Ljava/lang/String;

    const/4 v1, 0x1

    .line 281
    iput-boolean v1, v8, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->qrConnection:Z

    .line 282
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 285
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->password:Ljava/lang/String;

    const-string v0, "ntKeyMgmt"

    .line 286
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v8, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->keyManagement:I

    .line 289
    :cond_4e
    invoke-virtual {p0, v8, v3}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->makeAcquaintance(Ljava/lang/Object;I)V

    goto/16 :goto_105

    .line 290
    :cond_53
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const-string v0, "bsid"

    .line 291
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 297
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_88

    .line 298
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 299
    invoke-virtual {p0, v1, v3}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->makeAcquaintance(Ljava/lang/Object;I)V

    goto/16 :goto_105

    .line 301
    :cond_88
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pauseAndWait()V

    .line 303
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1100d3

    .line 304
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v6, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f110084

    new-instance v7, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$6;

    invoke-direct {v7, p0, v1, v3}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$6;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;Ljava/lang/String;I)V

    .line 306
    invoke-virtual {v0, v2, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_105

    .line 318
    :cond_b5
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Failed to attain known variables."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_bd
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Showing as text."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_c5} :catch_c5

    :catch_c5
    move-exception v0

    .line 321
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 323
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pauseAndWait()V

    .line 325
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110246

    .line 326
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 328
    invoke-virtual {v0, v6, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11007e

    new-instance v2, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$8;

    invoke-direct {v2, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$8;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110039

    new-instance v2, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$7;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 358
    invoke-virtual {p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_105
    return-void
.end method

.method protected makeAcquaintance(Ljava/lang/Object;I)V
    .registers 9

    .line 377
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v5, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mRegisteredListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->makeAcquaintance(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UITask;Ljava/lang/Object;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 138
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    new-instance p1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;-><init>(Lcom/genonbeta/TrebleShot/util/ConnectionUtils;Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;)V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    .line 142
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 170
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d000c

    .line 171
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0c0057

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09011f

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductContainer:Landroid/view/ViewGroup;

    const p2, 0x7f090122

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mTextModeIndicator:Landroid/widget/ImageView;

    const p2, 0x7f09011e

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductButton:Landroid/widget/Button;

    const p2, 0x7f09011d

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    const p2, 0x7f090121

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductText:Landroid/widget/TextView;

    const p2, 0x7f090120

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductImage:Landroid/widget/ImageView;

    const p2, 0x7f0900c1

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mTaskContainer:Landroid/view/View;

    const p2, 0x7f0901e7

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mTaskInterruptButton:Landroid/widget/Button;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0901c7

    if-ne v0, v2, :cond_26

    .line 180
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110211

    .line 181
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v2, 0x0

    .line 182
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_61

    :cond_26
    const v2, 0x7f0900ae

    if-ne v0, v2, :cond_62

    .line 185
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mShowAsText:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mShowAsText:Z

    .line 186
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mTextModeIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    goto :goto_39

    :cond_37
    const/16 v0, 0x8

    :goto_39
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mShowAsText:Z

    if-eqz v0, :cond_44

    const v0, 0x7f0700ef

    goto :goto_47

    :cond_44
    const v0, 0x7f0700fa

    :goto_47
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 189
    iget-boolean p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mShowAsText:Z

    if-eqz p1, :cond_52

    const p1, 0x7f1100fd

    goto :goto_55

    :cond_52
    const p1, 0x7f1100fc

    :goto_55
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 192
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->updateState()V

    :goto_61
    return v1

    .line 194
    :cond_62
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 3

    .line 235
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/Fragment;->onPause()V

    .line 237
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pauseAndWait()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    .line 244
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/android/framework/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 246
    array-length p1, p2

    if-lez p1, :cond_21

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 247
    :goto_8
    array-length v1, p2

    if-ge v0, v1, :cond_21

    .line 248
    aget-object v1, p2, v0

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    aget v1, p3, v0

    if-nez v1, :cond_1e

    .line 250
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->updateState()V

    .line 251
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mPermissionRequestedCamera:Z

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 223
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/Fragment;->onResume()V

    .line 225
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->updateState()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 202
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 204
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    new-instance p2, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$4;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$4;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)V

    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->decodeContinuous(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    return-void
.end method

.method protected setConductItemsShowing(Z)V
    .registers 3

    .line 489
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setDeviceSelectedListener(Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mDeviceSelectedListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    return-void
.end method

.method public updateState()V
    .registers 8

    .line 415
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 418
    :cond_7
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 419
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 421
    :goto_26
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_3b

    iget-object v5, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    .line 422
    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->canAccessLocation()Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v5, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v5, 0x1

    :goto_3c
    if-nez v0, :cond_42

    .line 423
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mShowAsText:Z

    if-eqz v0, :cond_48

    :cond_42
    if-eqz v1, :cond_48

    if-eqz v5, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    if-nez v0, :cond_de

    .line 426
    iget-object v6, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v6}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pauseAndWait()V

    if-nez v1, :cond_86

    .line 429
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductImage:Landroid/widget/ImageView;

    const v5, 0x7f0700a7

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductText:Landroid/widget/TextView;

    const v5, 0x7f110160

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 431
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductButton:Landroid/widget/Button;

    const v5, 0x7f110025

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 433
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductButton:Landroid/widget/Button;

    new-instance v5, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$10;

    invoke-direct {v5, p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$10;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mPermissionRequestedCamera:Z

    if-nez v1, :cond_83

    .line 443
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v2, v5, v3

    invoke-static {v1, v5, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 445
    :cond_83
    iput-boolean v4, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mPermissionRequestedCamera:Z

    goto :goto_eb

    :cond_86
    const v1, 0x7f110044

    if-nez v5, :cond_be

    .line 447
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductImage:Landroid/widget/ImageView;

    const v5, 0x7f0700e9

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductText:Landroid/widget/TextView;

    const v5, 0x7f1100e9

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 449
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    .line 451
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductButton:Landroid/widget/Button;

    new-instance v2, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$11;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$11;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mPermissionRequestedLocation:Z

    if-nez v1, :cond_bb

    .line 461
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v2, v3

    invoke-static {v1, v2, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 463
    :cond_bb
    iput-boolean v4, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mPermissionRequestedLocation:Z

    goto :goto_eb

    .line 465
    :cond_be
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductImage:Landroid/widget/ImageView;

    const v4, 0x7f0700fb

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 466
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductText:Landroid/widget/TextView;

    const v4, 0x7f110212

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 467
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    .line 469
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductButton:Landroid/widget/Button;

    new-instance v2, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$12;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$12;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_eb

    .line 479
    :cond_de
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 480
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mConductText:Landroid/widget/TextView;

    const v2, 0x7f110211

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_eb
    xor-int/lit8 v1, v0, 0x1

    .line 483
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->setConductItemsShowing(Z)V

    .line 484
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-eqz v0, :cond_f5

    goto :goto_f7

    :cond_f5
    const/16 v3, 0x8

    :goto_f7
    invoke-virtual {v1, v3}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setVisibility(I)V

    return-void
.end method

.method public updateState(ZLcom/genonbeta/android/framework/util/Interrupter;)V
    .registers 5

    .line 387
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_c

    .line 388
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pauseAndWait()V

    return-void

    :cond_c
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 394
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pauseAndWait()V

    .line 395
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->setConductItemsShowing(Z)V

    goto :goto_20

    .line 397
    :cond_18
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mBarcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 398
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->updateState()V

    .line 401
    :goto_20
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mTaskContainer:Landroid/view/View;

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/16 v0, 0x8

    :goto_27
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->mTaskInterruptButton:Landroid/widget/Button;

    if-eqz p1, :cond_34

    new-instance p1, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$9;

    invoke-direct {p1, p0, p2}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$9;-><init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;Lcom/genonbeta/android/framework/util/Interrupter;)V

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateTaskStarted(Lcom/genonbeta/android/framework/util/Interrupter;)V
    .registers 3

    const/4 v0, 0x1

    .line 495
    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->updateState(ZLcom/genonbeta/android/framework/util/Interrupter;)V

    return-void
.end method

.method public updateTaskStopped()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 501
    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->updateState(ZLcom/genonbeta/android/framework/util/Interrupter;)V

    return-void
.end method
