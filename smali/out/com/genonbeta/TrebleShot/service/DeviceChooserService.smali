.class public Lcom/genonbeta/TrebleShot/service/DeviceChooserService;
.super Landroid/service/chooser/ChooserTargetService;
.source "DeviceChooserService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/service/chooser/ChooserTargetService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/DeviceChooserService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/DeviceChooserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultIconBuilder(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "devices"

    invoke-direct {v2, v5, v4}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-class v4, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p2, v2, v4}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    .line 43
    iget-boolean v4, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isLocalAddress:Z

    if-eqz v4, :cond_3a

    goto :goto_29

    .line 46
    :cond_3a
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 48
    iget-object v4, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    const-string v5, "extraDeviceId"

    invoke-virtual {v10, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v4, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;

    move-result-object v4

    .line 51
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v6, 0x64

    invoke-static {v6, v6, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 52
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 54
    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {v4, v3, v3, v7, v8}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->setBounds(IIII)V

    .line 55
    invoke-virtual {v4, v6}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    iget-wide v6, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->lastUsageTime:J

    long-to-float v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-float v6, v6

    div-float v8, v4, v6

    .line 59
    new-instance v4, Landroid/service/chooser/ChooserTarget;

    iget-object v6, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    .line 61
    invoke-static {v5}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v7

    move-object v5, v4

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 59
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_82
    return-object v0
.end method
