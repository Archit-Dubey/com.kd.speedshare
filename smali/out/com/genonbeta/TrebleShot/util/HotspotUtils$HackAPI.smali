.class public Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;
.super Lcom/genonbeta/TrebleShot/util/HotspotUtils;
.source "HotspotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/util/HotspotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HackAPI"
.end annotation


# static fields
.field private static getWifiApConfiguration:Ljava/lang/reflect/Method;

.field private static getWifiApState:Ljava/lang/reflect/Method;

.field private static isWifiApEnabled:Ljava/lang/reflect/Method;

.field private static setWifiApConfiguration:Ljava/lang/reflect/Method;

.field private static setWifiApEnabled:Ljava/lang/reflect/Method;


# instance fields
.field private mPreviousConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 197
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_6b

    aget-object v4, v0, v3

    .line 198
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v7, :sswitch_data_6c

    goto :goto_4f

    :sswitch_1e
    const-string v7, "getWifiApConfiguration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v6, 0x0

    goto :goto_4f

    :sswitch_28
    const-string v7, "isWifiApEnabled"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v6, 0x2

    goto :goto_4f

    :sswitch_32
    const-string v7, "getWifiApState"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v6, 0x1

    goto :goto_4f

    :sswitch_3c
    const-string v7, "setWifiApEnabled"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v6, 0x3

    goto :goto_4f

    :sswitch_46
    const-string v7, "setWifiApConfiguration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v6, 0x4

    :cond_4f
    :goto_4f
    if-eqz v6, :cond_66

    if-eq v6, v11, :cond_63

    if-eq v6, v10, :cond_60

    if-eq v6, v9, :cond_5d

    if-eq v6, v8, :cond_5a

    goto :goto_68

    .line 212
    :cond_5a
    sput-object v4, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->setWifiApConfiguration:Ljava/lang/reflect/Method;

    goto :goto_68

    .line 209
    :cond_5d
    sput-object v4, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->setWifiApEnabled:Ljava/lang/reflect/Method;

    goto :goto_68

    .line 206
    :cond_60
    sput-object v4, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->isWifiApEnabled:Ljava/lang/reflect/Method;

    goto :goto_68

    .line 203
    :cond_63
    sput-object v4, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiApState:Ljava/lang/reflect/Method;

    goto :goto_68

    .line 200
    :cond_66
    sput-object v4, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiApConfiguration:Ljava/lang/reflect/Method;

    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_6b
    return-void

    :sswitch_data_6c
    .sparse-switch
        -0x326eea90 -> :sswitch_46
        -0x89a70c5 -> :sswitch_3c
        0x23400b97 -> :sswitch_32
        0x286ec373 -> :sswitch_28
        0x7f4c55fc -> :sswitch_1e
    .end sparse-switch
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/HotspotUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/HotspotUtils$1;)V
    .registers 3

    .line 188
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static enabled(Landroid/net/wifi/WifiManager;)Z
    .registers 4

    .line 227
    sget-object v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->isWifiApEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->access$500(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_c

    return v1

    .line 232
    :cond_c
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private setHotspotConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 6

    .line 300
    sget-object v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->setWifiApConfiguration:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->access$500(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    return v3

    .line 305
    :cond_13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private setHotspotEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 7

    .line 310
    sget-object v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->setWifiApEnabled:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->access$500(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1a

    return v3

    .line 315
    :cond_1a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public static supported()Z
    .registers 1

    .line 237
    sget-object v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiApState:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->isWifiApEnabled:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->setWifiApEnabled:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiApConfiguration:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public disable()Z
    .registers 3

    .line 245
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->unloadPreviousConfig()Z

    .line 246
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->mPreviousConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->setHotspotEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method public enable()Z
    .registers 3

    .line 251
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 252
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->setHotspotEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method public enableConfigured(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 257
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 259
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->mPreviousConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_12

    .line 260
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->mPreviousConfig:Landroid/net/wifi/WifiConfiguration;

    .line 262
    :cond_12
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 264
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 p1, 0x1

    if-eqz p2, :cond_31

    .line 266
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_31

    .line 267
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->set(I)V

    .line 268
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 269
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_36

    .line 271
    :cond_31
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->set(I)V

    .line 273
    :goto_36
    invoke-direct {p0, v0, p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->setHotspotEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result p1

    return p1
.end method

.method public getConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 4

    .line 290
    sget-object v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiApConfiguration:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->access$500(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getPreviousConfig()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->mPreviousConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 279
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->enabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .line 285
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->getPreviousConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public unloadPreviousConfig()Z
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->mPreviousConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 323
    :cond_6
    invoke-direct {p0, v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->setHotspotConfig(Landroid/net/wifi/WifiConfiguration;)Z

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->mPreviousConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x1

    return v0
.end method
