.class Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter$1;
.super Ljava/lang/Object;
.source "InAppDonationItemListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->onLoad()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/anjlab/android/iab/v3/SkuDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/anjlab/android/iab/v3/SkuDetails;Lcom/anjlab/android/iab/v3/SkuDetails;)I
    .registers 5

    .line 224
    iget-wide v0, p1, Lcom/anjlab/android/iab/v3/SkuDetails;->priceLong:J

    iget-wide p1, p2, Lcom/anjlab/android/iab/v3/SkuDetails;->priceLong:J

    invoke-static {v0, v1, p1, p2}, Lcom/genonbeta/android/framework/util/MathUtils;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 220
    check-cast p1, Lcom/anjlab/android/iab/v3/SkuDetails;

    check-cast p2, Lcom/anjlab/android/iab/v3/SkuDetails;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter$1;->compare(Lcom/anjlab/android/iab/v3/SkuDetails;Lcom/anjlab/android/iab/v3/SkuDetails;)I

    move-result p1

    return p1
.end method
