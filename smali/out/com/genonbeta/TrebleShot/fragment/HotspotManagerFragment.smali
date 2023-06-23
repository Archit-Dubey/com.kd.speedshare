.class public Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;
.super Lcom/genonbeta/android/framework/app/Fragment;
.source "HotspotManagerFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;
.implements Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;
    }
.end annotation


# static fields
.field public static final REQUEST_LOCATION_PERMISSION_FOR_HOTSPOT:I = 0x283


# instance fields
.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field private mCodeView:Landroid/widget/ImageView;

.field private mColorPassiveState:Landroid/content/res/ColorStateList;

.field private mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

.field private mContainerText1:Landroid/view/View;

.field private mContainerText2:Landroid/view/View;

.field private mContainerText3:Landroid/view/View;

.field private mHelpMenuItem:Landroid/view/MenuItem;

.field private mHotspotStartedExternally:Z

.field private mHotspotWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;

.field private mText1:Landroid/widget/TextView;

.field private mText2:Landroid/widget/TextView;

.field private mText3:Landroid/widget/TextView;

.field private mToggleButton:Landroid/widget/Button;

.field private mWaitForHotspot:Z

.field private mWaitForWiFi:Z

.field private mWiFiWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/Fragment;-><init>()V

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 69
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;-><init>(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$1;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mWaitForHotspot:Z

    .line 83
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mWaitForWiFi:Z

    .line 84
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mHotspotStartedExternally:Z

    .line 88
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mHotspotWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    .line 97
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mWiFiWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    return-void
.end method

.method static synthetic access$102(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mWaitForHotspot:Z

    return p1
.end method

.method static synthetic access$202(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mWaitForWiFi:Z

    return p1
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->toggleHotspot()V

    return-void
.end method

.method static synthetic access$400(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->updateState()V

    return-void
.end method

.method static synthetic access$500(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->updateViews(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->updateViewsStartedExternally()V

    return-void
.end method

.method private showMenu()V
    .registers 3

    .line 324
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mHelpMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_26

    .line 325
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 326
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 325
    :goto_23
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_26
    return-void
.end method

.method private toggleHotspot()V
    .registers 6

    .line 231
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mHotspotStartedExternally:Z

    if-eqz v0, :cond_f

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f

    .line 234
    :cond_f
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x283

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mHotspotWatcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->toggleHotspot(ZLandroidx/fragment/app/FragmentActivity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z

    :goto_1f
    return-void
.end method

.method private updateState()V
    .registers 5

    .line 331
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->isEnabled()Z

    move-result v0

    .line 332
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 334
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->showMenu()V

    if-nez v0, :cond_25

    .line 337
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->updateViewsWithBlank()V

    goto :goto_5d

    .line 338
    :cond_25
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    instance-of v0, v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;

    if-eqz v0, :cond_3f

    if-eqz v1, :cond_3f

    .line 340
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->getAllowedKeyManagement(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    invoke-direct {p0, v0, v2, v1}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->updateViews(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5d

    .line 341
    :cond_3f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5d

    .line 342
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 343
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.REQUEST_HOTSPOT_STATUS"

    .line 344
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private updateViews(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mHotspotStartedExternally:Z

    .line 262
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "nwName"

    .line 263
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "nwPwd"

    .line 264
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ntKeyMgmt"

    .line 265
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const p3, 0x7f1101f6

    .line 267
    invoke-virtual {p0, p3}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f11008a

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->updateViews(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    return-void
.end method

.method private updateViews(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    const-string v0, "pin"

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 280
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 281
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const/16 v3, 0x8

    if-eqz v2, :cond_5e

    .line 287
    :try_start_18
    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v4

    .line 289
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 291
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 292
    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 297
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v5, 0x190

    invoke-virtual {v0, p1, v4, v5, v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 298
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeEncoder;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;-><init>()V

    .line 299
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->createBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 301
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object v0

    .line 302
    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mCodeView:Landroid/widget/ImageView;

    .line 303
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_66

    .line 305
    :cond_5e
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mCodeView:Landroid/widget/ImageView;

    const v0, 0x7f0700ee

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    :goto_66
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mCodeView:Landroid/widget/ImageView;

    if-eqz v2, :cond_6c

    const/4 v0, 0x0

    goto :goto_6e

    :cond_6c
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mColorPassiveState:Landroid/content/res/ColorStateList;

    :goto_6e
    invoke-static {p1, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_71} :catch_8e
    .catchall {:try_start_18 .. :try_end_71} :catchall_8c

    .line 311
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText1:Landroid/view/View;

    if-nez p2, :cond_78

    const/16 v0, 0x8

    goto :goto_79

    :cond_78
    const/4 v0, 0x0

    :goto_79
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText2:Landroid/view/View;

    if-nez p3, :cond_83

    const/16 v0, 0x8

    goto :goto_84

    :cond_83
    const/4 v0, 0x0

    :goto_84
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText3:Landroid/view/View;

    if-nez p4, :cond_ae

    goto :goto_ac

    :catchall_8c
    move-exception p1

    goto :goto_c6

    :catch_8e
    move-exception p1

    .line 309
    :try_start_8f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_8c

    .line 311
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText1:Landroid/view/View;

    if-nez p2, :cond_99

    const/16 v0, 0x8

    goto :goto_9a

    :cond_99
    const/4 v0, 0x0

    :goto_9a
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText2:Landroid/view/View;

    if-nez p3, :cond_a4

    const/16 v0, 0x8

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText3:Landroid/view/View;

    if-nez p4, :cond_ae

    :goto_ac
    const/16 v1, 0x8

    :cond_ae
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mText1:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mText2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mText3:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mToggleButton:Landroid/widget/Button;

    invoke-virtual {p1, p5}, Landroid/widget/Button;->setText(I)V

    return-void

    .line 311
    :goto_c6
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText1:Landroid/view/View;

    if-nez p2, :cond_cd

    const/16 v2, 0x8

    goto :goto_ce

    :cond_cd
    const/4 v2, 0x0

    :goto_ce
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText2:Landroid/view/View;

    if-nez p3, :cond_d8

    const/16 v2, 0x8

    goto :goto_d9

    :cond_d8
    const/4 v2, 0x0

    :goto_d9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText3:Landroid/view/View;

    if-nez p4, :cond_e2

    const/16 v1, 0x8

    :cond_e2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mText1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mText2:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mText3:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mToggleButton:Landroid/widget/Button;

    invoke-virtual {p2, p5}, Landroid/widget/Button;->setText(I)V

    .line 319
    throw p1
.end method

.method private updateViewsStartedExternally()V
    .registers 8

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mHotspotStartedExternally:Z

    const v0, 0x7f1101af

    .line 252
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f11008a

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->updateViews(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private updateViewsWithBlank()V
    .registers 8

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mHotspotStartedExternally:Z

    const v0, 0x7f1101f7

    .line 242
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f110227

    move-object v1, p0

    .line 241
    invoke-direct/range {v1 .. v6}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->updateViews(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;
    .registers 2

    .line 206
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    return-object v0
.end method

.method public getIconRes()I
    .registers 2

    const v0, 0x7f070108

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f110227

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    if-nez v0, :cond_13

    .line 218
    new-instance v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;-><init>(Lcom/genonbeta/TrebleShot/util/ConnectionUtils;Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    .line 220
    :cond_13
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mConnectionUtils:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 109
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.genonbeta.TrebleShot.transaction.action.HOTSPOT_STATUS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 149
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d000f

    .line 150
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0901c7

    .line 151
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mHelpMenuItem:Landroid/view/MenuItem;

    .line 153
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->showMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 121
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0c0060

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 125
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0300b9

    invoke-static {p3, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mColorPassiveState:Landroid/content/res/ColorStateList;

    const p2, 0x7f090131

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mCodeView:Landroid/widget/ImageView;

    const p2, 0x7f090130

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mToggleButton:Landroid/widget/Button;

    const p2, 0x7f090129

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText1:Landroid/view/View;

    const p2, 0x7f09012b

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText2:Landroid/view/View;

    const p2, 0x7f09012e

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mContainerText3:Landroid/view/View;

    const p2, 0x7f090128

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mText1:Landroid/widget/TextView;

    const p2, 0x7f09012a

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mText2:Landroid/widget/TextView;

    const p2, 0x7f09012d

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mText3:Landroid/widget/TextView;

    .line 135
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mToggleButton:Landroid/widget/Button;

    new-instance p3, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$3;

    invoke-direct {p3, p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0901c7

    if-ne v0, v1, :cond_52

    .line 162
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 163
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 164
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getFriendlySSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1100e4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    .line 167
    invoke-virtual {p0, v2, v3}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return p1

    .line 171
    :cond_52
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 3

    .line 200
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/Fragment;->onPause()V

    .line 201
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/android/framework/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x283

    if-ne p2, p1, :cond_a

    .line 182
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->toggleHotspot()V

    :cond_a
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 188
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/Fragment;->onResume()V

    .line 190
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment$StatusReceiver;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->updateState()V

    .line 193
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->mWaitForHotspot:Z

    if-eqz v0, :cond_18

    .line 194
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/HotspotManagerFragment;->toggleHotspot()V

    :cond_18
    return-void
.end method
