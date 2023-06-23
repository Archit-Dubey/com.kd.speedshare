.class final Lcom/anjlab/android/iab/v3/PurchaseData$1;
.super Ljava/lang/Object;
.source "PurchaseData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anjlab/android/iab/v3/PurchaseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/anjlab/android/iab/v3/PurchaseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/anjlab/android/iab/v3/PurchaseData;
    .registers 3

    .line 77
    new-instance v0, Lcom/anjlab/android/iab/v3/PurchaseData;

    invoke-direct {v0, p1}, Lcom/anjlab/android/iab/v3/PurchaseData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 74
    invoke-virtual {p0, p1}, Lcom/anjlab/android/iab/v3/PurchaseData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/anjlab/android/iab/v3/PurchaseData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/anjlab/android/iab/v3/PurchaseData;
    .registers 2

    .line 82
    new-array p1, p1, [Lcom/anjlab/android/iab/v3/PurchaseData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 74
    invoke-virtual {p0, p1}, Lcom/anjlab/android/iab/v3/PurchaseData$1;->newArray(I)[Lcom/anjlab/android/iab/v3/PurchaseData;

    move-result-object p1

    return-object p1
.end method
