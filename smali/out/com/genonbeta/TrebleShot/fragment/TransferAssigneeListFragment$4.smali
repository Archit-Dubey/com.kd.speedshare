.class Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$4;
.super Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;
.source "TransferAssigneeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

.field final synthetic val$actions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V
    .registers 4

    .line 167
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$4;->val$actions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$4;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
    .registers 3

    .line 172
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$4;->val$actions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->quickAction(Ljava/lang/Object;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    return-object p1
.end method
