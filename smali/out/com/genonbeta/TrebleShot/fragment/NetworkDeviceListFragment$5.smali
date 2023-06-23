.class Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$5;
.super Ljava/lang/Object;
.source "NetworkDeviceListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredErrorListener;


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


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$5;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceRegistered(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 4

    .line 250
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$5;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->access$300(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;->onNetworkDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Z

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method
