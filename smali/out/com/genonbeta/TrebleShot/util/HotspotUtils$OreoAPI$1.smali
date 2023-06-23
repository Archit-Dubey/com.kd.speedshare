.class Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "HotspotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->enable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;->this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .registers 4

    .line 128
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    .line 129
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;->this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->access$302(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 131
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;->this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->access$400(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 132
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;->this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->access$400(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    :cond_1a
    return-void
.end method

.method public onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .registers 3

    .line 108
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    .line 109
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;->this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->access$302(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 111
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;->this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->access$400(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 112
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;->this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->access$400(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    :cond_19
    return-void
.end method

.method public onStopped()V
    .registers 3

    .line 118
    invoke-super {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    .line 119
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;->this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->access$302(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 121
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;->this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->access$400(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 122
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI$1;->this$0:Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;->access$400(Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    :cond_1a
    return-void
.end method
