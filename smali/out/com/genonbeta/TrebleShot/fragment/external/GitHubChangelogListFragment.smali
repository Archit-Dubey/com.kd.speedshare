.class public Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;
.super Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;
.source "GitHubChangelogListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;,
        Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment<",
        "Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionObject;",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        "Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;
    .registers 3

    .line 36
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$VersionListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .registers 2

    .line 42
    invoke-super {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->publishLatestChangelogSeen(Landroid/content/Context;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 49
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0700d1

    .line 51
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->setEmptyImage(I)V

    const p1, 0x7f1100ed

    .line 52
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->useEmptyActionButton(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->getEmptyActionButton()Landroid/widget/Button;

    move-result-object p1

    const p2, 0x7f110061

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 56
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->getEmptyActionButton()Landroid/widget/Button;

    move-result-object p1

    new-instance p2, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$1;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->onEnsureList()V

    return-void
.end method
