.class Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$3;
.super Ljava/lang/Object;
.source "GitHubContributorsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 87
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubContributorsListFragment;->refreshList()V

    return-void
.end method
