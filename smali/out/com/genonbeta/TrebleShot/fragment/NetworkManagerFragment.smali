.class public Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;
.super Lcom/genonbeta/android/framework/app/Fragment;
.source "NetworkManagerFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;
.implements Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;
    }
.end annotation


# instance fields
.field private final REQUEST_LOCATION_PERMISSION:I

.field private mActionButton:Landroid/widget/Button;

.field private mCodeView:Landroid/widget/ImageView;

.field private mColorPassiveState:Landroid/content/res/ColorStateList;

.field private mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

.field private mContainerText1:Landroid/view/View;

.field private mContainerText2:Landroid/view/View;

.field private mContainerText3:Landroid/view/View;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mRequestWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

.field private mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;

.field private mText1:Landroid/widget/TextView;

.field private mText2:Landroid/widget/TextView;

.field private mText3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->REQUEST_LOCATION_PERMISSION:I

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 55
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$1;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;

    .line 68
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mRequestWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;)Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mRequestWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    return-object p0
.end method


# virtual methods
.method public canReadWifiInfo()Z
    .registers 3

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_21

    .line 145
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isLocationServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method public getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;
    .registers 2

    .line 150
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    return-object v0
.end method

.method public getIconRes()I
    .registers 2

    const v0, 0x7f070109

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f110247

    .line 171
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    if-nez v0, :cond_13

    .line 163
    new-instance v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;-><init>(Lcom/genonbeta/TrebleShot/util/ConnectionUtils;Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    .line 165
    :cond_13
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 80
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 90
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0c0066

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0300b9

    invoke-static {p3, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mColorPassiveState:Landroid/content/res/ColorStateList;

    const p2, 0x7f090142

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mCodeView:Landroid/widget/ImageView;

    const p2, 0x7f09013a

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText1:Landroid/view/View;

    const p2, 0x7f09013c

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText2:Landroid/view/View;

    const p2, 0x7f09013f

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText3:Landroid/view/View;

    const p2, 0x7f090139

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mText1:Landroid/widget/TextView;

    const p2, 0x7f09013b

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mText2:Landroid/widget/TextView;

    const p2, 0x7f09013e

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mText3:Landroid/widget/TextView;

    const p2, 0x7f090141

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mActionButton:Landroid/widget/Button;

    .line 102
    new-instance p3, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$2;

    invoke-direct {p3, p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onPause()V
    .registers 3

    .line 138
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/Fragment;->onPause()V

    .line 139
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/android/framework/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_9

    .line 123
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->updateState()V

    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 129
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/Fragment;->onResume()V

    .line 131
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$StatusReceiver;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->updateState()V

    return-void
.end method

.method public updateState()V
    .registers 4

    .line 245
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->canReadWifiInfo()Z

    move-result v1

    if-nez v1, :cond_16

    .line 248
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->updateViewsLocationDisabled()V

    goto :goto_3b

    .line 249
    :cond_16
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isConnectedToAnyNetwork()Z

    move-result v1

    if-nez v1, :cond_24

    .line 250
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->updateViewsWithBlank()V

    goto :goto_3b

    .line 252
    :cond_24
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getCleanNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->convertInet4Address(I)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p0, v1, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->updateViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    return-void
.end method

.method public updateViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 188
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ipAdr"

    .line 189
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "bsid"

    .line 190
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const v4, 0x7f110096

    const p3, 0x7f11018a

    .line 192
    invoke-virtual {p0, p3}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->updateViews(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    return-void
.end method

.method public updateViews(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, "pin"

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 201
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 202
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const/16 v3, 0x8

    if-eqz v2, :cond_5e

    .line 207
    :try_start_18
    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v4

    .line 209
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 212
    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 217
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v5, 0x190

    invoke-virtual {v0, p1, v4, v5, v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 218
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeEncoder;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;-><init>()V

    .line 220
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->createBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 222
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mCodeView:Landroid/widget/ImageView;

    .line 224
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_66

    .line 226
    :cond_5e
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mCodeView:Landroid/widget/ImageView;

    const v0, 0x7f0700ee

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    :goto_66
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mCodeView:Landroid/widget/ImageView;

    if-eqz v2, :cond_6c

    const/4 v0, 0x0

    goto :goto_6e

    :cond_6c
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mColorPassiveState:Landroid/content/res/ColorStateList;

    :goto_6e
    invoke-static {p1, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_71} :catch_8e
    .catchall {:try_start_18 .. :try_end_71} :catchall_8c

    .line 232
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText1:Landroid/view/View;

    if-nez p3, :cond_78

    const/16 v0, 0x8

    goto :goto_79

    :cond_78
    const/4 v0, 0x0

    :goto_79
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText2:Landroid/view/View;

    if-nez p4, :cond_83

    const/16 v0, 0x8

    goto :goto_84

    :cond_83
    const/4 v0, 0x0

    :goto_84
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText3:Landroid/view/View;

    if-nez p5, :cond_ae

    goto :goto_ac

    :catchall_8c
    move-exception p1

    goto :goto_c6

    :catch_8e
    move-exception p1

    .line 230
    :try_start_8f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_8c

    .line 232
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText1:Landroid/view/View;

    if-nez p3, :cond_99

    const/16 v0, 0x8

    goto :goto_9a

    :cond_99
    const/4 v0, 0x0

    :goto_9a
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText2:Landroid/view/View;

    if-nez p4, :cond_a4

    const/16 v0, 0x8

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText3:Landroid/view/View;

    if-nez p5, :cond_ae

    :goto_ac
    const/16 v1, 0x8

    :cond_ae
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 237
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mText1:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mText2:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mText3:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 232
    :goto_c6
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText1:Landroid/view/View;

    if-nez p3, :cond_cd

    const/16 v2, 0x8

    goto :goto_ce

    :cond_cd
    const/4 v2, 0x0

    :goto_ce
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText2:Landroid/view/View;

    if-nez p4, :cond_d8

    const/16 v2, 0x8

    goto :goto_d9

    :cond_d8
    const/4 v2, 0x0

    :goto_d9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mContainerText3:Landroid/view/View;

    if-nez p5, :cond_e2

    const/16 v1, 0x8

    :cond_e2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 237
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mText1:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mText2:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->mText3:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    throw p1
.end method

.method public updateViewsLocationDisabled()V
    .registers 8

    const v0, 0x7f1100e9

    .line 176
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const v3, 0x7f110044

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->updateViews(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateViewsWithBlank()V
    .registers 8

    const v0, 0x7f1100c5

    .line 181
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const v3, 0x7f110096

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->updateViews(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
