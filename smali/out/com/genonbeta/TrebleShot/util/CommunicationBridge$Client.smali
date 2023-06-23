.class public Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;
.super Lcom/genonbeta/CoolSocket/CoolSocket$Client;
.source "CommunicationBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/util/CommunicationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;
    }
.end annotation


# instance fields
.field private mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field private mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field private mSecureKey:I


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$Client;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->mSecureKey:I

    .line 70
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    return-void
.end method


# virtual methods
.method public communicate(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/genonbeta/TrebleShot/util/CommunicationBridge$DifferentClientException;,
            Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->updateDeviceIfOkay(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-object p1
.end method

.method public communicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/genonbeta/TrebleShot/util/CommunicationBridge$DifferentClientException;,
            Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;
        }
    .end annotation

    .line 75
    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->connectWithHandshake(Ljava/lang/String;Z)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p2

    .line 77
    invoke-virtual {p0, p2, p1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->communicate(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    return-object p2
.end method

.method public connect(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->connect(Ljava/lang/String;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/lang/String;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 92
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 95
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x468

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x1388

    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->connect(Ljava/net/SocketAddress;I)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p1

    return-object p1

    .line 93
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Ping test before connection to the address has failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connectWithHandshake(Ljava/lang/String;Z)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->connect(Ljava/lang/String;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->handshake(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Z)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 110
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    return-object v0
.end method

.method public getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-object v0
.end method

.method public handshake(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Z)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;
        }
    .end annotation

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "handshakeRequired"

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "handshakeOnly"

    .line 134
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "deviceId"

    .line 135
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDeviceSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "secureKey"

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    if-nez v1, :cond_29

    iget v1, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->mSecureKey:I

    goto :goto_2d

    :cond_29
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget v1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->tmpSecureKey:I

    .line 136
    :goto_2d
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 137
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-virtual {p1, p2}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    return-object p1

    .line 139
    :catch_39
    new-instance p1, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;

    const-string p2, "Failed to open connection between devices"

    invoke-direct {p1, p2}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadDevice(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;,
            Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;
        }
    .end annotation

    .line 153
    :try_start_0
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object p1

    .line 154
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->loadFrom(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lorg/json/JSONObject;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object p1
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p1

    .line 158
    :catch_14
    new-instance p1, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;

    const-string v0, "Cannot read the device from JSON"

    invoke-direct {p1, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadDevice(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;,
            Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->connectWithHandshake(Ljava/lang/String;Z)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->loadDevice(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object p1

    return-object p1
.end method

.method public setDevice(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-void
.end method

.method public setSecureKey(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->mSecureKey:I

    return-void
.end method

.method public updateDeviceIfOkay(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/genonbeta/TrebleShot/util/CommunicationBridge$CommunicationException;,
            Lcom/genonbeta/TrebleShot/util/CommunicationBridge$DifferentClientException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->loadDevice(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getClientAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->processConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    .line 172
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    iget-object p2, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->lastUsageTime:J

    .line 177
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->setDevice(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-object v0

    .line 173
    :cond_28
    new-instance p1, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$DifferentClientException;

    const-string p2, "The target device did not match with the connected one"

    invoke-direct {p1, p2}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$DifferentClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
