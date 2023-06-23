.class public Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;
.super Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;
.source "NetworkDeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotspotNetwork"
.end annotation


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public keyManagement:I

.field public password:Ljava/lang/String;

.field public qrConnection:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 212
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;-><init>()V

    const-string v0, "stamp"

    .line 214
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->versionName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 215
    iput v0, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->versionNumber:I

    return-void
.end method


# virtual methods
.method public getId()J
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
