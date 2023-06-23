.class Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3$1;
.super Ljava/lang/Object;
.source "NetworkDeviceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3;

.field final synthetic val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
    .registers 3

    .line 158
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 162
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$3$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->access$200(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method
