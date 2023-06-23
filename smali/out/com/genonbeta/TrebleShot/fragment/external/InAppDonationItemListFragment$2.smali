.class Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;
.super Ljava/lang/Object;
.source "InAppDonationItemListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions<",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuickActions(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V
    .registers 4

    .line 88
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onQuickActions(Ljava/lang/Object;)V
    .registers 2

    .line 84
    check-cast p1, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$2;->onQuickActions(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V

    return-void
.end method
