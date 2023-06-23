.class Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$2;
.super Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;
.source "ThirdPartyLibraryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;

.field final synthetic val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V
    .registers 4

    .line 88
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$2;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;
    .registers 3

    .line 93
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$2;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->quickAction(Ljava/lang/Object;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    return-object p1
.end method
