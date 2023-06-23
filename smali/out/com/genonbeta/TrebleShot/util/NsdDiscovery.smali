.class public Lcom/genonbeta/TrebleShot/util/NsdDiscovery;
.super Ljava/lang/Object;
.source "NsdDiscovery.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field private mNsdDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private mNsdRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Landroid/content/SharedPreferences;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    .line 35
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    return-object v0
.end method

.method public getDiscoveryListener()Landroid/net/nsd/NsdManager$DiscoveryListener;
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mNsdDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    if-nez v0, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 52
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery$1;-><init>(Lcom/genonbeta/TrebleShot/util/NsdDiscovery;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mNsdDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 116
    :cond_11
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mNsdDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    return-object v0
.end method

.method public getNsdManager()Landroid/net/nsd/NsdManager;
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mNsdManager:Landroid/net/nsd/NsdManager;

    if-nez v0, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    .line 123
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 125
    :cond_18
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mNsdManager:Landroid/net/nsd/NsdManager;

    return-object v0
.end method

.method public getRegistrationListener()Landroid/net/nsd/NsdManager$RegistrationListener;
    .registers 3

    .line 130
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->isServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mNsdRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    if-nez v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_17

    .line 133
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery$2;-><init>(Lcom/genonbeta/TrebleShot/util/NsdDiscovery;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mNsdRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 162
    :cond_17
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mNsdRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    return-object v0
.end method

.method public isServiceEnabled()Z
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "nsd_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerService()V
    .registers 5

    .line 172
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->isServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_44

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_44

    .line 174
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TSComm_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    const-string v1, "_tscomm._tcp."

    .line 177
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    const/16 v1, 0x468

    .line 178
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 181
    :try_start_33
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->getRegistrationListener()Landroid/net/nsd/NsdManager$RegistrationListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_44
    :goto_44
    return-void
.end method

.method public startDiscovering()V
    .registers 5

    .line 190
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->isServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1f

    .line 193
    :try_start_c
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v0

    const-string v1, "_tscomm._tcp."

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->getDiscoveryListener()Landroid/net/nsd/NsdManager$DiscoveryListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public stopDiscovering()V
    .registers 3

    .line 201
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->isServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_17

    .line 204
    :try_start_c
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->getDiscoveryListener()Landroid/net/nsd/NsdManager$DiscoveryListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method

.method public unregisterService()V
    .registers 3

    .line 212
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->isServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_17

    .line 215
    :try_start_c
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NsdDiscovery;->getRegistrationListener()Landroid/net/nsd/NsdManager$RegistrationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method
