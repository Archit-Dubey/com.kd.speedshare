.class Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2$1;
.super Ljava/lang/Object;
.source "InAppDonationItemListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;->onQuickActions(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;

.field final synthetic val$clazz:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V
    .registers 3

    .line 89
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2$1;->val$clazz:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 93
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->getList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2$1;->val$clazz:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anjlab/android/iab/v3/SkuDetails;

    .line 95
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_25

    return-void

    .line 98
    :cond_25
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->access$000(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;)Lcom/anjlab/android/iab/v3/BillingProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p1, p1, Lcom/anjlab/android/iab/v3/SkuDetails;->productId:Ljava/lang/String;

    const-string v2, "Donations are not real world items"

    invoke-virtual {v0, v1, p1, v2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
