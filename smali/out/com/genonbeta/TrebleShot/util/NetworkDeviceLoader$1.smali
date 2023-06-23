.class final Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;
.super Ljava/lang/Object;
.source "NetworkDeviceLoader.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->load(ZLcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field final synthetic val$ipAddress:Ljava/lang/String;

.field final synthetic val$listener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V
    .registers 4

    .line 70
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$ipAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$listener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V
    .registers 7

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$ipAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->loadDevice(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v0

    .line 77
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_3c

    .line 78
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$ipAddress:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->processConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v2

    .line 81
    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    iget-object v3, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->lastUsageTime:J

    .line 84
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 86
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$listener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    if-eqz v1, :cond_3c

    .line 87
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$listener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    invoke-interface {v1, v3, v0, v2}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;->onDeviceRegistered(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    .line 91
    :cond_3c
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->setReturn(Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_4e

    :catch_40
    move-exception p1

    .line 93
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;->val$listener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    if-eqz v0, :cond_4e

    instance-of v1, v0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredErrorListener;

    if-eqz v1, :cond_4e

    .line 94
    check-cast v0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredErrorListener;

    invoke-interface {v0, p1}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredErrorListener;->onError(Ljava/lang/Exception;)V

    :cond_4e
    :goto_4e
    return-void
.end method
