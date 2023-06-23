.class Lcom/genonbeta/TrebleShot/service/CommunicationService$1;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "CommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$1;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .registers 4

    .line 191
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    .line 193
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$1;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendHotspotStatus(Landroid/net/wifi/WifiConfiguration;)V

    .line 195
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$1;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "hotspot_trust"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 196
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$1;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->updateServiceState(Z)V

    :cond_21
    return-void
.end method
