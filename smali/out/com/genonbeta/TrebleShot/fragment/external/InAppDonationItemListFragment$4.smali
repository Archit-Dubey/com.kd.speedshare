.class Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$4;
.super Ljava/lang/Object;
.source "InAppDonationItemListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

.field final synthetic val$stringRes:I


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;I)V
    .registers 3

    .line 143
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    iput p2, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$4;->val$stringRes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 148
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$4;->val$stringRes:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_18
    return-void
.end method
