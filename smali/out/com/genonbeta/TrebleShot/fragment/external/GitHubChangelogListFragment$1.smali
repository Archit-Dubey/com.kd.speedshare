.class Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$1;
.super Ljava/lang/Object;
.source "GitHubChangelogListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 61
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/external/GitHubChangelogListFragment;->refreshList()V

    return-void
.end method
