.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->setupConnection(Landroid/app/Activity;Ljava/lang/String;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

.field final synthetic val$accessPin:I

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ipAddress:Ljava/lang/String;

.field final synthetic val$listener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

.field final synthetic val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;ILjava/lang/String;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 7

    .line 226
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iput p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$accessPin:I

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$ipAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$listener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    iput-object p6, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V
    .registers 9

    const-string v0, "result"

    .line 231
    :try_start_2
    iget v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$accessPin:I

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->setSecureKey(I)V

    .line 233
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$ipAddress:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->connectWithHandshake(Ljava/lang/String;Z)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object v1

    .line 234
    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->loadDevice(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v3

    .line 236
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "request"

    const-string v6, "requestAcquaintance"

    .line 237
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 238
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {v1, v4}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 240
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object v1

    iget-object v1, v1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 243
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_75

    .line 245
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$ipAddress:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->processConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v0

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->lastUsageTime:J

    .line 248
    iget v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$accessPin:I

    iput v1, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->tmpSecureKey:I

    .line 249
    iput-boolean v2, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    const/4 v1, 0x1

    .line 250
    iput-boolean v1, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    .line 252
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 254
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$listener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    if-eqz v1, :cond_7c

    .line 255
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$listener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    invoke-interface {v1, v2, v3, v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;->onDeviceRegistered(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    goto :goto_7c

    .line 257
    :cond_75
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$4;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v3, v4, v1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->showConnectionRejectionInformation(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lorg/json/JSONObject;Landroid/content/DialogInterface$OnClickListener;)V

    .line 259
    :cond_7c
    :goto_7c
    invoke-virtual {p1, v3}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->setReturn(Ljava/lang/Object;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_84
    return-void
.end method
