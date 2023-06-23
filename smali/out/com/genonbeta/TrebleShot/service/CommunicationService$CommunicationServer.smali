.class public Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;
.super Lcom/genonbeta/CoolSocket/CoolSocket;
.source "CommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommunicationServer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V
    .registers 2

    .line 699
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    const/16 p1, 0x468

    .line 700
    invoke-direct {p0, p1}, Lcom/genonbeta/CoolSocket/CoolSocket;-><init>(I)V

    const p1, 0x9c40

    .line 701
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->setSocketTimeout(I)V

    return-void
.end method


# virtual methods
.method public analyzeResponse(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1020
    iget-wide v0, p1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->totalLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    new-instance v0, Lorg/json/JSONObject;

    if-lez v4, :cond_10

    iget-object p1, p1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_13
    return-object v0
.end method

.method protected onConnected(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V
    .registers 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string v1, "clipboardText"

    const-string v2, "filesIndex"

    const-string v0, "deviceId"

    const-string v3, "handshakeOnly"

    const-string v4, "handshakeRequired"

    const-string v5, "secureKey"

    const-string v6, "request"

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->getConnectionCountByAddress(Ljava/net/InetAddress;)I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_1e

    return-void

    .line 715
    :cond_1e
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object v7

    .line 716
    invoke-virtual {v9, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->analyzeResponse(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;)Lorg/json/JSONObject;

    move-result-object v7

    .line 717
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 719
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_5a

    const-string v12, "backCompRequestSendUpdate"

    .line 720
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5a

    const-string v0, "result"

    .line 721
    invoke-virtual {v11, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 723
    iget-object v0, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getSelfExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$1;

    invoke-direct {v1, v9, v10}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$1;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 742
    :cond_5a
    iget-object v12, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v12}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v14, "pin"

    const/4 v15, -0x1

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v14, 0x0

    if-eq v12, v15, :cond_78

    .line 744
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_78

    .line 745
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_78

    const/4 v5, 0x1

    goto :goto_79

    :cond_78
    const/4 v5, 0x0

    .line 749
    :goto_79
    iget-object v12, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v12, v11}, Lcom/genonbeta/TrebleShot/util/AppUtils;->applyDeviceToJSON(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 751
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    const/4 v15, 0x0

    if-eqz v12, :cond_b1

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 752
    invoke-virtual {v9, v10, v11, v13}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->pushReply(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Lorg/json/JSONObject;Z)V

    .line 754
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9b

    goto :goto_9c

    :cond_9b
    return-void

    .line 755
    :cond_9c
    :goto_9c
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 756
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a8

    :cond_a7
    move-object v0, v15

    .line 758
    :goto_a8
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object v3

    .line 759
    invoke-virtual {v9, v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->analyzeResponse(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_b2

    :cond_b1
    move-object v0, v15

    :goto_b2
    if-eqz v0, :cond_2ac

    .line 766
    new-instance v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {v3, v0}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_b9} :catch_2b1

    .line 769
    :try_start_b9
    iget-object v0, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    if-eqz v5, :cond_c6

    .line 772
    iput-boolean v14, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    .line 774
    :cond_c6
    iget-boolean v0, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c8} :catch_cb

    xor-int/2addr v0, v13

    move-object v12, v3

    goto :goto_fd

    :catch_cb
    move-exception v0

    .line 777
    :try_start_cc
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 779
    iget-object v0, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getClientAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v0, v3, v15}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->load(ZLcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v0

    if-eqz v0, :cond_2a4

    .line 784
    iput-boolean v14, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    if-eqz v5, :cond_e5

    .line 787
    iput-boolean v14, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    .line 789
    :cond_e5
    iget-object v3, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 793
    iget-boolean v3, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    if-eqz v3, :cond_fb

    .line 794
    iget-object v3, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionRequest(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    :cond_fb
    move-object v12, v0

    const/4 v0, 0x1

    .line 797
    :goto_fd
    iget-object v3, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getClientAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v12, v4}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->processConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v15

    .line 799
    iget-object v3, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$100(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Z

    move-result v3

    if-eqz v3, :cond_117

    iget-boolean v3, v12, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    if-nez v3, :cond_127

    :cond_117
    if-eqz v5, :cond_12a

    iget-object v3, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    .line 800
    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "qr_trust"

    invoke-interface {v3, v4, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_125} :catch_2b1

    if-eqz v3, :cond_12a

    :cond_127
    const/16 v17, 0x1

    goto :goto_12c

    :cond_12a
    const/16 v17, 0x0

    :goto_12c
    const-string v3, "error"

    if-nez v0, :cond_137

    :try_start_130
    const-string v0, "notAllowed"

    .line 803
    invoke-virtual {v11, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2ac

    .line 804
    :cond_137
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    if-eqz v5, :cond_14c

    .line 805
    iget-object v0, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$200(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Z

    move-result v0

    if-nez v0, :cond_14c

    .line 807
    iget-object v0, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->refreshServiceState()V

    .line 809
    :cond_14c
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v14, 0x2

    sparse-switch v4, :sswitch_data_2b6

    goto :goto_197

    :sswitch_15b
    const-string v4, "requestClipboard"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x2

    goto :goto_198

    :sswitch_165
    const-string v4, "requestStartTransfer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x5

    goto :goto_198

    :sswitch_16f
    const-string v4, "requestTransfer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x0

    goto :goto_198

    :sswitch_179
    const-string v4, "requestAcquaintance"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x3

    goto :goto_198

    :sswitch_183
    const-string v4, "requestHandshake"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x4

    goto :goto_198

    :sswitch_18d
    const-string v4, "requestResponse"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_193} :catch_2b1

    if-eqz v0, :cond_197

    const/4 v0, 0x1

    goto :goto_198

    :cond_197
    :goto_197
    const/4 v0, -0x1

    :goto_198
    const-string v4, "groupId"

    if-eqz v0, :cond_26c

    if-eq v0, v13, :cond_233

    if-eq v0, v14, :cond_20b

    if-eq v0, v8, :cond_1ed

    if-eq v0, v6, :cond_2ad

    if-eq v0, v5, :cond_1a8

    goto/16 :goto_2ac

    .line 985
    :cond_1a8
    :try_start_1a8
    iget-boolean v0, v12, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    if-nez v0, :cond_1b3

    const-string v0, "errorRequireTrustZone"

    .line 986
    invoke-virtual {v11, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2ac

    .line 987
    :cond_1b3
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    .line 988
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1bd} :catch_2b1

    .line 991
    :try_start_1bd
    new-instance v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    int-to-long v4, v0

    invoke-direct {v1, v4, v5}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 992
    iget-object v0, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 994
    iget-object v0, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-object v1, v12, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->findProcessById(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    move-result-object v0

    if-nez v0, :cond_1df

    .line 997
    iget-object v0, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-object v1, v12, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->startFileReceiving(JLjava/lang/String;)V

    goto/16 :goto_2ad

    :cond_1df
    const-string v0, "notAccessible"

    .line 1000
    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1e4} :catch_1e6

    goto/16 :goto_2ac

    :catch_1e6
    :try_start_1e6
    const-string v0, "notFound"

    .line 1004
    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2ac

    .line 975
    :cond_1ed
    iget-object v0, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.DEVICE_ACQUAINTANCE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extraDeviceId"

    iget-object v3, v12, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    .line 976
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extraConnectionAdapterName"

    iget-object v3, v15, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    .line 977
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 975
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2ad

    .line 965
    :cond_20b
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    .line 966
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/genonbeta/TrebleShot/object/TextStreamObject;-><init>(JLjava/lang/String;)V

    .line 968
    iget-object v1, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 969
    iget-object v1, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyClipboardRequest(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/TextStreamObject;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    goto/16 :goto_2ad

    .line 945
    :cond_233
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    .line 946
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "isAccepted"

    .line 947
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 949
    new-instance v2, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 950
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    invoke-direct {v0, v2, v12}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_24e} :catch_2b1

    .line 953
    :try_start_24e
    iget-object v3, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 954
    iget-object v2, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    if-nez v1, :cond_2ad

    .line 957
    iget-object v1, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_26b
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_26b} :catch_2ac

    goto :goto_2ad

    .line 811
    :cond_26c
    :try_start_26c
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    iget-object v0, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getOngoingIndexList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v13, :cond_2ac

    .line 812
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 817
    iget-object v1, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getSelfExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    new-instance v8, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v5, v12

    move-object v6, v15

    move-object v7, v0

    move-object v0, v8

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;JLcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Ljava/lang/String;Z)V

    invoke-interface {v14, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2ad

    .line 782
    :cond_2a4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not reach to the opposite server"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2ac
    :cond_2ac
    :goto_2ac
    const/4 v13, 0x0

    .line 1012
    :cond_2ad
    :goto_2ad
    invoke-virtual {v9, v10, v11, v13}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->pushReply(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Lorg/json/JSONObject;Z)V
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_26c .. :try_end_2b0} :catch_2b1

    goto :goto_2b5

    :catch_2b1
    move-exception v0

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2b5
    return-void

    :sswitch_data_2b6
    .sparse-switch
        -0x79f79410 -> :sswitch_18d
        -0x4befe5d8 -> :sswitch_183
        -0x3b17d9ce -> :sswitch_179
        -0x1955f066 -> :sswitch_16f
        0x24797c1e -> :sswitch_165
        0x50757bc7 -> :sswitch_15b
    .end sparse-switch
.end method

.method public pushReply(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Lorg/json/JSONObject;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "result"

    .line 1026
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    .line 1027
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1025
    invoke-virtual {p1, p2}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    return-void
.end method
