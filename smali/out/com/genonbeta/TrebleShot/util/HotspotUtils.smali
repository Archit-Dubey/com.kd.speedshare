.class public abstract Lcom/genonbeta/TrebleShot/util/HotspotUtils;
.super Ljava/lang/Object;
.source "HotspotUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;,
        Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HotspotUtils"

.field private static mInstance:Lcom/genonbeta/TrebleShot/util/HotspotUtils;


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/HotspotUtils$1;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 16
    invoke-static {p0, p1, p2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->invokeSilently(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/HotspotUtils;
    .registers 4

    .line 31
    sget-object v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->mInstance:Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    if-nez v0, :cond_18

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_11

    new-instance v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;

    invoke-direct {v0, p0, v2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$OreoAPI;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/HotspotUtils$1;)V

    goto :goto_16

    :cond_11
    new-instance v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;

    invoke-direct {v0, p0, v2}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/HotspotUtils$1;)V

    :goto_16
    sput-object v0, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->mInstance:Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    .line 36
    :cond_18
    sget-object p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->mInstance:Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    return-object p0
.end method

.method private static varargs invokeSilently(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p1

    goto :goto_a

    :catch_7
    move-exception p1

    goto :goto_a

    :catch_9
    move-exception p1

    .line 44
    :goto_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception in invoking methods: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(): "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HotspotUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSupported()Z
    .registers 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_f

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/HotspotUtils$HackAPI;->supported()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method public abstract disable()Z
.end method

.method public abstract enable()Z
.end method

.method public abstract enableConfigured(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getConfiguration()Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract getPreviousConfig()Landroid/net/wifi/WifiConfiguration;
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract unloadPreviousConfig()Z
.end method
