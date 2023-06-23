.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$3;
.super Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
.source "TransferListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

.field final synthetic val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V
    .registers 4

    .line 147
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$3;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$3;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
    .registers 3

    .line 152
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$3;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->quickAction(Ljava/lang/Object;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    return-object p1
.end method
