.class public Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;
.source "NetworkDeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;,
        Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter<",
        "Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnectionUtils:Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

.field private mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/ConnectionUtils;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->mConnectionUtils:Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    .line 39
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultIconBuilder(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 29
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;I)V
    .registers 8

    .line 98
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    .line 99
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    .line 100
    instance-of v0, p2, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    const v1, 0x7f0901eb

    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901ea

    .line 103
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09010f

    .line 104
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090111

    .line 105
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 107
    iget-object v4, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_43

    .line 108
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11023d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    :cond_43
    iget-object v0, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->model:Ljava/lang/String;

    :goto_45
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    invoke-static {p2, v3, v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->showPictureIntoView(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;)V

    .line 111
    iget-boolean v0, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    .line 112
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0700a4

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_74

    .line 114
    :cond_5c
    iget-boolean p2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    if-eqz p2, :cond_6a

    .line 115
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f070106

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_74

    :cond_6a
    const/16 p2, 0x8

    .line 118
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_6f
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p1

    .line 121
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;->printStackTrace()V

    :goto_74
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
    .registers 6

    .line 88
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->isHorizontalOrientation()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->isGridLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_17

    :cond_13
    const v1, 0x7f0c0083

    goto :goto_1a

    :cond_17
    :goto_17
    const v1, 0x7f0c0084

    :goto_1a
    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onLoad()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->mConnectionUtils:Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->canReadScanResults()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 48
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->mConnectionUtils:Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 49
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v4, "TS_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_1b

    .line 52
    :cond_32
    new-instance v3, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    invoke-direct {v3}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->lastUsageTime:J

    .line 55
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->SSID:Ljava/lang/String;

    .line 56
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->BSSID:Ljava/lang/String;

    .line 57
    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getFriendlySSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->nickname:Ljava/lang/String;

    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 63
    :cond_51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8d

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->mConnectionUtils:Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->isConnectionSelfNetwork()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 64
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->mConnectionUtils:Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    invoke-direct {v2}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;-><init>()V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->lastUsageTime:J

    .line 69
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->SSID:Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->BSSID:Ljava/lang/String;

    .line 71
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getFriendlySSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->nickname:Ljava/lang/String;

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_8d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "devices"

    invoke-direct {v2, v5, v4}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "lastUsedTime DESC"

    .line 77
    invoke-virtual {v2, v4}, Lcom/genonbeta/android/database/SQLQuery$Select;->setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v2

    const-class v4, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;

    .line 76
    invoke-virtual {v1, v2, v4}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_af
    :goto_af
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;

    .line 78
    invoke-virtual {p0, v2}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->filterItem(Lcom/genonbeta/TrebleShot/object/Editable;)Z

    move-result v4

    if-eqz v4, :cond_af

    iget-boolean v4, v2, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;->isLocalAddress:Z

    if-eqz v4, :cond_d5

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v4

    const-string v5, "developer_mode"

    invoke-virtual {v4, v5, v3}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 79
    :cond_d5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_af

    :cond_d9
    return-object v0
.end method
