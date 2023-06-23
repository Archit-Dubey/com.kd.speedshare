.class public Lcom/anjlab/android/iab/v3/BillingProcessor;
.super Lcom/anjlab/android/iab/v3/BillingBase;
.source "BillingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anjlab/android/iab/v3/BillingProcessor$HistoryInitializationTask;,
        Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;
    }
.end annotation


# static fields
.field private static final DATE_MERCHANT_LIMIT_1:Ljava/util/Date;

.field private static final DATE_MERCHANT_LIMIT_2:Ljava/util/Date;

.field private static final LOG_TAG:Ljava/lang/String; = "iabv3"

.field private static final MANAGED_PRODUCTS_CACHE_KEY:Ljava/lang/String; = ".products.cache.v2_6"

.field private static final PURCHASE_FLOW_REQUEST_CODE:I = 0x7ecb

.field private static final PURCHASE_PAYLOAD_CACHE_KEY:Ljava/lang/String; = ".purchase.last.v2_6"

.field private static final RESTORE_KEY:Ljava/lang/String; = ".products.restored.v2_6"

.field private static final SETTINGS_VERSION:Ljava/lang/String; = ".v2_6"

.field private static final SUBSCRIPTIONS_CACHE_KEY:Ljava/lang/String; = ".subscriptions.cache.v2_6"


# instance fields
.field private billingService:Lcom/android/vending/billing/IInAppBillingService;

.field private cachedProducts:Lcom/anjlab/android/iab/v3/BillingCache;

.field private cachedSubscriptions:Lcom/anjlab/android/iab/v3/BillingCache;

.field private contextPackageName:Ljava/lang/String;

.field private developerMerchantId:Ljava/lang/String;

.field private eventHandler:Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

.field private isOneTimePurchaseExtraParamsSupported:Z

.field private isOneTimePurchasesSupported:Z

.field private isSubsUpdateSupported:Z

.field private isSubscriptionExtraParamsSupported:Z

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private signatureBase64:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x7dc

    const/16 v2, 0xb

    const/4 v3, 0x5

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->DATE_MERCHANT_LIMIT_1:Ljava/util/Date;

    const/16 v1, 0x7df

    const/4 v2, 0x6

    const/16 v3, 0x15

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 72
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/anjlab/android/iab/v3/BillingProcessor;->DATE_MERCHANT_LIMIT_2:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;)V
    .registers 5

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/anjlab/android/iab/v3/BillingProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/anjlab/android/iab/v3/BillingProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;Z)V
    .registers 6

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anjlab/android/iab/v3/BillingBase;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance p1, Lcom/anjlab/android/iab/v3/BillingProcessor$1;

    invoke-direct {p1, p0}, Lcom/anjlab/android/iab/v3/BillingProcessor$1;-><init>(Lcom/anjlab/android/iab/v3/BillingProcessor;)V

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    .line 176
    iput-object p2, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->signatureBase64:Ljava/lang/String;

    .line 177
    iput-object p4, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->eventHandler:Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    .line 178
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    .line 179
    new-instance p1, Lcom/anjlab/android/iab/v3/BillingCache;

    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, ".products.cache.v2_6"

    invoke-direct {p1, p2, p4}, Lcom/anjlab/android/iab/v3/BillingCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedProducts:Lcom/anjlab/android/iab/v3/BillingCache;

    .line 180
    new-instance p1, Lcom/anjlab/android/iab/v3/BillingCache;

    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, ".subscriptions.cache.v2_6"

    invoke-direct {p1, p2, p4}, Lcom/anjlab/android/iab/v3/BillingCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedSubscriptions:Lcom/anjlab/android/iab/v3/BillingCache;

    .line 181
    iput-object p3, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->developerMerchantId:Ljava/lang/String;

    if-eqz p5, :cond_3d

    .line 184
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->bindPlayServices()V

    :cond_3d
    return-void
.end method

.method static synthetic access$000(Lcom/anjlab/android/iab/v3/BillingProcessor;)Z
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isPurchaseHistoryRestored()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/anjlab/android/iab/v3/BillingProcessor;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->setPurchaseHistoryRestored()V

    return-void
.end method

.method static synthetic access$200(Lcom/anjlab/android/iab/v3/BillingProcessor;)Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->eventHandler:Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/anjlab/android/iab/v3/BillingProcessor;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method private bindPlayServices()V
    .registers 5

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getBindServiceIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_1c

    :catch_f
    move-exception v0

    const-string v1, "iabv3"

    const-string v2, "error in bindPlayServices"

    .line 212
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x71

    .line 213
    invoke-direct {p0, v1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    :goto_1c
    return-void
.end method

.method private checkMerchant(Lcom/anjlab/android/iab/v3/TransactionDetails;)Z
    .registers 6

    .line 733
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->developerMerchantId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 737
    :cond_6
    iget-object v0, p1, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v0, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object v0, v0, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseTime:Ljava/util/Date;

    sget-object v2, Lcom/anjlab/android/iab/v3/BillingProcessor;->DATE_MERCHANT_LIMIT_1:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 741
    :cond_15
    iget-object v0, p1, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v0, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object v0, v0, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseTime:Ljava/util/Date;

    sget-object v2, Lcom/anjlab/android/iab/v3/BillingProcessor;->DATE_MERCHANT_LIMIT_2:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v1

    .line 745
    :cond_24
    iget-object v0, p1, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v0, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object v0, v0, Lcom/anjlab/android/iab/v3/PurchaseData;->orderId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    iget-object v0, p1, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v0, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object v0, v0, Lcom/anjlab/android/iab/v3/PurchaseData;->orderId:Ljava/lang/String;

    .line 746
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_62

    .line 750
    :cond_3e
    iget-object v0, p1, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v0, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object v0, v0, Lcom/anjlab/android/iab/v3/PurchaseData;->orderId:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_4d

    return v2

    .line 756
    :cond_4d
    iget-object p1, p1, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseData;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 757
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->developerMerchantId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    return v1

    :cond_62
    :goto_62
    return v2
.end method

.method private detectPurchaseTypeFromPurchaseResponseData(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    .line 898
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPurchasePayload()Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "subs"

    if-nez v1, :cond_13

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v2

    :cond_13
    if-eqz p1, :cond_1e

    const-string v0, "autoRenewing"

    .line 905
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    return-object v2

    :cond_1e
    const-string p1, "inapp"

    return-object p1
.end method

.method private static getBindServiceIntent()Landroid/content/Intent;
    .registers 2

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getPurchasePayload()Ljava/lang/String;
    .registers 3

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".purchase.last.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPurchaseTransactionDetails(Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingCache;)Lcom/anjlab/android/iab/v3/TransactionDetails;
    .registers 3

    .line 763
    invoke-virtual {p2, p1}, Lcom/anjlab/android/iab/v3/BillingCache;->getDetails(Ljava/lang/String;)Lcom/anjlab/android/iab/v3/PurchaseInfo;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 764
    iget-object p2, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14

    .line 766
    new-instance p2, Lcom/anjlab/android/iab/v3/TransactionDetails;

    invoke-direct {p2, p1}, Lcom/anjlab/android/iab/v3/TransactionDetails;-><init>(Lcom/anjlab/android/iab/v3/PurchaseInfo;)V

    return-object p2

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/anjlab/android/iab/v3/SkuDetails;
    .registers 4

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-direct {p0, v0, p2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getSkuDetails(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 811
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1c

    const/4 p2, 0x0

    .line 813
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anjlab/android/iab/v3/SkuDetails;

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSkuDetails(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anjlab/android/iab/v3/SkuDetails;",
            ">;"
        }
    .end annotation

    const-string v0, "iabv3"

    .line 820
    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x0

    if-eqz v1, :cond_83

    if-eqz p1, :cond_83

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_83

    .line 824
    :try_start_f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    .line 825
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 826
    iget-object v3, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p2, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "RESPONSE_CODE"

    .line 830
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_56

    .line 834
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "DETAILS_LIST"

    .line 835
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_55

    .line 838
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 840
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 841
    new-instance v1, Lcom/anjlab/android/iab/v3/SkuDetails;

    invoke-direct {v1, v3}, Lcom/anjlab/android/iab/v3/SkuDetails;-><init>(Lorg/json/JSONObject;)V

    .line 842
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_55
    return-object p1

    .line 849
    :cond_56
    invoke-direct {p0, v1, v2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    const-string p2, "Failed to retrieve info for %d products, %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 851
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 852
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p1

    .line 850
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_77} :catch_78

    goto :goto_83

    :catch_78
    move-exception p1

    const-string p2, "Failed to call getSkuDetails"

    .line 857
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p2, 0x70

    .line 858
    invoke-direct {p0, p2, p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    :cond_83
    :goto_83
    return-object v2
.end method

.method public static isIabServiceAvailable(Landroid/content/Context;)Z
    .registers 3

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 220
    invoke-static {}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getBindServiceIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 221
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private isPurchaseHistoryRestored()Z
    .registers 3

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".products.restored.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadPurchasesByType(Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingCache;)Z
    .registers 11

    .line 267
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 273
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, p1, v4}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    .line 275
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6e

    .line 277
    invoke-virtual {p2}, Lcom/anjlab/android/iab/v3/BillingCache;->clear()V

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    .line 279
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "INAPP_DATA_SIGNATURE_LIST"

    .line 281
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz v0, :cond_5f

    const/4 v2, 0x0

    .line 284
    :goto_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 286
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 288
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 290
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_52

    .line 291
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_52

    .line 292
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_53

    :cond_52
    move-object v6, v4

    :goto_53
    const-string v7, "productId"

    .line 293
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v3, v6}, Lcom/anjlab/android/iab/v3/BillingCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5c} :catch_61

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_5f
    const/4 p1, 0x1

    return p1

    :catch_61
    move-exception p1

    const/16 p2, 0x64

    .line 304
    invoke-direct {p0, p2, p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    const-string p2, "iabv3"

    const-string v0, "Error in loadPurchasesByType"

    .line 305
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6e
    return v1
.end method

.method public static newBillingProcessor(Landroid/content/Context;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;)Lcom/anjlab/android/iab/v3/BillingProcessor;
    .registers 4

    const/4 v0, 0x0

    .line 148
    invoke-static {p0, p1, v0, p2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->newBillingProcessor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;)Lcom/anjlab/android/iab/v3/BillingProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static newBillingProcessor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;)Lcom/anjlab/android/iab/v3/BillingProcessor;
    .registers 11

    .line 158
    new-instance v6, Lcom/anjlab/android/iab/v3/BillingProcessor;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/anjlab/android/iab/v3/BillingProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;Z)V

    return-object v6
.end method

.method private purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 592
    invoke-direct/range {v0 .. v5}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private purchase(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 598
    invoke-direct/range {v0 .. v6}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private purchase(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v8, p6

    const-string v3, "skusToReplace"

    const-string v4, "subs"

    const-string v10, "iabv3"

    const-string v5, ":"

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isInitialized()Z

    move-result v6

    const/4 v11, 0x0

    if-eqz v6, :cond_14d

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14d

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_29

    goto/16 :goto_14d

    .line 610
    :cond_29
    :try_start_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 611
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5b

    .line 613
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5b
    if-eqz v2, :cond_71

    .line 617
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_72

    :cond_71
    move-object v12, v6

    .line 619
    :goto_72
    invoke-direct {v1, v12}, Lcom/anjlab/android/iab/v3/BillingProcessor;->savePurchasePayload(Ljava/lang/String;)V

    if-eqz v0, :cond_af

    .line 621
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    if-nez v8, :cond_90

    .line 625
    iget-object v2, v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x5

    iget-object v4, v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v12

    invoke-interface/range {v2 .. v8}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_d0

    .line 634
    :cond_90
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 636
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 640
    :cond_9e
    iget-object v2, v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x7

    iget-object v4, v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v12

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_d0

    :cond_af
    if-nez v8, :cond_c0

    .line 652
    iget-object v2, v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v12

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_d0

    .line 660
    :cond_c0
    iget-object v2, v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x7

    iget-object v4, v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v12

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_d0
    if-eqz v0, :cond_140

    const-string v2, "RESPONSE_CODE"

    .line 671
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_104

    const-string v2, "BUY_INTENT"

    .line 674
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz p1, :cond_fe

    if-eqz v0, :cond_fe

    .line 677
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v13

    const/16 v14, 0x7ecb

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_140

    :cond_fe
    const/16 v0, 0x67

    .line 683
    invoke-direct {v1, v0, v3}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    goto :goto_140

    :cond_104
    const/4 v0, 0x7

    if-ne v2, v0, :cond_13b

    .line 688
    invoke-virtual {v1, v9}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isPurchased(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_116

    invoke-virtual {v1, v9}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubscribed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_116

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->loadOwnedPurchasesFromGoogle()Z

    .line 692
    :cond_116
    invoke-virtual {v1, v9}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;)Lcom/anjlab/android/iab/v3/TransactionDetails;

    move-result-object v0

    .line 693
    invoke-direct {v1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->checkMerchant(Lcom/anjlab/android/iab/v3/TransactionDetails;)Z

    move-result v2

    if-nez v2, :cond_12b

    const-string v0, "Invalid or tampered merchant id!"

    .line 695
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x68

    .line 696
    invoke-direct {v1, v0, v3}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    return v11

    .line 699
    :cond_12b
    iget-object v2, v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->eventHandler:Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    if-eqz v2, :cond_140

    if-nez v0, :cond_135

    .line 703
    invoke-virtual {v1, v9}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getSubscriptionTransactionDetails(Ljava/lang/String;)Lcom/anjlab/android/iab/v3/TransactionDetails;

    move-result-object v0

    .line 705
    :cond_135
    iget-object v2, v1, Lcom/anjlab/android/iab/v3/BillingProcessor;->eventHandler:Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    invoke-interface {v2, v9, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;->onProductPurchased(Ljava/lang/String;Lcom/anjlab/android/iab/v3/TransactionDetails;)V

    goto :goto_140

    :cond_13b
    const/16 v0, 0x65

    .line 710
    invoke-direct {v1, v0, v3}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_140} :catch_142

    :cond_140
    :goto_140
    const/4 v0, 0x1

    return v0

    :catch_142
    move-exception v0

    const-string v2, "Error in purchase"

    .line 717
    invoke-static {v10, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0x6e

    .line 718
    invoke-direct {v1, v2, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    :cond_14d
    :goto_14d
    return v11
.end method

.method private reportBillingError(ILjava/lang/Throwable;)V
    .registers 4

    .line 1014
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->eventHandler:Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    if-eqz v0, :cond_7

    .line 1016
    invoke-interface {v0, p1, p2}, Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method private savePurchasePayload(Ljava/lang/String;)V
    .registers 4

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".purchase.last.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setPurchaseHistoryRestored()V
    .registers 3

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".products.restored.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->saveBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    return-void
.end method

.method private verifyPurchaseSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 975
    :try_start_1
    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->signatureBase64:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->signatureBase64:Ljava/lang/String;

    .line 976
    invoke-static {p1, v1, p2, p3}, Lcom/anjlab/android/iab/v3/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_12

    if-eqz p1, :cond_12

    :cond_11
    const/4 v0, 0x1

    :catch_12
    :cond_12
    return v0
.end method


# virtual methods
.method public consumePurchase(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "iabv3"

    .line 773
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isInitialized()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 779
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedProducts:Lcom/anjlab/android/iab/v3/BillingCache;

    invoke-direct {p0, p1, v1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingCache;)Lcom/anjlab/android/iab/v3/TransactionDetails;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 780
    iget-object v3, v1, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 782
    iget-object v3, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseToken:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_47

    .line 787
    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedProducts:Lcom/anjlab/android/iab/v3/BillingCache;

    invoke-virtual {v1, p1}, Lcom/anjlab/android/iab/v3/BillingCache;->remove(Ljava/lang/String;)V

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully consumed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " purchase."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_47
    const/4 v4, 0x0

    .line 793
    invoke-direct {p0, v1, v4}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    const-string v4, "Failed to consume %s: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 794
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5f} :catch_60

    goto :goto_6b

    :catch_60
    move-exception p1

    const-string v1, "Error in consumePurchase"

    .line 800
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x6f

    .line 801
    invoke-direct {p0, v0, p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    :cond_6b
    :goto_6b
    return v2
.end method

.method public getPurchaseListingDetails(Ljava/lang/String;)Lcom/anjlab/android/iab/v3/SkuDetails;
    .registers 3

    const-string v0, "inapp"

    .line 866
    invoke-direct {p0, p1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/anjlab/android/iab/v3/SkuDetails;

    move-result-object p1

    return-object p1
.end method

.method public getPurchaseListingDetails(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/anjlab/android/iab/v3/SkuDetails;",
            ">;"
        }
    .end annotation

    const-string v0, "inapp"

    .line 876
    invoke-direct {p0, p1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getSkuDetails(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPurchaseTransactionDetails(Ljava/lang/String;)Lcom/anjlab/android/iab/v3/TransactionDetails;
    .registers 3

    .line 887
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedProducts:Lcom/anjlab/android/iab/v3/BillingCache;

    invoke-direct {p0, p1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingCache;)Lcom/anjlab/android/iab/v3/TransactionDetails;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionListingDetails(Ljava/lang/String;)Lcom/anjlab/android/iab/v3/SkuDetails;
    .registers 3

    const-string v0, "subs"

    .line 871
    invoke-direct {p0, p1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/anjlab/android/iab/v3/SkuDetails;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionListingDetails(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/anjlab/android/iab/v3/SkuDetails;",
            ">;"
        }
    .end annotation

    const-string v0, "subs"

    .line 881
    invoke-direct {p0, p1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getSkuDetails(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionTransactionDetails(Ljava/lang/String;)Lcom/anjlab/android/iab/v3/TransactionDetails;
    .registers 3

    .line 893
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedSubscriptions:Lcom/anjlab/android/iab/v3/BillingCache;

    invoke-direct {p0, p1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingCache;)Lcom/anjlab/android/iab/v3/TransactionDetails;

    move-result-object p1

    return-object p1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 10

    const/4 v0, 0x0

    const/16 v1, 0x7ecb

    if-eq p1, v1, :cond_6

    return v0

    :cond_6
    const-string p1, "iabv3"

    if-nez p3, :cond_10

    const-string p2, "handleActivityResult: data is null!"

    .line 920
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_10
    const-string v1, "RESPONSE_CODE"

    .line 923
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 924
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "resultCode = %d, responseCode = %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_94

    if-nez v1, :cond_94

    const-string p2, "INAPP_PURCHASE_DATA"

    .line 928
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "INAPP_DATA_SIGNATURE"

    .line 929
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 932
    :try_start_41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "productId"

    .line 933
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 934
    invoke-direct {p0, v1, p2, p3}, Lcom/anjlab/android/iab/v3/BillingProcessor;->verifyPurchaseSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 936
    invoke-direct {p0, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->detectPurchaseTypeFromPurchaseResponseData(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "subs"

    .line 937
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedSubscriptions:Lcom/anjlab/android/iab/v3/BillingCache;

    goto :goto_63

    :cond_61
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedProducts:Lcom/anjlab/android/iab/v3/BillingCache;

    .line 939
    :goto_63
    invoke-virtual {v0, v1, p2, p3}, Lcom/anjlab/android/iab/v3/BillingCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->eventHandler:Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    if-eqz v0, :cond_90

    .line 942
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->eventHandler:Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;

    new-instance v4, Lcom/anjlab/android/iab/v3/TransactionDetails;

    new-instance v5, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    invoke-direct {v5, p2, p3}, Lcom/anjlab/android/iab/v3/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/anjlab/android/iab/v3/TransactionDetails;-><init>(Lcom/anjlab/android/iab/v3/PurchaseInfo;)V

    invoke-interface {v0, v1, v4}, Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;->onProductPurchased(Ljava/lang/String;Lcom/anjlab/android/iab/v3/TransactionDetails;)V

    goto :goto_90

    :cond_7a
    const-string p2, "Public key signature doesn\'t match!"

    .line 949
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x66

    .line 950
    invoke-direct {p0, p2, v2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_84} :catch_85

    goto :goto_90

    :catch_85
    move-exception p2

    const-string p3, "Error in handleActivityResult"

    .line 955
    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x6e

    .line 956
    invoke-direct {p0, p1, p2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    .line 958
    :cond_90
    :goto_90
    invoke-direct {p0, v2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->savePurchasePayload(Ljava/lang/String;)V

    goto :goto_97

    .line 962
    :cond_94
    invoke-direct {p0, v1, v2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->reportBillingError(ILjava/lang/Throwable;)V

    :goto_97
    return v3
.end method

.method public initialize()V
    .registers 1

    .line 194
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->bindPlayServices()V

    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isOneTimePurchaseSupported()Z
    .registers 6

    .line 388
    iget-boolean v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isOneTimePurchasesSupported:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 394
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    const-string v4, "inapp"

    invoke-interface {v0, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 397
    :goto_15
    iput-boolean v1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isOneTimePurchasesSupported:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 401
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 403
    :goto_1c
    iget-boolean v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isOneTimePurchasesSupported:Z

    return v0
.end method

.method public isOneTimePurchaseWithExtraParamsSupported(Landroid/os/Bundle;)Z
    .registers 7

    .line 467
    iget-boolean v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isOneTimePurchaseExtraParamsSupported:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 474
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    const-string v4, "inapp"

    .line 475
    invoke-interface {v0, v2, v3, v4, p1}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupportedExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 478
    :goto_15
    iput-boolean v1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isOneTimePurchaseExtraParamsSupported:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    .line 482
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 484
    :goto_1c
    iget-boolean p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isOneTimePurchaseExtraParamsSupported:Z

    return p1
.end method

.method public isPurchased(Ljava/lang/String;)Z
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedProducts:Lcom/anjlab/android/iab/v3/BillingCache;

    invoke-virtual {v0, p1}, Lcom/anjlab/android/iab/v3/BillingCache;->includesProduct(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSubscribed(Ljava/lang/String;)Z
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedSubscriptions:Lcom/anjlab/android/iab/v3/BillingCache;

    invoke-virtual {v0, p1}, Lcom/anjlab/android/iab/v3/BillingCache;->includesProduct(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSubscriptionUpdateSupported()Z
    .registers 6

    .line 409
    iget-boolean v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubsUpdateSupported:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 416
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    const-string v4, "subs"

    .line 417
    invoke-interface {v0, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 420
    :goto_15
    iput-boolean v1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubsUpdateSupported:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 424
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 426
    :goto_1c
    iget-boolean v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubsUpdateSupported:Z

    return v0
.end method

.method public isSubscriptionWithExtraParamsSupported(Landroid/os/Bundle;)Z
    .registers 7

    .line 438
    iget-boolean v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubscriptionExtraParamsSupported:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 445
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->contextPackageName:Ljava/lang/String;

    const-string v4, "subs"

    .line 446
    invoke-interface {v0, v2, v3, v4, p1}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupportedExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 449
    :goto_15
    iput-boolean v1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubscriptionExtraParamsSupported:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    .line 453
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 455
    :goto_1c
    iget-boolean p1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubscriptionExtraParamsSupported:Z

    return p1
.end method

.method public isValidTransactionDetails(Lcom/anjlab/android/iab/v3/TransactionDetails;)Z
    .registers 5

    .line 986
    iget-object v0, p1, Lcom/anjlab/android/iab/v3/TransactionDetails;->productId:Ljava/lang/String;

    iget-object v1, p1, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v1, v1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    iget-object v2, p1, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v2, v2, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->verifyPurchaseSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 989
    invoke-direct {p0, p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->checkMerchant(Lcom/anjlab/android/iab/v3/TransactionDetails;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public listOwnedProducts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedProducts:Lcom/anjlab/android/iab/v3/BillingCache;

    invoke-virtual {v0}, Lcom/anjlab/android/iab/v3/BillingCache;->getContents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOwnedSubscriptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedSubscriptions:Lcom/anjlab/android/iab/v3/BillingCache;

    invoke-virtual {v0}, Lcom/anjlab/android/iab/v3/BillingCache;->getContents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadOwnedPurchasesFromGoogle()Z
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedProducts:Lcom/anjlab/android/iab/v3/BillingCache;

    const-string v1, "inapp"

    invoke-direct {p0, v1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->loadPurchasesByType(Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingCache;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->cachedSubscriptions:Lcom/anjlab/android/iab/v3/BillingCache;

    const-string v1, "subs"

    .line 318
    invoke-direct {p0, v1, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->loadPurchasesByType(Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingCache;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x0

    const-string v4, "inapp"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 323
    invoke-direct/range {v0 .. v5}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "inapp"

    .line 333
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 12

    .line 355
    invoke-virtual {p0, p4}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isOneTimePurchaseWithExtraParamsSupported(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 357
    invoke-virtual {p0, p1, p2, p3}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_b
    const/4 v2, 0x0

    const-string v4, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 361
    invoke-direct/range {v0 .. v6}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .registers 4

    .line 226
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1f

    .line 230
    :try_start_a
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "iabv3"

    const-string v2, "Error in release"

    .line 234
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/anjlab/android/iab/v3/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    :cond_1f
    return-void
.end method

.method public subscribe(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x0

    const-string v4, "subs"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 328
    invoke-direct/range {v0 .. v5}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public subscribe(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "subs"

    .line 338
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public subscribe(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 12

    .line 383
    invoke-virtual {p0, p4}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubscriptionWithExtraParamsSupported(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p4, 0x0

    :goto_8
    move-object v6, p4

    const/4 v2, 0x0

    const-string v4, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 378
    invoke-direct/range {v0 .. v6}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public updateSubscription(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->updateSubscription(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateSubscription(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 514
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 516
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 518
    :goto_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/anjlab/android/iab/v3/BillingProcessor;->updateSubscription(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateSubscription(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->updateSubscription(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateSubscription(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_a

    .line 549
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubscriptionUpdateSupported()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const-string v4, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 553
    invoke-direct/range {v0 .. v5}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateSubscription(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_a

    .line 570
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubscriptionUpdateSupported()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 576
    :cond_a
    invoke-virtual {p0, p5}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isSubscriptionWithExtraParamsSupported(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 578
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/anjlab/android/iab/v3/BillingProcessor;->updateSubscription(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_15
    const-string v4, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 581
    invoke-direct/range {v0 .. v6}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
