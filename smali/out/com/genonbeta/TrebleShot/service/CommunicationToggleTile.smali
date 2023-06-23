.class public Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;
.super Landroid/service/quicksettings/TileService;
.source "CommunicationToggleTile.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private isMyServiceRunning(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "activity"

    .line 70
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_31
    const/4 p1, 0x0

    return p1
.end method

.method private updateTileState()V
    .registers 2

    .line 82
    const-class v0, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;->isMyServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;->updateTileState(I)V

    return-void
.end method

.method private updateTileState(I)V
    .registers 5

    .line 87
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 90
    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 91
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_17

    const p1, -0x777778

    .line 100
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    goto :goto_1b

    :cond_17
    const/4 p1, -0x1

    .line 95
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 104
    :goto_1b
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_1e
    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 58
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 60
    const-class v0, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;->isMyServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;->stopService(Landroid/content/Intent;)Z

    goto :goto_28

    .line 63
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    :goto_28
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;->updateTileState()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 27
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    return-void
.end method

.method public onStartListening()V
    .registers 1

    .line 45
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 46
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/CommunicationToggleTile;->updateTileState()V

    return-void
.end method

.method public onStopListening()V
    .registers 1

    .line 52
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public onTileAdded()V
    .registers 1

    .line 33
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    return-void
.end method

.method public onTileRemoved()V
    .registers 1

    .line 39
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method
