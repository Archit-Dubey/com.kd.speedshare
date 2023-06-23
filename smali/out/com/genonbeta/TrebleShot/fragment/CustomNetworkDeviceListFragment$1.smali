.class Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment$1;
.super Ljava/lang/Object;
.source "CustomNetworkDeviceListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isListenerEffective()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onNetworkDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Z
    .registers 6

    .line 42
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 43
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/CustomNetworkDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.DEVICE_ACQUAINTANCE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    const-string v2, "extraDeviceId"

    .line 44
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    const-string v1, "extraConnectionAdapterName"

    .line 45
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method
