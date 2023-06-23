.class Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$3;
.super Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;
.source "ActiveConnectionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;

.field final synthetic val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V
    .registers 4

    .line 126
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$3;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$3;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
    .registers 3

    .line 132
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$3;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->quickAction(Ljava/lang/Object;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    return-object p1
.end method
