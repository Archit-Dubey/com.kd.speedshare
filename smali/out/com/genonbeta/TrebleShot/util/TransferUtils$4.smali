.class final Lcom/genonbeta/TrebleShot/util/TransferUtils$4;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "TransferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils;->requestStartSending(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

.field final synthetic val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

.field final synthetic val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field final synthetic val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Lcom/genonbeta/TrebleShot/object/TransferGroup;Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V
    .registers 7

    .line 244
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iput-object p5, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRun()V
    .registers 7

    .line 248
    new-instance v0, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    .line 249
    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;-><init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;)V

    .line 252
    :try_start_b
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->communicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object v0

    .line 255
    new-instance v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$1;

    invoke-direct {v1, p0, v0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$1;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$4;Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V

    .line 268
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/genonbeta/android/framework/util/Interrupter;->addCloser(Lcom/genonbeta/android/framework/util/Interrupter$Closer;)Z

    .line 270
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "request"

    const-string v4, "requestStartTransfer"

    .line 272
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "groupId"

    .line 273
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v4, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 275
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object v2

    .line 278
    invoke-virtual {v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 279
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/util/Interrupter;->removeCloser(Lcom/genonbeta/android/framework/util/Interrupter$Closer;)Z

    .line 281
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, v2, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 283
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_82

    .line 284
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    new-instance v2, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2;

    invoke-direct {v2, p0, v0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$4;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/genonbeta/TrebleShot/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6e} :catch_6f

    goto :goto_82

    :catch_6f
    nop

    .line 327
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_82

    .line 328
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    new-instance v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$4;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_82
    :goto_82
    return-void
.end method
