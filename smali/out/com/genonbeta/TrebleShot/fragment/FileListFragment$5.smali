.class Lcom/genonbeta/TrebleShot/fragment/FileListFragment$5;
.super Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.source "FileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

.field final synthetic val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V
    .registers 4

    .line 383
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$5;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$5;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$5;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
    .registers 4

    .line 388
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    const/16 v0, 0x6e

    if-ne p2, v0, :cond_e

    .line 391
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$5;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->registerLayoutViewClicks(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    return-object p1

    .line 395
    :cond_e
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$5;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->quickAction(Ljava/lang/Object;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    return-object p1
.end method
