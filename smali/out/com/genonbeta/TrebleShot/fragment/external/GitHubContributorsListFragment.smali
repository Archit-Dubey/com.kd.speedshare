.class public Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;
.super Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;
.source "GitHubContributorsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorListAdapter;,
        Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment<",
        "Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorObject;",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        "Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorListAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorListAdapter;
    .registers 4

    .line 42
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;)V

    .line 64
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$2;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 4

    .line 98
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 78
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->useEmptyActionButton(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->getEmptyActionButton()Landroid/widget/Button;

    move-result-object p1

    const p2, 0x7f110061

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 82
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->getEmptyActionButton()Landroid/widget/Button;

    move-result-object p1

    new-instance p2, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$3;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700d1

    .line 91
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->setEmptyImage(I)V

    const p1, 0x7f1100ed

    .line 92
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    return-void
.end method
