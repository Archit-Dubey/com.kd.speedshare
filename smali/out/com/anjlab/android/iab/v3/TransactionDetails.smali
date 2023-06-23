.class public Lcom/anjlab/android/iab/v3/TransactionDetails;
.super Ljava/lang/Object;
.source "TransactionDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/anjlab/android/iab/v3/TransactionDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final orderId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final productId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

.field public final purchaseTime:Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final purchaseToken:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Lcom/anjlab/android/iab/v3/TransactionDetails$1;

    invoke-direct {v0}, Lcom/anjlab/android/iab/v3/TransactionDetails$1;-><init>()V

    sput-object v0, Lcom/anjlab/android/iab/v3/TransactionDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-class v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    .line 111
    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseData;->productId:Ljava/lang/String;

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->productId:Ljava/lang/String;

    .line 112
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseData;->orderId:Ljava/lang/String;

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->orderId:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseToken:Ljava/lang/String;

    .line 114
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseTime:Ljava/util/Date;

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseTime:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lcom/anjlab/android/iab/v3/PurchaseInfo;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    .line 56
    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseData;->productId:Ljava/lang/String;

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->productId:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseData;->orderId:Ljava/lang/String;

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->orderId:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseToken:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->purchaseData:Lcom/anjlab/android/iab/v3/PurchaseData;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseTime:Ljava/util/Date;

    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseTime:Ljava/util/Date;

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

    if-eqz p1, :cond_26

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 85
    :cond_12
    check-cast p1, Lcom/anjlab/android/iab/v3/TransactionDetails;

    .line 87
    iget-object v2, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->orderId:Ljava/lang/String;

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/TransactionDetails;->orderId:Ljava/lang/String;

    if-eqz v2, :cond_21

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_24

    :cond_21
    if-nez p1, :cond_24

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x0

    :cond_25
    :goto_25
    return v0

    :cond_26
    :goto_26
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->orderId:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 65
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->productId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseTime:Ljava/util/Date;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->orderId:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseToken:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v2, v2, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "%s purchased at %s(%s). Token: %s, Signature: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
