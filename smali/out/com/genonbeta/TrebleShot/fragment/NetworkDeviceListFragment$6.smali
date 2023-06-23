.class Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$6;
.super Ljava/lang/Object;
.source "NetworkDeviceListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

.field final synthetic val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 3

    .line 256
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$6;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$6;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;",
            ">;)V"
        }
    .end annotation

    .line 260
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$6;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->access$300(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    move-result-object p2

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$6;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-interface {p2, v0, p1}, Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;->onNetworkDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Z

    return-void
.end method
