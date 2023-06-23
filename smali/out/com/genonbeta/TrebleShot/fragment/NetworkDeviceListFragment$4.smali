.class Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$4;
.super Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;
.source "NetworkDeviceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

.field final synthetic val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/ConnectionUtils;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V
    .registers 5

    .line 216
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$4;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-direct {p0, p2, p3}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/ConnectionUtils;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$4;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
    .registers 3

    .line 221
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$4;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->quickAction(Ljava/lang/Object;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    return-object p1
.end method
