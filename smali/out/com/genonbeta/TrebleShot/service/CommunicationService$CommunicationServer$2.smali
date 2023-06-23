.class Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->onConnected(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

.field final synthetic val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

.field final synthetic val$finalDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field final synthetic val$groupId:J

.field final synthetic val$isSeamlessAvailable:Z

.field final synthetic val$jsonIndex:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;JLcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Ljava/lang/String;Z)V
    .registers 8

    .line 818
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iput-wide p2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$groupId:J

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$finalDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-object p5, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    iput-object p6, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$jsonIndex:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$isSeamlessAvailable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 32

    move-object/from16 v1, p0

    .line 823
    new-instance v2, Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-direct {v2}, Lcom/genonbeta/android/framework/util/Interrupter;-><init>()V

    .line 824
    new-instance v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v4, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$groupId:J

    invoke-direct {v3, v4, v5}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 825
    new-instance v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$finalDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v5, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {v4, v3, v0, v5}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    .line 826
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v0

    iget-object v5, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$finalDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {v0, v3, v5}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyPrepareFiles(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 828
    invoke-virtual {v5, v6, v6, v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 831
    :try_start_2a
    new-instance v7, Lorg/json/JSONArray;

    iget-object v8, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$jsonIndex:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_209

    .line 838
    invoke-virtual {v5, v6, v6, v6}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 842
    :try_start_34
    iget-object v8, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v8, v8, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v8}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3f} :catch_41

    const/4 v8, 0x1

    goto :goto_46

    :catch_41
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v8, 0x0

    :goto_46
    const/4 v0, 0x0

    .line 850
    iget-object v9, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v9, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 851
    iget-object v9, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v9, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 853
    iget-object v9, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v9, v9, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getOngoingIndexList()Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    .line 854
    :try_start_66
    iget-object v10, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v10, v10, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v10}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getOngoingIndexList()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    monitor-exit v9
    :try_end_78
    .catchall {:try_start_66 .. :try_end_78} :catchall_206

    .line 857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 858
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    move-wide v12, v9

    const/4 v9, 0x0

    .line 860
    :goto_84
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_15a

    .line 861
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_92

    goto/16 :goto_15a

    .line 865
    :cond_92
    :try_start_92
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-nez v0, :cond_a0

    move-object/from16 v28, v4

    move-object/from16 v26, v7

    goto/16 :goto_152

    .line 868
    :cond_a0
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_13f

    const-string v10, "file"

    .line 870
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13f

    const-string v10, "fileSize"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13f

    const-string v10, "fileMime"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13f

    const-string v10, "requestId"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13f

    .line 871
    new-instance v10, Lcom/genonbeta/TrebleShot/object/TransferObject;

    const-string v14, "requestId"

    .line 872
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_ce
    .catch Lorg/json/JSONException; {:try_start_92 .. :try_end_ce} :catch_148

    move-object/from16 v27, v6

    move-object/from16 v26, v7

    :try_start_d2
    iget-wide v6, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$groupId:J

    iget-object v14, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;
    :try_end_d6
    .catch Lorg/json/JSONException; {:try_start_d2 .. :try_end_d6} :catch_139

    move-object/from16 v28, v4

    :try_start_d8
    const-string v4, "file"

    .line 875
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v14

    const-string v14, "."

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_d8 .. :try_end_ea} :catch_137

    const-wide/16 v18, 0x1

    add-long v29, v12, v18

    :try_start_ee
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "tshare"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v4, "fileMime"

    .line 877
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v4, "fileSize"

    .line 878
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    sget-object v25, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    move-object/from16 v4, v17

    move-object v14, v10

    move-wide/from16 v17, v6

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v25}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/genonbeta/TrebleShot/object/TransferObject$Type;)V
    :try_end_117
    .catch Lorg/json/JSONException; {:try_start_ee .. :try_end_117} :catch_131

    :try_start_117
    const-string v4, "directory"

    .line 881
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_127

    const-string v4, "directory"

    .line 882
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    .line 884
    :cond_127
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12a
    .catch Lorg/json/JSONException; {:try_start_117 .. :try_end_12a} :catch_12e

    move-object v6, v10

    move-wide/from16 v12, v29

    goto :goto_152

    :catch_12e
    move-exception v0

    move-object v6, v10

    goto :goto_134

    :catch_131
    move-exception v0

    move-object/from16 v6, v27

    :goto_134
    move-wide/from16 v12, v29

    goto :goto_14f

    :catch_137
    move-exception v0

    goto :goto_13c

    :catch_139
    move-exception v0

    move-object/from16 v28, v4

    :goto_13c
    move-object/from16 v6, v27

    goto :goto_14f

    :cond_13f
    move-object/from16 v28, v4

    move-object/from16 v27, v6

    move-object/from16 v26, v7

    move-object/from16 v6, v27

    goto :goto_152

    :catch_148
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v27, v6

    move-object/from16 v26, v7

    .line 887
    :goto_14f
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_152
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v26

    move-object/from16 v4, v28

    goto/16 :goto_84

    :cond_15a
    :goto_15a
    move-object/from16 v27, v6

    .line 891
    new-instance v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;

    invoke-direct {v0, v1, v5, v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;-><init>(Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;Lcom/genonbeta/TrebleShot/util/DynamicNotification;Lcom/genonbeta/android/framework/util/Interrupter;)V

    .line 911
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_180

    if-eqz v8, :cond_175

    .line 913
    iget-object v4, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v4

    invoke-virtual {v4, v11, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)Z

    goto :goto_180

    .line 915
    :cond_175
    iget-object v4, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v4

    invoke-virtual {v4, v11, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->insert(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)V

    .line 918
    :cond_180
    :goto_180
    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 920
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getOngoingIndexList()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 921
    :try_start_18c
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getOngoingIndexList()Ljava/util/Map;

    move-result-object v0

    iget-wide v5, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    monitor-exit v4
    :try_end_19e
    .catchall {:try_start_18c .. :try_end_19e} :catchall_203

    .line 924
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 925
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V

    goto :goto_202

    :cond_1b0
    if-eqz v27, :cond_202

    .line 926
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_202

    .line 927
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.genonbeta.TrebleShot.transaction.action.INCOMING_TRANSFER_READY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "extraGroupId"

    iget-wide v5, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$groupId:J

    .line 928
    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "extraDeviceId"

    iget-object v5, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$finalDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v5, v5, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    .line 929
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 927
    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 931
    iget-boolean v0, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$isSeamlessAvailable:Z

    if-eqz v0, :cond_1ef

    .line 933
    :try_start_1dc
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    iget-wide v2, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object v4, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$finalDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->startFileReceiving(JLjava/lang/String;)V
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1e9} :catch_1ea

    goto :goto_202

    :catch_1ea
    move-exception v0

    .line 935
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_202

    .line 938
    :cond_1ef
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getNotificationHelper()Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;

    move-result-object v0

    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->val$finalDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v6, v27

    invoke-virtual {v0, v6, v2, v3}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyTransferRequest(Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/NetworkDevice;I)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    :cond_202
    :goto_202
    return-void

    :catchall_203
    move-exception v0

    .line 922
    :try_start_204
    monitor-exit v4
    :try_end_205
    .catchall {:try_start_204 .. :try_end_205} :catchall_203

    throw v0

    :catchall_206
    move-exception v0

    .line 855
    :try_start_207
    monitor-exit v9
    :try_end_208
    .catchall {:try_start_207 .. :try_end_208} :catchall_206

    throw v0

    :catch_209
    move-exception v0

    .line 833
    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 834
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
