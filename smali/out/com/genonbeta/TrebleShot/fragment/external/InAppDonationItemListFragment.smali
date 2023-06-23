.class public Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;
.super Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;
.source "InAppDonationItemListFragment.java"

# interfaces
.implements Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment<",
        "Lcom/anjlab/android/iab/v3/SkuDetails;",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        "Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;",
        ">;",
        "Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBillingProcessor:Lcom/anjlab/android/iab/v3/BillingProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;)Lcom/anjlab/android/iab/v3/BillingProcessor;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->mBillingProcessor:Lcom/anjlab/android/iab/v3/BillingProcessor;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object v0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private showToast(I)V
    .registers 4

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$4;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;
    .registers 4

    .line 83
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;)V

    .line 105
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$3;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onBillingError(ILjava/lang/Throwable;)V
    .registers 3

    const p1, 0x7f110107

    .line 131
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->showToast(I)V

    return-void
.end method

.method public onBillingInitialized()V
    .registers 1

    .line 137
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->refreshList()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 48
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk1peq7MhNms9ynhnoRtwxnbizdEr3TKifUGlUPB3r33WkvPWjwowRvYeuY36+CkBmtjc46Xg/6/jrhPY+L0a+wd58lsNxLUMpo7tN2std0TGrsMmmlihb4Bsxcu/6ThsY4CIQx0bdze2v8Zle3e4EoHuXcqQnpwkb+3wMx2rR2E9ih+6utqrYAop9NdAbsRZ6BDXDUgJEuiHnRKwDZGDjU5PD4TCiR1jz2YJPYiRuI1QytJM6LirJu6YwE/o6pfzSQ3xXlK4yGpGUhzLdTmSNQNIJTWRqZoM7qNgp+0ocmfQRJ32/6E+BxbJaVbHdTINhbVAvLR+UFyQ2FldecfuQQIDAQAB"

    invoke-static {p1, v0, p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->newBillingProcessor(Landroid/content/Context;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;)Lcom/anjlab/android/iab/v3/BillingProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->mBillingProcessor:Lcom/anjlab/android/iab/v3/BillingProcessor;

    .line 51
    invoke-virtual {p1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->initialize()V

    return-void
.end method

.method public onLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 5

    .line 57
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->isScreenLarge()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_a

    :cond_9
    const/4 v0, 0x2

    .line 58
    :goto_a
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->isScreenLandscape()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x1

    .line 60
    :goto_12
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    mul-int v0, v0, v1

    invoke-direct {v2, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v2
.end method

.method public onProductPurchased(Ljava/lang/String;Lcom/anjlab/android/iab/v3/TransactionDetails;)V
    .registers 3

    const p1, 0x7f1100cf

    .line 119
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->showToast(I)V

    return-void
.end method

.method public onPurchaseHistoryRestored()V
    .registers 1

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 66
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f110069

    .line 68
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$1;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;)V

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->useEmptyActionButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700c0

    .line 76
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->setEmptyImage(I)V

    const p1, 0x7f1100ed

    .line 77
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    return-void
.end method
