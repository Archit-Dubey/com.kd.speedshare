.class public Lcom/anjlab/android/iab/v3/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/anjlab/android/iab/v3/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final currency:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final haveIntroductoryPeriod:Z

.field public final haveTrialPeriod:Z

.field public final introductoryPriceCycles:I

.field public final introductoryPriceLong:J

.field public final introductoryPricePeriod:Ljava/lang/String;

.field public final introductoryPriceText:Ljava/lang/String;

.field public final introductoryPriceValue:D

.field public final isSubscription:Z

.field public final priceLong:J

.field public final priceText:Ljava/lang/String;

.field public final priceValue:Ljava/lang/Double;

.field public final productId:Ljava/lang/String;

.field public final subscriptionFreeTrialPeriod:Ljava/lang/String;

.field public final subscriptionPeriod:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 187
    new-instance v0, Lcom/anjlab/android/iab/v3/SkuDetails$1;

    invoke-direct {v0}, Lcom/anjlab/android/iab/v3/SkuDetails$1;-><init>()V

    sput-object v0, Lcom/anjlab/android/iab/v3/SkuDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->productId:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->title:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->description:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-boolean v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->isSubscription:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->currency:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceValue:Ljava/lang/Double;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceLong:J

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceText:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->subscriptionPeriod:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->subscriptionFreeTrialPeriod:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    iput-boolean v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->haveTrialPeriod:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceValue:D

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceLong:J

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceText:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPricePeriod:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_75

    :cond_74
    const/4 v1, 0x0

    :goto_75
    iput-boolean v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->haveIntroductoryPeriod:Z

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceCycles:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type"

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "inapp"

    :cond_d
    const-string v1, "productId"

    .line 78
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->productId:Ljava/lang/String;

    const-string v1, "title"

    .line 79
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->title:Ljava/lang/String;

    const-string v1, "description"

    .line 80
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->description:Ljava/lang/String;

    const-string v1, "subs"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->isSubscription:Z

    const-string v0, "price_currency_code"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->currency:Ljava/lang/String;

    const-string v0, "price_amount_micros"

    .line 83
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceLong:J

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceValue:Ljava/lang/Double;

    const-string v0, "price"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceText:Ljava/lang/String;

    const-string v0, "subscriptionPeriod"

    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->subscriptionPeriod:Ljava/lang/String;

    const-string v0, "freeTrialPeriod"

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->subscriptionFreeTrialPeriod:Ljava/lang/String;

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->haveTrialPeriod:Z

    const-string v0, "introductoryPriceAmountMicros"

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceLong:J

    long-to-double v0, v0

    .line 90
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceValue:D

    const-string v0, "introductoryPrice"

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceText:Ljava/lang/String;

    const-string v0, "introductoryPricePeriod"

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPricePeriod:Ljava/lang/String;

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->haveIntroductoryPeriod:Z

    const-string v0, "introductoryPriceCycles"

    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceCycles:I

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

    if-eqz p1, :cond_2d

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 121
    :cond_12
    check-cast p1, Lcom/anjlab/android/iab/v3/SkuDetails;

    .line 123
    iget-boolean v2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->isSubscription:Z

    iget-boolean v3, p1, Lcom/anjlab/android/iab/v3/SkuDetails;->isSubscription:Z

    if-eq v2, v3, :cond_1b

    return v1

    .line 127
    :cond_1b
    iget-object v2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->productId:Ljava/lang/String;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/SkuDetails;->productId:Ljava/lang/String;

    if-eqz v2, :cond_28

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2b

    :cond_28
    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->productId:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget-boolean v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->isSubscription:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 100
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->productId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->description:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceValue:Ljava/lang/Double;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->currency:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceText:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "%s: %s(%s) %f in %s (%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 147
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->productId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-boolean p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->isSubscription:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceValue:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 153
    iget-wide v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceLong:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->subscriptionPeriod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->subscriptionFreeTrialPeriod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-boolean p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->haveTrialPeriod:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    iget-wide v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 159
    iget-wide v0, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceLong:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPricePeriod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-boolean p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->haveIntroductoryPeriod:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 163
    iget p2, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->introductoryPriceCycles:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
