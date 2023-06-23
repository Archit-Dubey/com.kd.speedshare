.class Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$7;
.super Ljava/lang/Object;
.source "NetworkDeviceListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->openInfo(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

.field final synthetic val$hotspotNetwork:Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;)V
    .registers 3

    .line 377
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$7;->val$hotspotNetwork:Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 381
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$7;->val$hotspotNetwork:Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->toggleConnection(Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;)Z

    return-void
.end method
