.class Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;
.super Lcom/genonbeta/CoolSocket/CoolSocket;
.source "CommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeamlessServer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V
    .registers 2

    .line 1034
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    const p1, 0xe58a

    .line 1035
    invoke-direct {p0, p1}, Lcom/genonbeta/CoolSocket/CoolSocket;-><init>(I)V

    const/16 p1, 0x1388

    .line 1036
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->setSocketTimeout(I)V

    return-void
.end method


# virtual methods
.method protected onConnected(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1042
    new-instance v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;

    iget-object v4, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v3, v4}, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V

    .line 1045
    iput-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    .line 1046
    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iput-object v4, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 1047
    new-instance v4, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;

    invoke-direct {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;-><init>()V

    iput-object v4, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1048
    iget-object v4, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v4, v3}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setExtra(Ljava/lang/Object;)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1050
    iget-object v4, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1051
    :try_start_24
    iget-object v5, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_8da

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1055
    :try_start_30
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object v8

    .line 1056
    sget-object v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SeamlessServer.onConnected(): receive: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v9, Lorg/json/JSONObject;

    iget-object v8, v8, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "deviceId"

    .line 1058
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_63

    const-string v8, "deviceId"

    .line 1059
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    goto :goto_64

    :cond_63
    move-object v14, v6

    :goto_64
    const-string v8, "groupId"

    .line 1061
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1063
    invoke-virtual {v2, v8}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->setId(I)V

    .line 1066
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "result"

    const/4 v15, 0x0

    .line 1067
    invoke-virtual {v9, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_79} :catch_7e2
    .catchall {:try_start_30 .. :try_end_79} :catchall_7dd

    if-eqz v14, :cond_b3

    .line 1071
    :try_start_7b
    new-instance v10, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {v10, v14}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 1072
    iget-object v11, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v11}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 1074
    iget-object v11, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v11}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getClientAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v10, v12}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->processConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v11

    .line 1076
    new-instance v12, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;

    invoke-direct {v12}, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;-><init>()V

    .line 1077
    invoke-virtual {v12, v11}, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;->supply(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;

    move-result-object v11

    .line 1078
    invoke-virtual {v11, v10}, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;->supply(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;

    move-result-object v10

    iget-object v11, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    .line 1079
    invoke-virtual {v11}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v11

    int-to-long v12, v8

    const/4 v8, 0x1

    const/4 v4, 0x0

    move v15, v8

    invoke-virtual/range {v10 .. v15}, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;->build(Lcom/genonbeta/TrebleShot/database/AccessDatabase;JLjava/lang/String;Z)Lcom/genonbeta/TrebleShot/object/TransferInstance;

    move-result-object v5

    goto :goto_c6

    :cond_b3
    const/4 v4, 0x0

    .line 1081
    new-instance v5, Lcom/genonbeta/TrebleShot/object/TransferInstance;

    iget-object v10, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v10}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v11

    int-to-long v12, v8

    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getClientAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lcom/genonbeta/TrebleShot/object/TransferInstance;-><init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;JLjava/lang/String;Z)V
    :try_end_c6
    .catch Lcom/genonbeta/TrebleShot/exception/TransferGroupNotFoundException; {:try_start_7b .. :try_end_c6} :catch_710
    .catch Lcom/genonbeta/TrebleShot/exception/DeviceNotFoundException; {:try_start_7b .. :try_end_c6} :catch_66a
    .catchall {:try_start_7b .. :try_end_c6} :catchall_665

    .line 1083
    :goto_c6
    :try_start_c6
    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v8

    iget-wide v10, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iput-wide v10, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    .line 1084
    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object v8

    iget-object v8, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    iput-object v8, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    const-string v8, "result"

    .line 1086
    invoke-virtual {v9, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_db
    .catch Lcom/genonbeta/TrebleShot/exception/TransferGroupNotFoundException; {:try_start_c6 .. :try_end_db} :catch_661
    .catch Lcom/genonbeta/TrebleShot/exception/DeviceNotFoundException; {:try_start_c6 .. :try_end_db} :catch_65e
    .catchall {:try_start_c6 .. :try_end_db} :catchall_7b6

    .line 1096
    :try_start_db
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1097
    sget-object v8, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v8, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v9, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v11, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11, v4}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1107
    iget-object v8, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v8}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    .line 1109
    :cond_10a
    :goto_10a
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v8

    if-eqz v8, :cond_5e5

    .line 1110
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_5e5

    .line 1111
    iget-object v8, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v8}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->reset()Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1116
    iget-object v8, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    check-cast v8, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;

    .line 1117
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object v9

    .line 1118
    sget-object v10, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SeamlessServer.onConnected(): receive: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v10, v9, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    if-eqz v10, :cond_566

    iget-wide v10, v9, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->totalLength:J

    const-wide/16 v12, 0x1

    cmp-long v14, v10, v12

    if-gez v14, :cond_14d

    goto/16 :goto_566

    .line 1125
    :cond_14d
    new-instance v10, Lorg/json/JSONObject;

    iget-object v9, v9, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1126
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_159} :catch_7da
    .catchall {:try_start_db .. :try_end_159} :catchall_860

    :try_start_159
    const-string v11, "result"

    .line 1129
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23a

    const-string v11, "result"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_23a

    const-string v11, "jobDone"

    .line 1131
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_192

    const-string v11, "jobDone"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_192

    .line 1132
    sget-object v10, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SeamlessServer.onConnected(): Receiver notified us that it has received all the pending transfers: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19b

    .line 1134
    :cond_192
    iget-object v10, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v10}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v10

    invoke-virtual {v10}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->interrupt()V
    :try_end_19b
    .catch Lcom/genonbeta/android/database/exception/ReconstructionFailedException; {:try_start_159 .. :try_end_19b} :catch_4b7
    .catch Ljava/io/FileNotFoundException; {:try_start_159 .. :try_end_19b} :catch_459
    .catch Ljava/io/StreamCorruptedException; {:try_start_159 .. :try_end_19b} :catch_457
    .catch Lcom/genonbeta/android/framework/io/StreamInfo$FolderStateException; {:try_start_159 .. :try_end_19b} :catch_455
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_19b} :catch_3f8
    .catchall {:try_start_159 .. :try_end_19b} :catchall_3f4

    .line 1205
    :goto_19b
    :try_start_19b
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_1c2

    .line 1206
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1207
    sget-object v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1c2} :catch_7da
    .catchall {:try_start_19b .. :try_end_1c2} :catchall_860

    .line 1234
    :cond_1c2
    :try_start_1c2
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1d9

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1d3} :catch_1d4

    goto :goto_1d9

    :catch_1d4
    move-exception v0

    move-object v2, v0

    .line 1237
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d9
    :goto_1d9
    if-eqz v5, :cond_201

    .line 1240
    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    iget-object v4, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1241
    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_201

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1242
    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_201

    .line 1243
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$400(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v2

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v2, v5, v4, v6}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    goto :goto_20a

    .line 1244
    :cond_201
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-eqz v2, :cond_20a

    .line 1245
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1247
    :cond_20a
    :goto_20a
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1248
    :try_start_211
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1250
    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_22f

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_22f

    .line 1251
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1253
    :cond_22f
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    .line 1254
    monitor-exit v4

    return-void

    :catchall_236
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_239
    .catchall {:try_start_211 .. :try_end_239} :catchall_236

    throw v2

    .line 1137
    :cond_23a
    :try_start_23a
    iget-object v11, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v11}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v11

    invoke-virtual {v11}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v11

    if-nez v11, :cond_315

    .line 1138
    new-instance v11, Lcom/genonbeta/TrebleShot/object/TransferObject;

    const-string v12, "requestId"

    .line 1139
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    iget-object v14, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    iget-object v15, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V

    iput-object v11, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 1143
    iget-object v11, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v11}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v11

    iget-object v12, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {v11, v12}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 1145
    iget-object v11, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    const-string v12, "socketPort"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/genonbeta/TrebleShot/object/TransferObject;->accessPort:I

    const-string v11, "skippedBytes"

    .line 1147
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_299

    .line 1148
    iget-object v11, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    const-string v12, "skippedBytes"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/genonbeta/TrebleShot/object/TransferObject;->skippedBytes:J

    .line 1149
    sget-object v10, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SeamlessServes.onConnected(): Has skipped bytes: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v12, v12, Lcom/genonbeta/TrebleShot/object/TransferObject;->skippedBytes:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_299
    iget-object v10, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v10}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v10

    iget-object v11, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {v10, v11}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I

    .line 1154
    iget-object v10, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v10}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v11, v11, Lcom/genonbeta/TrebleShot/object/TransferObject;->file:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/genonbeta/android/framework/io/StreamInfo;->getStreamInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/StreamInfo;

    move-result-object v10

    const-string v11, "result"

    .line 1156
    invoke-virtual {v9, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1158
    iget-wide v11, v10, Lcom/genonbeta/android/framework/io/StreamInfo;->size:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-ltz v15, :cond_2da

    iget-wide v11, v10, Lcom/genonbeta/android/framework/io/StreamInfo;->size:J

    iget-object v13, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v13, v13, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    cmp-long v15, v11, v13

    if-eqz v15, :cond_2da

    const-string v11, "sizeChanged"

    .line 1160
    iget-wide v12, v10, Lcom/genonbeta/android/framework/io/StreamInfo;->size:J

    invoke-virtual {v9, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1161
    iget-object v11, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v12, v10, Lcom/genonbeta/android/framework/io/StreamInfo;->size:J

    iput-wide v12, v11, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    .line 1164
    :cond_2da
    iget-object v11, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v11}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyFileTransaction(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1165
    sget-object v11, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    const-string v12, "SeamlessServer.onConnected(): Proceeding to send"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getClientAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->setServerIp(Ljava/lang/String;)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;

    move-result-object v11

    .line 1168
    invoke-virtual {v10}, Lcom/genonbeta/android/framework/io/StreamInfo;->openInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->setInputStream(Ljava/io/InputStream;)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;

    move-result-object v11

    iget-object v12, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget v12, v12, Lcom/genonbeta/TrebleShot/object/TransferObject;->accessPort:I

    .line 1169
    invoke-virtual {v11, v12}, Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;->setPort(I)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v11

    iget-wide v12, v10, Lcom/genonbeta/android/framework/io/StreamInfo;->size:J

    .line 1170
    invoke-virtual {v11, v12, v13}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setFileSize(J)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v10

    const/16 v11, 0x1fa0

    new-array v11, v11, [B

    .line 1171
    invoke-virtual {v10, v11}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setBuffer([B)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    move-result-object v10

    .line 1172
    invoke-virtual {v10, v3}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->setExtra(Ljava/lang/Object;)Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    goto/16 :goto_3cb

    .line 1173
    :cond_315
    iget-object v10, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v10}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v10

    invoke-virtual {v10}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_3cb

    const-string v10, "result"

    .line 1174
    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "jobDone"

    .line 1175
    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_32c
    .catch Lcom/genonbeta/android/database/exception/ReconstructionFailedException; {:try_start_23a .. :try_end_32c} :catch_4b7
    .catch Ljava/io/FileNotFoundException; {:try_start_23a .. :try_end_32c} :catch_459
    .catch Ljava/io/StreamCorruptedException; {:try_start_23a .. :try_end_32c} :catch_457
    .catch Lcom/genonbeta/android/framework/io/StreamInfo$FolderStateException; {:try_start_23a .. :try_end_32c} :catch_455
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_32c} :catch_3f8
    .catchall {:try_start_23a .. :try_end_32c} :catchall_3f4

    .line 1205
    :try_start_32c
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_353

    .line 1206
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1207
    sget-object v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_353
    .catch Ljava/lang/Exception; {:try_start_32c .. :try_end_353} :catch_7da
    .catchall {:try_start_32c .. :try_end_353} :catchall_860

    .line 1234
    :cond_353
    :try_start_353
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_36a

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_364
    .catch Ljava/io/IOException; {:try_start_353 .. :try_end_364} :catch_365

    goto :goto_36a

    :catch_365
    move-exception v0

    move-object v2, v0

    .line 1237
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_36a
    :goto_36a
    if-eqz v5, :cond_392

    .line 1240
    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    iget-object v4, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1241
    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_392

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1242
    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_392

    .line 1243
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$400(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v2

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v2, v5, v4, v6}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    goto :goto_39b

    .line 1244
    :cond_392
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-eqz v2, :cond_39b

    .line 1245
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1247
    :cond_39b
    :goto_39b
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1248
    :try_start_3a2
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1250
    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_3c0

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_3c0

    .line 1251
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1253
    :cond_3c0
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    .line 1254
    monitor-exit v4

    return-void

    :catchall_3c7
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_3ca
    .catchall {:try_start_3a2 .. :try_end_3ca} :catchall_3c7

    throw v2

    .line 1205
    :cond_3cb
    :goto_3cb
    :try_start_3cb
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v10

    if-lez v10, :cond_4f6

    .line 1206
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1207
    sget-object v10, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_3ef
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f2
    .catch Ljava/lang/Exception; {:try_start_3cb .. :try_end_3f2} :catch_7da
    .catchall {:try_start_3cb .. :try_end_3f2} :catchall_860

    goto/16 :goto_4f6

    :catchall_3f4
    move-exception v0

    move-object v4, v0

    goto/16 :goto_53e

    :catch_3f8
    move-exception v0

    move-object v10, v0

    .line 1195
    :try_start_3fa
    sget-object v11, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SeamlessServer.onConnected(): Exception is handled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "result"

    .line 1197
    invoke-virtual {v9, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v11, "error"

    const-string v12, "errorUnknown"

    .line 1198
    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "flag"

    const-string v12, "flagGroupExists"

    .line 1199
    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1201
    iget-object v11, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v12, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v12, v11, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 1203
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_430
    .catchall {:try_start_3fa .. :try_end_430} :catchall_3f4

    .line 1205
    :try_start_430
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v10

    if-lez v10, :cond_4f6

    .line 1206
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1207
    sget-object v10, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_454
    .catch Ljava/lang/Exception; {:try_start_430 .. :try_end_454} :catch_7da
    .catchall {:try_start_430 .. :try_end_454} :catchall_860

    goto :goto_3ef

    :catch_455
    move-exception v0

    goto :goto_45a

    :catch_457
    move-exception v0

    goto :goto_45a

    :catch_459
    move-exception v0

    :goto_45a
    move-object v10, v0

    .line 1185
    :try_start_45b
    sget-object v11, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SeamlessServer.onConnected(): File is not accessible ? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v13, v13, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "result"

    .line 1187
    invoke-virtual {v9, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v11, "error"

    const-string v12, "notAccessible"

    .line 1188
    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "flag"

    const-string v12, "flagGroupExists"

    .line 1189
    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1191
    iget-object v11, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v12, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v12, v11, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 1193
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_491
    .catchall {:try_start_45b .. :try_end_491} :catchall_3f4

    .line 1205
    :try_start_491
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v10

    if-lez v10, :cond_4f6

    .line 1206
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1207
    sget-object v10, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_4b5
    .catch Ljava/lang/Exception; {:try_start_491 .. :try_end_4b5} :catch_7da
    .catchall {:try_start_491 .. :try_end_4b5} :catchall_860

    goto/16 :goto_3ef

    :catch_4b7
    :try_start_4b7
    const-string v10, "result"

    .line 1179
    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v10, "error"

    const-string v11, "notFound"

    .line 1180
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "flag"

    const-string v11, "flagGroupExists"

    .line 1181
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1183
    iget-object v10, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object v11, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->REMOVED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v11, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;
    :try_end_4d0
    .catchall {:try_start_4b7 .. :try_end_4d0} :catchall_3f4

    .line 1205
    :try_start_4d0
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v10

    if-lez v10, :cond_4f6

    .line 1206
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1207
    sget-object v10, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3ef

    :cond_4f6
    :goto_4f6
    const-string v10, "result"

    .line 1211
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_50f

    const-string v10, "result"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_50f

    .line 1212
    iget-object v9, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v9}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$300(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;

    move-result-object v9

    invoke-virtual {v9, v8, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService$Send;->send(Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Builder;Z)Lcom/genonbeta/CoolSocket/CoolTransfer$Send$Handler;

    .line 1217
    :cond_50f
    iget-object v8, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    if-eqz v8, :cond_10a

    .line 1218
    sget-object v8, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeamlessServer.onConnected(): Updating file instances to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v10, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v10}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v8, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v8}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v8

    iget-object v9, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {v8, v9}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I

    goto/16 :goto_10a

    .line 1205
    :goto_53e
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_565

    .line 1206
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1207
    sget-object v8, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_565
    throw v4

    .line 1121
    :cond_566
    :goto_566
    sget-object v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    const-string v8, "SeamlessServer.onConnected(): NULL response was received exiting loop"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56d
    .catch Ljava/lang/Exception; {:try_start_4d0 .. :try_end_56d} :catch_7da
    .catchall {:try_start_4d0 .. :try_end_56d} :catchall_860

    .line 1234
    :try_start_56d
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_584

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_57e
    .catch Ljava/io/IOException; {:try_start_56d .. :try_end_57e} :catch_57f

    goto :goto_584

    :catch_57f
    move-exception v0

    move-object v2, v0

    .line 1237
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_584
    :goto_584
    if-eqz v5, :cond_5ac

    .line 1240
    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    iget-object v4, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1241
    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5ac

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1242
    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_5ac

    .line 1243
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$400(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v2

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v2, v5, v4, v6}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    goto :goto_5b5

    .line 1244
    :cond_5ac
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-eqz v2, :cond_5b5

    .line 1245
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1247
    :cond_5b5
    :goto_5b5
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1248
    :try_start_5bc
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1250
    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_5da

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_5da

    .line 1251
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1253
    :cond_5da
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    .line 1254
    monitor-exit v4

    return-void

    :catchall_5e1
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_5e4
    .catchall {:try_start_5bc .. :try_end_5e4} :catchall_5e1

    throw v2

    .line 1234
    :cond_5e5
    :try_start_5e5
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_5fc

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_5f6
    .catch Ljava/io/IOException; {:try_start_5e5 .. :try_end_5f6} :catch_5f7

    goto :goto_5fc

    :catch_5f7
    move-exception v0

    move-object v2, v0

    .line 1237
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5fc
    :goto_5fc
    if-eqz v5, :cond_624

    .line 1240
    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    iget-object v4, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1241
    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_624

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1242
    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_624

    .line 1243
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$400(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v2

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v2, v5, v4, v6}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    goto :goto_62d

    .line 1244
    :cond_624
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-eqz v2, :cond_62d

    .line 1245
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1247
    :cond_62d
    :goto_62d
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1248
    :try_start_634
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1250
    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_652

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_652

    .line 1251
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1253
    :cond_652
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    .line 1254
    monitor-exit v4

    goto/16 :goto_85b

    :catchall_65a
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_65d
    .catchall {:try_start_634 .. :try_end_65d} :catchall_65a

    throw v2

    :catch_65e
    move-exception v0

    move-object v4, v0

    goto :goto_66d

    :catch_661
    move-exception v0

    move-object v4, v0

    goto/16 :goto_713

    :catchall_665
    move-exception v0

    move-object v4, v0

    move-object v5, v6

    goto/16 :goto_7b8

    :catch_66a
    move-exception v0

    move-object v4, v0

    move-object v5, v6

    :goto_66d
    :try_start_66d
    const-string v8, "error"

    const-string v10, "notAllowed"

    .line 1092
    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1093
    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/exception/DeviceNotFoundException;->printStackTrace()V
    :try_end_677
    .catchall {:try_start_66d .. :try_end_677} :catchall_7b6

    .line 1096
    :try_start_677
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1097
    sget-object v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_698
    .catch Ljava/lang/Exception; {:try_start_677 .. :try_end_698} :catch_7da
    .catchall {:try_start_677 .. :try_end_698} :catchall_860

    .line 1234
    :try_start_698
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6af

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_6a9
    .catch Ljava/io/IOException; {:try_start_698 .. :try_end_6a9} :catch_6aa

    goto :goto_6af

    :catch_6aa
    move-exception v0

    move-object v2, v0

    .line 1237
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6af
    :goto_6af
    if-eqz v5, :cond_6d7

    .line 1240
    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    iget-object v4, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1241
    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d7

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1242
    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_6d7

    .line 1243
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$400(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v2

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v2, v5, v4, v6}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    goto :goto_6e0

    .line 1244
    :cond_6d7
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-eqz v2, :cond_6e0

    .line 1245
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1247
    :cond_6e0
    :goto_6e0
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1248
    :try_start_6e7
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1250
    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_705

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_705

    .line 1251
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1253
    :cond_705
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    .line 1254
    monitor-exit v4

    return-void

    :catchall_70c
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_70f
    .catchall {:try_start_6e7 .. :try_end_70f} :catchall_70c

    throw v2

    :catch_710
    move-exception v0

    move-object v4, v0

    move-object v5, v6

    :goto_713
    :try_start_713
    const-string v8, "error"

    const-string v10, "notFound"

    .line 1088
    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1089
    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/exception/TransferGroupNotFoundException;->printStackTrace()V
    :try_end_71d
    .catchall {:try_start_713 .. :try_end_71d} :catchall_7b6

    .line 1096
    :try_start_71d
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1097
    sget-object v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73e
    .catch Ljava/lang/Exception; {:try_start_71d .. :try_end_73e} :catch_7da
    .catchall {:try_start_71d .. :try_end_73e} :catchall_860

    .line 1234
    :try_start_73e
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_755

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_74f
    .catch Ljava/io/IOException; {:try_start_73e .. :try_end_74f} :catch_750

    goto :goto_755

    :catch_750
    move-exception v0

    move-object v2, v0

    .line 1237
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_755
    :goto_755
    if-eqz v5, :cond_77d

    .line 1240
    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    iget-object v4, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1241
    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77d

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1242
    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_77d

    .line 1243
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$400(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v2

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v2, v5, v4, v6}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    goto :goto_786

    .line 1244
    :cond_77d
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-eqz v2, :cond_786

    .line 1245
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1247
    :cond_786
    :goto_786
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1248
    :try_start_78d
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1250
    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_7ab

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_7ab

    .line 1251
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1253
    :cond_7ab
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    .line 1254
    monitor-exit v4

    return-void

    :catchall_7b2
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_7b5
    .catchall {:try_start_78d .. :try_end_7b5} :catchall_7b2

    throw v2

    :catchall_7b6
    move-exception v0

    move-object v4, v0

    .line 1096
    :goto_7b8
    :try_start_7b8
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 1097
    sget-object v8, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SeamlessServer.onConnected(): reply: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    throw v4
    :try_end_7da
    .catch Ljava/lang/Exception; {:try_start_7b8 .. :try_end_7da} :catch_7da
    .catchall {:try_start_7b8 .. :try_end_7da} :catchall_860

    :catch_7da
    move-exception v0

    move-object v4, v0

    goto :goto_7e5

    :catchall_7dd
    move-exception v0

    move-object v4, v0

    move-object v5, v6

    goto/16 :goto_862

    :catch_7e2
    move-exception v0

    move-object v4, v0

    move-object v5, v6

    .line 1231
    :goto_7e5
    :try_start_7e5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7e8
    .catchall {:try_start_7e5 .. :try_end_7e8} :catchall_860

    .line 1234
    :try_start_7e8
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7ff

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_7f9
    .catch Ljava/io/IOException; {:try_start_7e8 .. :try_end_7f9} :catch_7fa

    goto :goto_7ff

    :catch_7fa
    move-exception v0

    move-object v2, v0

    .line 1237
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_7ff
    :goto_7ff
    if-eqz v5, :cond_827

    .line 1240
    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    iget-object v4, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1241
    invoke-virtual {v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_827

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1242
    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_827

    .line 1243
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$400(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v2

    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v2, v5, v4, v6}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    goto :goto_830

    .line 1244
    :cond_827
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-eqz v2, :cond_830

    .line 1245
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1247
    :cond_830
    :goto_830
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1248
    :try_start_837
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1250
    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_855

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_855

    .line 1251
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1253
    :cond_855
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    .line 1254
    monitor-exit v4

    :goto_85b
    return-void

    :catchall_85c
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_85f
    .catchall {:try_start_837 .. :try_end_85f} :catchall_85c

    throw v2

    :catchall_860
    move-exception v0

    move-object v4, v0

    .line 1234
    :goto_862
    :try_start_862
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    move-result v8

    if-nez v8, :cond_879

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_873
    .catch Ljava/io/IOException; {:try_start_862 .. :try_end_873} :catch_874

    goto :goto_879

    :catch_874
    move-exception v0

    move-object v2, v0

    .line 1237
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_879
    :goto_879
    if-eqz v5, :cond_8a1

    .line 1240
    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    iget-object v8, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1241
    invoke-virtual {v8}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getFlag()Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a1

    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    .line 1242
    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_8a1

    .line 1243
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$400(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v2

    sget-object v8, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v2, v5, v8, v6}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    goto :goto_8aa

    .line 1244
    :cond_8a1
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-eqz v2, :cond_8aa

    .line 1245
    iget-object v2, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 1247
    :cond_8aa
    :goto_8aa
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 1248
    :try_start_8b1
    iget-object v5, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getActiveProcessList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1250
    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-eqz v10, :cond_8cf

    iget-object v5, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    if-eqz v5, :cond_8cf

    .line 1251
    iget-object v5, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v8, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v3, v7}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskStatusChange(JLjava/lang/String;I)V

    .line 1253
    :cond_8cf
    iget-object v3, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$SeamlessServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->notifyTaskRunningListChange()V

    .line 1254
    monitor-exit v2
    :try_end_8d5
    .catchall {:try_start_8b1 .. :try_end_8d5} :catchall_8d6

    .line 1255
    throw v4

    :catchall_8d6
    move-exception v0

    move-object v3, v0

    .line 1254
    :try_start_8d8
    monitor-exit v2
    :try_end_8d9
    .catchall {:try_start_8d8 .. :try_end_8d9} :catchall_8d6

    throw v3

    :catchall_8da
    move-exception v0

    move-object v2, v0

    .line 1052
    :try_start_8dc
    monitor-exit v4
    :try_end_8dd
    .catchall {:try_start_8dc .. :try_end_8dd} :catchall_8da

    goto :goto_8df

    :goto_8de
    throw v2

    :goto_8df
    goto :goto_8de
.end method
