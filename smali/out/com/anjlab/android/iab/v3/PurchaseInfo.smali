.class public Lcom/anjlab/android/iab/v3/PurchaseInfo;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/anjlab/android/iab/v3/PurchaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "iabv3.purchaseInfo"


# instance fields
.field public final purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

.field public final responseData:Ljava/lang/String;

.field public final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$1;

    invoke-direct {v0}, Lcom/anjlab/android/iab/v3/PurchaseInfo$1;-><init>()V

    sput-object v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/PurchaseInfo;->parseResponseDataImpl()Lcom/anjlab/android/iab/v3/PurchaseData;

    move-result-object p1

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/PurchaseInfo;->parseResponseDataImpl()Lcom/anjlab/android/iab/v3/PurchaseData;

    move-result-object p1

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_41

    .line 124
    instance-of v2, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    if-nez v2, :cond_c

    goto :goto_41

    .line 128
    :cond_c
    check-cast p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    .line 129
    iget-object v2, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    iget-object v3, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    iget-object v3, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object v2, v2, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object v3, v3, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseToken:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object v2, v2, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseTime:Ljava/util/Date;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseTime:Ljava/util/Date;

    .line 132
    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    return v0

    :cond_41
    :goto_41
    return v1
.end method

.method public parseResponseData()Lcom/anjlab/android/iab/v3/PurchaseData;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/PurchaseInfo;->parseResponseDataImpl()Lcom/anjlab/android/iab/v3/PurchaseData;

    move-result-object v0

    return-object v0
.end method

.method parseResponseDataImpl()Lcom/anjlab/android/iab/v3/PurchaseData;
    .registers 9

    const/4 v0, 0x0

    .line 63
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v2, Lcom/anjlab/android/iab/v3/PurchaseData;

    invoke-direct {v2}, Lcom/anjlab/android/iab/v3/PurchaseData;-><init>()V

    const-string v3, "orderId"

    .line 65
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anjlab/android/iab/v3/PurchaseData;->orderId:Ljava/lang/String;

    const-string v3, "packageName"

    .line 66
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anjlab/android/iab/v3/PurchaseData;->packageName:Ljava/lang/String;

    const-string v3, "productId"

    .line 67
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anjlab/android/iab/v3/PurchaseData;->productId:Ljava/lang/String;

    const-string v3, "purchaseTime"

    const-wide/16 v4, 0x0

    .line 68
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_37

    .line 69
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_38

    :cond_37
    move-object v3, v0

    :goto_38
    iput-object v3, v2, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseTime:Ljava/util/Date;

    .line 70
    invoke-static {}, Lcom/anjlab/android/iab/v3/PurchaseState;->values()[Lcom/anjlab/android/iab/v3/PurchaseState;

    move-result-object v3

    const-string v4, "purchaseState"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseState:Lcom/anjlab/android/iab/v3/PurchaseState;

    const-string v3, "developerPayload"

    .line 71
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anjlab/android/iab/v3/PurchaseData;->developerPayload:Ljava/lang/String;

    const-string v3, "purchaseToken"

    .line 72
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseToken:Ljava/lang/String;

    const-string v3, "autoRenewing"

    .line 73
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/anjlab/android/iab/v3/PurchaseData;->autoRenewing:Z
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_61} :catch_62

    return-object v2

    :catch_62
    move-exception v1

    const-string v2, "iabv3.purchaseInfo"

    const-string v3, "Failed to parse response data"

    .line 78
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 92
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
