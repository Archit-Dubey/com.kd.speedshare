.class public Lcom/anjlab/android/iab/v3/PurchaseData;
.super Ljava/lang/Object;
.source "PurchaseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/anjlab/android/iab/v3/PurchaseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public autoRenewing:Z

.field public developerPayload:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/anjlab/android/iab/v3/PurchaseState;

.field public purchaseTime:Ljava/util/Date;

.field public purchaseToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lcom/anjlab/android/iab/v3/PurchaseData$1;

    invoke-direct {v0}, Lcom/anjlab/android/iab/v3/PurchaseData$1;-><init>()V

    sput-object v0, Lcom/anjlab/android/iab/v3/PurchaseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->orderId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->packageName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->productId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_22

    move-object v3, v2

    goto :goto_27

    .line 63
    :cond_22
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_27
    iput-object v3, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseTime:Ljava/util/Date;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    goto :goto_37

    .line 66
    :cond_31
    invoke-static {}, Lcom/anjlab/android/iab/v3/PurchaseState;->values()[Lcom/anjlab/android/iab/v3/PurchaseState;

    move-result-object v1

    aget-object v2, v1, v0

    :goto_37
    iput-object v2, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseState:Lcom/anjlab/android/iab/v3/PurchaseState;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->developerPayload:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseToken:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_4d

    const/4 p1, 0x1

    goto :goto_4e

    :cond_4d
    const/4 p1, 0x0

    :goto_4e
    iput-boolean p1, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->autoRenewing:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 43
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->orderId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->productId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseTime:Ljava/util/Date;

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1a

    :cond_18
    const-wide/16 v0, -0x1

    :goto_1a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseState:Lcom/anjlab/android/iab/v3/PurchaseState;

    if-nez p2, :cond_23

    const/4 p2, -0x1

    goto :goto_27

    :cond_23
    invoke-virtual {p2}, Lcom/anjlab/android/iab/v3/PurchaseState;->ordinal()I

    move-result p2

    :goto_27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->developerPayload:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->purchaseToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-boolean p2, p0, Lcom/anjlab/android/iab/v3/PurchaseData;->autoRenewing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
