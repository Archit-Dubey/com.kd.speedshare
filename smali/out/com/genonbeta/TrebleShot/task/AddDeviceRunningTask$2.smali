.class Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;
.super Ljava/lang/Object;
.source "AddDeviceRunningTask.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 67
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V
    .registers 16

    const-string v0, "result"

    .line 71
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$000(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->setDevice(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    .line 75
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    new-instance v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$200(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v4}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$000(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v4

    iget-object v5, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v5}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$100(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    .line 80
    invoke-static {v5}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v5

    new-instance v6, Lcom/genonbeta/android/database/SQLQuery$Select;

    const-string v7, "divisionTransfer"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/String;

    invoke-direct {v6, v7, v9}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "groupId=? AND type=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    iget-object v10, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    .line 84
    invoke-static {v10}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$200(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v10

    iget-wide v10, v10, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    sget-object v10, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 85
    invoke-virtual {v10}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 82
    invoke-virtual {v6, v7, v9}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v6

    const-class v7, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 80
    invoke-virtual {v5, v6, v7}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    new-instance v5, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$1;

    invoke-direct {v5, p0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$1;-><init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6c} :catch_278
    .catchall {:try_start_b .. :try_end_6c} :catchall_276

    .line 104
    :try_start_6c
    iget-object v6, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v6

    new-instance v7, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-wide v9, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    iget-object v12, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-direct {v7, v9, v10, v12}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>(JLjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7e} :catch_80
    .catchall {:try_start_6c .. :try_end_7e} :catchall_276

    const/4 v6, 0x1

    goto :goto_81

    :catch_80
    const/4 v6, 0x0

    .line 112
    :goto_81
    :try_start_81
    iget-object v7, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v7}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$000(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v7

    instance-of v7, v7, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    if-eqz v7, :cond_9c

    iget-object v7, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    .line 113
    invoke-static {v7}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$000(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v7

    check-cast v7, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    iget-boolean v7, v7, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;->qrConnection:Z

    if-eqz v7, :cond_9c

    const-string v7, "flagTransferQRConnection"

    .line 114
    invoke-virtual {v1, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9c
    const-string v7, "request"

    const-string v9, "requestTransfer"

    .line 116
    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "groupId"

    .line 117
    iget-object v9, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v9}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$200(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v9

    iget-wide v9, v9, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-virtual {v1, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 119
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_257

    .line 122
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 124
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_bf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 125
    iget-object v10, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    iget-object v11, v9, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->publishStatusText(Ljava/lang/String;)Z

    .line 127
    new-instance v10, Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/object/TransferObject;->getValues()Landroid/content/ContentValues;

    move-result-object v9

    invoke-static {v9}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->convertValues(Landroid/content/ContentValues;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(Lcom/genonbeta/android/database/CursorItem;)V

    .line 129
    iget-object v9, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v9

    if-nez v9, :cond_157

    .line 132
    iget-object v9, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    iput-object v9, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    .line 133
    sget-object v9, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v9, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 134
    iput v8, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->accessPort:I

    const-wide/16 v11, 0x0

    .line 135
    iput-wide v11, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->skippedBytes:J

    .line 136
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_fe} :catch_278
    .catchall {:try_start_81 .. :try_end_fe} :catchall_276

    :try_start_fe
    const-string v11, "file"

    .line 139
    iget-object v12, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "fileSize"

    .line 140
    iget-wide v12, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    invoke-virtual {v9, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v11, "requestId"

    .line 141
    iget-wide v12, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    invoke-virtual {v9, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v11, "fileMime"

    .line 142
    iget-object v12, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileMimeType:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    iget-object v11, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    if-eqz v11, :cond_125

    const-string v11, "directory"

    .line 145
    iget-object v12, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_125
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 148
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_12b} :catch_12c
    .catchall {:try_start_fe .. :try_end_12b} :catchall_276

    goto :goto_bf

    :catch_12c
    move-exception v9

    .line 150
    :try_start_12d
    sget-object v11, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sender error on fileUri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bf

    .line 130
    :cond_157
    new-instance p1, Ljava/lang/InterruptedException;

    const-string v0, "Interrupted by user"

    invoke-direct {p1, v0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15f
    const-string v4, "filesIndex"

    .line 155
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v4

    new-instance v7, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$2;

    invoke-direct {v7, p0, v2}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$2;-><init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V

    invoke-virtual {v4, v7}, Lcom/genonbeta/android/framework/util/Interrupter;->addCloser(Lcom/genonbeta/android/framework/util/Interrupter$Closer;)Z

    .line 166
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v4}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$000(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v4

    iget-object v7, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v7}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$100(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v7

    invoke-virtual {p1, v4, v7}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->communicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p1

    .line 168
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v4

    new-instance v7, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$3;

    invoke-direct {v7, p0, p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$3;-><init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V

    invoke-virtual {v4, v7}, Lcom/genonbeta/android/framework/util/Interrupter;->addCloser(Lcom/genonbeta/android/framework/util/Interrupter$Closer;)Z

    .line 181
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 186
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_226

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_226

    .line 189
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    const v1, 0x7f1100f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->publishStatusText(Ljava/lang/String;)Z

    if-eqz v6, :cond_1d3

    .line 192
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    goto :goto_1dc

    .line 194
    :cond_1d3
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->insert(Lcom/genonbeta/android/database/DatabaseObject;)J

    :goto_1dc
    if-eqz v6, :cond_1e8

    .line 197
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v3, v5}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)Z

    goto :goto_1f1

    .line 199
    :cond_1e8
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v3, v5}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->insert(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)V

    .line 201
    :goto_1f1
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    if-eqz p1, :cond_241

    .line 202
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "extraDeviceId"

    iget-object v4, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extraGroupId"

    iget-wide v4, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    .line 204
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 202
    invoke-virtual {p1, v0, v1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->setResult(ILandroid/content/Intent;)V

    .line 206
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->finish()V

    goto :goto_241

    .line 208
    :cond_226
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    if-eqz v0, :cond_241

    .line 209
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    .line 210
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$000(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 209
    invoke-static {v0, v1, p1, v2}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->showConnectionRejectionInformation(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lorg/json/JSONObject;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_241} :catch_278
    .catchall {:try_start_12d .. :try_end_241} :catchall_276

    .line 233
    :cond_241
    :goto_241
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    if-eqz p1, :cond_2b0

    .line 234
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    new-instance v0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$5;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$5;-><init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;)V

    goto :goto_2ad

    .line 120
    :cond_257
    :try_start_257
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty share holder id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->access$200(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;)Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v1

    iget-wide v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_276} :catch_278
    .catchall {:try_start_257 .. :try_end_276} :catchall_276

    :catchall_276
    move-exception p1

    goto :goto_2b1

    :catch_278
    move-exception p1

    .line 214
    :try_start_279
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-nez v0, :cond_298

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    if-eqz p1, :cond_298

    .line 218
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    new-instance v0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$4;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$4;-><init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;)V

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_298
    .catchall {:try_start_279 .. :try_end_298} :catchall_276

    .line 233
    :cond_298
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    if-eqz p1, :cond_2b0

    .line 234
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    new-instance v0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$5;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$5;-><init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;)V

    :goto_2ad
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2b0
    return-void

    .line 233
    :goto_2b1
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    if-eqz v0, :cond_2c9

    .line 234
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->this$0:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    new-instance v1, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$5;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$5;-><init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    :cond_2c9
    goto :goto_2cb

    :goto_2ca
    throw p1

    :goto_2cb
    goto :goto_2ca
.end method
