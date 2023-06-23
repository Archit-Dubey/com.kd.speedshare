.class Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeamlessClientHandler"
.end annotation


# instance fields
.field private mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;Lcom/genonbeta/TrebleShot/object/TransferInstance;)V
    .registers 3

    .line 1264
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1265
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/genonbeta/CoolSocket/CoolSocket$Client;)V
    .registers 14

    .line 1271
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object p1

    .line 1274
    new-instance v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V

    .line 1276
    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 1277
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v1

    iget-wide v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iput-wide v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    .line 1278
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object v1

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    .line 1279
    new-instance v1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    const/16 v2, 0x1388

    invoke-direct {v1, v2}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;-><init>(I)V

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    .line 1280
    new-instance v1, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    invoke-direct {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;-><init>()V

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1282
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v1, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setExtra(Ljava/lang/Object;)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1284
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1285
    :try_start_41
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_889

    .line 1288
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v3, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v5, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1289
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1295
    :try_start_5c
    new-instance v4, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    iget-object v5, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    .line 1296
    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;-><init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;)V

    .line 1297
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->setDevice(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    .line 1298
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    .line 1299
    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v5

    iget-object v7, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v7}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getConnection()Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->communicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object v4

    .line 1301
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "request"

    const-string v8, "requestHandshake"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    const-string v5, "CommunicationService"

    const-string v7, "SeamlessClientHandler.onConnect(): reply: empty"

    .line 1302
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object v4

    iget-object v4, v4, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "CommunicationService"

    .line 1305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeamlessClientHandler.onConnect(): Initial connection response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "result"

    .line 1307
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_c6} :catch_72c
    .catchall {:try_start_5c .. :try_end_c6} :catchall_729

    if-eqz v4, :cond_721

    .line 1315
    :try_start_c8
    iget-object v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    .line 1316
    invoke-virtual {v7}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getConnection()Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v7

    iget-object v7, v7, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    const v8, 0xe58a

    invoke-direct {v5, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->connect(Ljava/net/SocketAddress;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_dd} :catch_6c0
    .catchall {:try_start_c8 .. :try_end_dd} :catchall_729

    .line 1323
    :try_start_dd
    iget-object v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "groupId"

    iget-wide v8, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    .line 1324
    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "deviceId"

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    .line 1325
    invoke-virtual {v5, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1326
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1323
    invoke-virtual {v4, p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    const-string p1, "CommunicationService"

    const-string v4, "SeamlessClientHandler.onConnect(): reply: empty"

    .line 1327
    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object p1

    .line 1330
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "CommunicationService"

    .line 1331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeamlessClientHandler.onConnect(): receive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "result"

    .line 1333
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d0

    const-string p1, "CommunicationService"

    const-string v2, "SeamlessClientHandler.onConnect(): false result, it will exit."

    .line 1334
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "error"

    .line 1336
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_144

    const-string p1, "error"

    .line 1337
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_144
    const-string p1, "notFound"

    .line 1340
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16f

    .line 1341
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "flag"

    .line 1342
    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->REMOVED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    iget-wide v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v7, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    sget-object v8, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-static {v4, v5, v7, v8, v6}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->createTransferSelection(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;Z)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/SQLQuery$Select;Landroid/content/ContentValues;)I

    .line 1351
    :cond_16f
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object p1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {p1, v2, v4, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_17c} :catch_668
    .catchall {:try_start_dd .. :try_end_17c} :catchall_729

    .line 1521
    :try_start_17c
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    if-eqz p1, :cond_19a

    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_19a

    .line 1522
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_195} :catch_196

    goto :goto_19a

    :catch_196
    move-exception p1

    .line 1524
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1527
    :cond_19a
    :goto_19a
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 1528
    :try_start_1a1
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1529
    monitor-exit p1
    :try_end_1ab
    .catchall {:try_start_1a1 .. :try_end_1ab} :catchall_1cd

    .line 1531
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v0

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object v2

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1532
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    const-string p1, "CommunicationService"

    const-string v0, "We have exited"

    .line 1534
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1cd
    move-exception v0

    .line 1529
    :try_start_1ce
    monitor-exit p1
    :try_end_1cf
    .catchall {:try_start_1ce .. :try_end_1cf} :catchall_1cd

    throw v0

    .line 1360
    :cond_1d0
    :goto_1d0
    :try_start_1d0
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    if-eqz p1, :cond_531

    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    .line 1361
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_531

    .line 1362
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->reset()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1366
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result p1
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1f3} :catch_78d
    .catchall {:try_start_1d0 .. :try_end_1f3} :catchall_729

    if-eqz p1, :cond_1f7

    goto/16 :goto_531

    .line 1370
    :cond_1f7
    :try_start_1f7
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    iget-object v7, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 1371
    invoke-static {p1, v4, v5, v1, v7}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->fetchValidTransfer(Landroid/content/Context;JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)Lcom/genonbeta/TrebleShot/object/TransferObject;

    move-result-object p1

    if-nez p1, :cond_23b

    const-string p1, "CommunicationService"

    const-string v1, "SeamlessClientHandler(): Exiting because there is no pending file instance left"

    .line 1377
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_20c} :catch_4b9
    .catchall {:try_start_1f7 .. :try_end_20c} :catchall_4b7

    .line 1472
    :try_start_20c
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    if-eqz p1, :cond_531

    const-string p1, "CommunicationService"

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeamlessClientHandler.onConnect(): Updating file instances to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    :goto_236
    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_239} :catch_78d
    .catchall {:try_start_20c .. :try_end_239} :catchall_729

    goto/16 :goto_531

    .line 1381
    :cond_23b
    :try_start_23b
    iput-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 1382
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getIncomingTransactionFile(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    iput-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 1383
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/genonbeta/android/framework/io/StreamInfo;->getStreamInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/StreamInfo;

    move-result-object p1

    .line 1385
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyFileTransaction(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1388
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    check-cast v1, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    .line 1390
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/StreamInfo;->openOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->setOutputStream(Ljava/io/OutputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    move-result-object p1

    new-instance v4, Ljava/net/ServerSocket;

    invoke-direct {v4, v6}, Ljava/net/ServerSocket;-><init>(I)V

    .line 1391
    invoke-virtual {p1, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->setServerSocket(Ljava/net/ServerSocket;)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    move-result-object p1

    .line 1392
    invoke-virtual {p1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->setTimeout(I)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;

    move-result-object p1

    const/16 v4, 0x1fa0

    new-array v4, v4, [B

    .line 1393
    invoke-virtual {p1, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->setBuffer([B)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object p1

    iget-object v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v4, v4, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    .line 1394
    invoke-virtual {p1, v4, v5}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setFileSize(J)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object p1

    .line 1395
    invoke-virtual {p1, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setExtra(Ljava/lang/Object;)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1397
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$500(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->prepare(Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;

    move-result-object p1

    .line 1398
    iget-object v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v4}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v4

    .line 1399
    iget-object v7, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iput-wide v4, v7, Lcom/genonbeta/TrebleShot/object/TransferObject;->skippedBytes:J

    .line 1402
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "requestId"

    .line 1404
    iget-object v9, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v9, v9, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "groupId"

    .line 1405
    iget-object v9, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v9, v9, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "socketPort"

    .line 1406
    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Builder;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "result"

    .line 1407
    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_2de

    const-string v1, "skippedBytes"

    .line 1410
    invoke-virtual {v7, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1412
    :cond_2de
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getExtra()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    const-string v1, "CommunicationService"

    .line 1413
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive.onTaskPrepareSocket(): reply: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getExtra()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v7, v7, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {v7}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object v7

    iget-object v7, v7, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "CommunicationService"

    .line 1418
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive.onTaskPrepareSocket(): receive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "result"

    .line 1420
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41d

    const-string v4, "jobDone"

    .line 1421
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_386

    const-string v4, "jobDone"

    .line 1422
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_386

    .line 1423
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->interrupt()V

    const-string p1, "CommunicationService"

    const-string v1, "Receive.onTaskPrepareSocket(): Transfer should be closed, babe!"

    .line 1424
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35a
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_35a} :catch_4b9
    .catchall {:try_start_23b .. :try_end_35a} :catchall_4b7

    .line 1472
    :try_start_35a
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    if-eqz p1, :cond_531

    const-string p1, "CommunicationService"

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeamlessClientHandler.onConnect(): Updating file instances to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;
    :try_end_384
    .catch Ljava/lang/Exception; {:try_start_35a .. :try_end_384} :catch_78d
    .catchall {:try_start_35a .. :try_end_384} :catchall_729

    goto/16 :goto_236

    :cond_386
    :try_start_386
    const-string v4, "flag"

    .line 1426
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_488

    const-string v4, "flagGroupExists"

    const-string v5, "flag"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_488

    const-string v4, "error"

    .line 1427
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c7

    const-string v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notFound"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c7

    .line 1428
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->REMOVED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const-string p1, "CommunicationService"

    const-string v1, "Receive.onTaskPrepareSocket(): Sender says it does not have the file defined"

    .line 1429
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_488

    :cond_3c7
    const-string v4, "error"

    .line 1430
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f2

    const-string v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notAccessible"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f2

    .line 1431
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const-string p1, "CommunicationService"

    const-string v1, "Receive.onTaskPrepareSocket(): Sender says it can\'t open the file"

    .line 1432
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_488

    :cond_3f2
    const-string v4, "error"

    .line 1433
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_488

    const-string v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "errorUnknown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_488

    .line 1434
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const-string p1, "CommunicationService"

    const-string v1, "Receive.onTaskPrepareSocket(): Sender says an unknown error occurred"

    .line 1435
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_488

    :cond_41d
    const-string v7, "sizeChanged"

    .line 1439
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v8, -0x1

    if-eqz v7, :cond_42e

    const-string v7, "sizeChanged"

    .line 1440
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_42f

    :cond_42e
    move-wide v10, v8

    :goto_42f
    cmp-long v7, v10, v8

    if-lez v7, :cond_443

    .line 1444
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getExtra()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v7, v7, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v7, v7, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    cmp-long v9, v7, v10

    if-eqz v9, :cond_443

    const/4 v7, 0x1

    goto :goto_444

    :cond_443
    const/4 v7, 0x0

    :goto_444
    if-eqz v7, :cond_44f

    const-wide/16 v8, 0x1

    cmp-long v10, v4, v8

    if-gez v10, :cond_44d

    goto :goto_44f

    :cond_44d
    const/4 v4, 0x0

    goto :goto_450

    :cond_44f
    :goto_44f
    const/4 v4, 0x1

    :goto_450
    if-eqz v7, :cond_469

    const-string v5, "CommunicationService"

    const-string v7, "Receive.onTaskPrepareSocket(): Sender says the file has a new size"

    .line 1449
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getExtra()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v5, v5, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    const-string v7, "sizeChanged"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    :cond_469
    if-nez v4, :cond_47f

    const-string v1, "CommunicationService"

    const-string v4, "Receive.onTaskPrepareSocket(): The change may broke the previous file which has a length. Cannot take the risk."

    .line 1454
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;->getExtra()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->REMOVED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    goto :goto_488

    .line 1457
    :cond_47f
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$500(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService$Receive;->receive(Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;Z)Lcom/genonbeta/CoolSocket/CoolTransfer$Receive$Handler;
    :try_end_488
    .catch Ljava/lang/Exception; {:try_start_386 .. :try_end_488} :catch_4b9
    .catchall {:try_start_386 .. :try_end_488} :catchall_4b7

    .line 1472
    :cond_488
    :goto_488
    :try_start_488
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    if-eqz p1, :cond_1d0

    const-string p1, "CommunicationService"

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeamlessClientHandler.onConnect(): Updating file instances to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I
    :try_end_4b5
    .catch Ljava/lang/Exception; {:try_start_488 .. :try_end_4b5} :catch_78d
    .catchall {:try_start_488 .. :try_end_4b5} :catchall_729

    goto/16 :goto_1d0

    :catchall_4b7
    move-exception p1

    goto :goto_503

    :catch_4b9
    move-exception p1

    .line 1462
    :try_start_4ba
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4bd
    .catchall {:try_start_4ba .. :try_end_4bd} :catchall_4b7

    .line 1465
    :try_start_4bd
    iget-boolean p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->recoverInterruptions:Z

    if-nez p1, :cond_4ca

    .line 1466
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    invoke-static {p1, v1, v2}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->recoverIncomingInterruptions(Landroid/content/Context;J)V

    .line 1467
    iput-boolean v3, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->recoverInterruptions:Z
    :try_end_4ca
    .catchall {:try_start_4bd .. :try_end_4ca} :catchall_501

    .line 1472
    :cond_4ca
    :try_start_4ca
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    if-eqz p1, :cond_4f7

    const-string p1, "CommunicationService"

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeamlessClientHandler.onConnect(): Updating file instances to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I
    :try_end_4f7
    .catch Ljava/lang/Exception; {:try_start_4ca .. :try_end_4f7} :catch_4fd
    .catchall {:try_start_4ca .. :try_end_4f7} :catchall_4f9

    :cond_4f7
    const/4 p1, 0x1

    goto :goto_532

    :catchall_4f9
    move-exception p1

    const/4 v6, 0x1

    goto/16 :goto_80d

    :catch_4fd
    move-exception p1

    const/4 v6, 0x1

    goto/16 :goto_78e

    :catchall_501
    move-exception p1

    const/4 v6, 0x1

    .line 1472
    :goto_503
    :try_start_503
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    if-eqz v1, :cond_530

    const-string v1, "CommunicationService"

    .line 1475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeamlessClientHandler.onConnect(): Updating file instances to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    iget-object v2, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {v1, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I

    .line 1478
    :cond_530
    throw p1
    :try_end_531
    .catch Ljava/lang/Exception; {:try_start_503 .. :try_end_531} :catch_78d
    .catchall {:try_start_503 .. :try_end_531} :catchall_729

    :cond_531
    :goto_531
    const/4 p1, 0x0

    .line 1484
    :goto_532
    :try_start_532
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getSavePath(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    .line 1485
    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    iget-object v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1486
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v4

    iget-wide v7, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v5, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    sget-object v9, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-static {v7, v8, v5, v9, v6}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->createTransferSelection(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;Z)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getFirstFromTable(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object v4

    if-nez v4, :cond_566

    const/4 v4, 0x1

    goto :goto_567

    :cond_566
    const/4 v4, 0x0

    .line 1492
    :goto_567
    iget-object v5, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "result"

    .line 1493
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "jobDone"

    if-eqz v2, :cond_57c

    if-eqz v4, :cond_57c

    const/4 v9, 0x1

    goto :goto_57d

    :cond_57c
    const/4 v9, 0x0

    .line 1494
    :goto_57d
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v7

    .line 1495
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1492
    invoke-virtual {v5, v7}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    const-string v5, "CommunicationService"

    .line 1496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeamlessClientHandler.onConnect(): reply: done ?? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_599

    if-eqz v4, :cond_599

    const/4 v6, 0x1

    :cond_599
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5f1

    .line 1499
    iget-object v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_5db

    if-eqz v2, :cond_5ca

    .line 1502
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v4

    invoke-virtual {v2, v0, v4, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyFileReceived(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/android/framework/io/DocumentFile;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    const-string v1, "CommunicationService"

    const-string v2, "SeamlessClientHandler.onConnect(): Notify user"

    .line 1503
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f1

    .line 1505
    :cond_5ca
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyReceiveError(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    const-string v1, "CommunicationService"

    const-string v2, "SeamlessClientHandler.onConnect(): Some files was not received"

    .line 1506
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f1

    .line 1511
    :cond_5db
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    const-string v1, "CommunicationService"

    const-string v2, "SeamlessClientHandler.onConnect(): Removing notification an error is already notified"

    .line 1512
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e7
    .catch Ljava/lang/Exception; {:try_start_532 .. :try_end_5e7} :catch_5ed
    .catchall {:try_start_532 .. :try_end_5e7} :catchall_5e8

    goto :goto_5f1

    :catchall_5e8
    move-exception v1

    move v6, p1

    move-object p1, v1

    goto/16 :goto_80d

    :catch_5ed
    move-exception v1

    .line 1515
    :try_start_5ee
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5f1
    .catch Ljava/lang/Exception; {:try_start_5ee .. :try_end_5f1} :catch_663
    .catchall {:try_start_5ee .. :try_end_5f1} :catchall_5e8

    .line 1521
    :cond_5f1
    :goto_5f1
    :try_start_5f1
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    if-eqz v1, :cond_60f

    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_60f

    .line 1522
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_60a
    .catch Ljava/io/IOException; {:try_start_5f1 .. :try_end_60a} :catch_60b

    goto :goto_60f

    :catch_60b
    move-exception v1

    .line 1524
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1527
    :cond_60f
    :goto_60f
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1528
    :try_start_616
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1529
    monitor-exit v1
    :try_end_620
    .catchall {:try_start_616 .. :try_end_620} :catchall_660

    .line 1531
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v2

    iget-wide v4, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object v2

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1532
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    const-string v1, "CommunicationService"

    const-string v2, "We have exited"

    .line 1534
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_809

    .line 1536
    iget p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->attemptsLeft:I

    if-lez p1, :cond_809

    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1537
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_809

    .line 1539
    :try_start_653
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v4}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->startFileReceiving(JLjava/lang/String;)V

    .line 1540
    iget p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->attemptsLeft:I
    :try_end_65e
    .catch Ljava/lang/Exception; {:try_start_653 .. :try_end_65e} :catch_802

    goto/16 :goto_7fe

    :catchall_660
    move-exception p1

    .line 1529
    :try_start_661
    monitor-exit v1
    :try_end_662
    .catchall {:try_start_661 .. :try_end_662} :catchall_660

    throw p1

    :catch_663
    move-exception v1

    move v6, p1

    move-object p1, v1

    goto/16 :goto_78e

    :catch_668
    move-exception p1

    .line 1355
    :try_start_669
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66c
    .catch Ljava/lang/Exception; {:try_start_669 .. :try_end_66c} :catch_78d
    .catchall {:try_start_669 .. :try_end_66c} :catchall_729

    .line 1521
    :try_start_66c
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    if-eqz p1, :cond_68a

    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_68a

    .line 1522
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_685
    .catch Ljava/io/IOException; {:try_start_66c .. :try_end_685} :catch_686

    goto :goto_68a

    :catch_686
    move-exception p1

    .line 1524
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1527
    :cond_68a
    :goto_68a
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 1528
    :try_start_691
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1529
    monitor-exit p1
    :try_end_69b
    .catchall {:try_start_691 .. :try_end_69b} :catchall_6bd

    .line 1531
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v0

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object v2

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1532
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    const-string p1, "CommunicationService"

    const-string v0, "We have exited"

    .line 1534
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_6bd
    move-exception v0

    .line 1529
    :try_start_6be
    monitor-exit p1
    :try_end_6bf
    .catchall {:try_start_6be .. :try_end_6bf} :catchall_6bd

    throw v0

    .line 1318
    :catch_6c0
    :try_start_6c0
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object p1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {p1, v2, v4, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    :try_end_6cd
    .catch Ljava/lang/Exception; {:try_start_6c0 .. :try_end_6cd} :catch_78d
    .catchall {:try_start_6c0 .. :try_end_6cd} :catchall_729

    .line 1521
    :try_start_6cd
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    if-eqz p1, :cond_6eb

    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6eb

    .line 1522
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_6e6
    .catch Ljava/io/IOException; {:try_start_6cd .. :try_end_6e6} :catch_6e7

    goto :goto_6eb

    :catch_6e7
    move-exception p1

    .line 1524
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1527
    :cond_6eb
    :goto_6eb
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 1528
    :try_start_6f2
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1529
    monitor-exit p1
    :try_end_6fc
    .catchall {:try_start_6f2 .. :try_end_6fc} :catchall_71e

    .line 1531
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v0

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object v2

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1532
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    const-string p1, "CommunicationService"

    const-string v0, "We have exited"

    .line 1534
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_71e
    move-exception v0

    .line 1529
    :try_start_71f
    monitor-exit p1
    :try_end_720
    .catchall {:try_start_71f .. :try_end_720} :catchall_71e

    throw v0

    .line 1308
    :cond_721
    :try_start_721
    new-instance p1, Ljava/lang/Exception;

    const-string v2, "Server rejected the request"

    invoke-direct {p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_729
    .catch Ljava/lang/Exception; {:try_start_721 .. :try_end_729} :catch_72c
    .catchall {:try_start_721 .. :try_end_729} :catchall_729

    :catchall_729
    move-exception p1

    goto/16 :goto_80d

    .line 1310
    :catch_72c
    :try_start_72c
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object p1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {p1, v2, v4, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    :try_end_739
    .catch Ljava/lang/Exception; {:try_start_72c .. :try_end_739} :catch_78d
    .catchall {:try_start_72c .. :try_end_739} :catchall_729

    .line 1521
    :try_start_739
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    if-eqz p1, :cond_757

    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_757

    .line 1522
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_752
    .catch Ljava/io/IOException; {:try_start_739 .. :try_end_752} :catch_753

    goto :goto_757

    :catch_753
    move-exception p1

    .line 1524
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1527
    :cond_757
    :goto_757
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 1528
    :try_start_75e
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1529
    monitor-exit p1
    :try_end_768
    .catchall {:try_start_75e .. :try_end_768} :catchall_78a

    .line 1531
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v0

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object v2

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1532
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    const-string p1, "CommunicationService"

    const-string v0, "We have exited"

    .line 1534
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_78a
    move-exception v0

    .line 1529
    :try_start_78b
    monitor-exit p1
    :try_end_78c
    .catchall {:try_start_78b .. :try_end_78c} :catchall_78a

    throw v0

    :catch_78d
    move-exception p1

    .line 1518
    :goto_78e
    :try_start_78e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_791
    .catchall {:try_start_78e .. :try_end_791} :catchall_729

    .line 1521
    :try_start_791
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    if-eqz p1, :cond_7af

    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7af

    .line 1522
    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_7aa
    .catch Ljava/io/IOException; {:try_start_791 .. :try_end_7aa} :catch_7ab

    goto :goto_7af

    :catch_7ab
    move-exception p1

    .line 1524
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1527
    :cond_7af
    :goto_7af
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 1528
    :try_start_7b6
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1529
    monitor-exit p1
    :try_end_7c0
    .catchall {:try_start_7b6 .. :try_end_7c0} :catchall_80a

    .line 1531
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v1

    iget-wide v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object v4

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v4, v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1532
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    const-string p1, "CommunicationService"

    const-string v1, "We have exited"

    .line 1534
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_809

    .line 1536
    iget p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->attemptsLeft:I

    if-lez p1, :cond_809

    iget-object p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1537
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_809

    .line 1539
    :try_start_7f3
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v4}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->startFileReceiving(JLjava/lang/String;)V

    .line 1540
    iget p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->attemptsLeft:I

    :goto_7fe
    sub-int/2addr p1, v3

    iput p1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->attemptsLeft:I
    :try_end_801
    .catch Ljava/lang/Exception; {:try_start_7f3 .. :try_end_801} :catch_802

    goto :goto_809

    :catch_802
    const-string p1, "CommunicationService"

    const-string v0, "SeamlessClientHandler.onConnect(): Restart is requested, but transfer instance failed to reconstruct"

    .line 1542
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_809
    :goto_809
    return-void

    :catchall_80a
    move-exception v0

    .line 1529
    :try_start_80b
    monitor-exit p1
    :try_end_80c
    .catchall {:try_start_80b .. :try_end_80c} :catchall_80a

    throw v0

    .line 1521
    :goto_80d
    :try_start_80d
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    if-eqz v1, :cond_82b

    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_82b

    .line 1522
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_826
    .catch Ljava/io/IOException; {:try_start_80d .. :try_end_826} :catch_827

    goto :goto_82b

    :catch_827
    move-exception v1

    .line 1524
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1527
    :cond_82b
    :goto_82b
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 1528
    :try_start_832
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1529
    monitor-exit v2
    :try_end_83c
    .catchall {:try_start_832 .. :try_end_83c} :catchall_886

    .line 1531
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v2

    iget-wide v4, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->mTransfer:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object v2

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1532
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    const-string v1, "CommunicationService"

    const-string v2, "We have exited"

    .line 1534
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_885

    .line 1536
    iget v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->attemptsLeft:I

    if-lez v1, :cond_885

    iget-object v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1537
    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_885

    .line 1539
    :try_start_86f
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessClientHandler;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v4, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v2, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->startFileReceiving(JLjava/lang/String;)V

    .line 1540
    iget v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->attemptsLeft:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->attemptsLeft:I
    :try_end_87d
    .catch Ljava/lang/Exception; {:try_start_86f .. :try_end_87d} :catch_87e

    goto :goto_885

    :catch_87e
    const-string v0, "CommunicationService"

    const-string v1, "SeamlessClientHandler.onConnect(): Restart is requested, but transfer instance failed to reconstruct"

    .line 1542
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_885
    :goto_885
    throw p1

    :catchall_886
    move-exception p1

    .line 1529
    :try_start_887
    monitor-exit v2
    :try_end_888
    .catchall {:try_start_887 .. :try_end_888} :catchall_886

    throw p1

    :catchall_889
    move-exception p1

    .line 1286
    :try_start_88a
    monitor-exit v1
    :try_end_88b
    .catchall {:try_start_88a .. :try_end_88b} :catchall_889

    goto :goto_88d

    :goto_88c
    throw p1

    :goto_88d
    goto :goto_88c
.end method
