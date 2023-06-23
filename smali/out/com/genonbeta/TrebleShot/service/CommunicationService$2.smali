.class Lcom/genonbeta/TrebleShot/service/CommunicationService$2;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

.field final synthetic val$groupId:J

.field final synthetic val$isAccepted:Z

.field final synthetic val$transferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;Lcom/genonbeta/TrebleShot/object/TransferInstance;JZ)V
    .registers 6

    .line 231
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$2;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$2;->val$transferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    iput-wide p3, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$2;->val$groupId:J

    iput-boolean p5, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$2;->val$isAccepted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V
    .registers 6

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$2;->val$transferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$2;->val$transferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getConnection()Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->communicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p1

    .line 238
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "request"

    const-string v2, "requestResponse"

    .line 239
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "groupId"

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$2;->val$groupId:J

    .line 240
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "isAccepted"

    iget-boolean v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$2;->val$isAccepted:Z

    .line 241
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p1, v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    .line 245
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_43
    return-void
.end method
