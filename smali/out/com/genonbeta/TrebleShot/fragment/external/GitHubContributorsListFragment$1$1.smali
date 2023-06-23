.class Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1$1;
.super Ljava/lang/Object;
.source "GitHubContributorsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;->onQuickActions(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;

.field final synthetic val$clazz:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1$1;->val$clazz:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 52
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorListAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorListAdapter;->getList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1$1;->val$clazz:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorObject;

    .line 54
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_25

    return-void

    .line 57
    :cond_25
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$ContributorObject;->name:Ljava/lang/String;

    aput-object p1, v2, v3

    const-string p1, ""

    .line 58
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
