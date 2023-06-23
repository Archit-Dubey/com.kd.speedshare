.class Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver$1;
.super Ljava/lang/Object;
.source "NetworkDeviceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;)V
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 428
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$StatusReceiver;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    return-void
.end method
