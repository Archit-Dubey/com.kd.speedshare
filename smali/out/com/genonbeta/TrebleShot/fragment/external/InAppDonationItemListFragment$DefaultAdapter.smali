.class public Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;
.super Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;
.source "InAppDonationItemListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter<",
        "Lcom/anjlab/android/iab/v3/SkuDetails;",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anjlab/android/iab/v3/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;Landroid/content/Context;)V
    .registers 3

    .line 158
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    .line 159
    invoke-direct {p0, p2}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anjlab/android/iab/v3/SkuDetails;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 153
    check-cast p1, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->onBindViewHolder(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;I)V
    .registers 8

    .line 172
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anjlab/android/iab/v3/SkuDetails;

    .line 173
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0901ec

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 177
    iget-object v2, p2, Lcom/anjlab/android/iab/v3/SkuDetails;->title:Ljava/lang/String;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_44

    .line 179
    iget-object v3, p2, Lcom/anjlab/android/iab/v3/SkuDetails;->title:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    :cond_44
    iget-object v2, p2, Lcom/anjlab/android/iab/v3/SkuDetails;->title:Ljava/lang/String;

    :goto_46
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p2, Lcom/anjlab/android/iab/v3/SkuDetails;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p2, p2, Lcom/anjlab/android/iab/v3/SkuDetails;->priceText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;
    .registers 6

    .line 166
    new-instance p2, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onLoad()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anjlab/android/iab/v3/SkuDetails;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->access$000(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;)Lcom/anjlab/android/iab/v3/BillingProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->access$000(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;)Lcom/anjlab/android/iab/v3/BillingProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isOneTimePurchaseSupported()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 196
    invoke-static {}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Configuration is OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "trebleshot.donation.1"

    .line 200
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "trebleshot.donation.2"

    .line 201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "trebleshot.donation.3"

    .line 202
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "trebleshot.donation.4"

    .line 203
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "trebleshot.donation.5"

    .line 204
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "trebleshot.donation.6"

    .line 205
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 213
    :try_start_4a
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;->access$000(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment;)Lcom/anjlab/android/iab/v3/BillingProcessor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPurchaseListingDetails(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception v1

    .line 215
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_59
    if-eqz v2, :cond_66

    .line 219
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 228
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_66
    return-object v0
.end method

.method public onUpdate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anjlab/android/iab/v3/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->getList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 239
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 240
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/InAppDonationItemListFragment$DefaultAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1
.end method
