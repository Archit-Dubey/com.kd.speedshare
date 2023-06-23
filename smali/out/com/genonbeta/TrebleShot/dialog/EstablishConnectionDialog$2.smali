.class Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "EstablishConnectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;

.field final synthetic val$listener:Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;

.field final synthetic val$networkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;Lcom/genonbeta/android/framework/util/Interrupter;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V
    .registers 6

    .line 55
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$networkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-object p5, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$listener:Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;

    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRun()V
    .registers 10

    .line 59
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->setInterrupter(Lcom/genonbeta/android/framework/util/Interrupter;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    .line 60
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    const v1, 0x7f1100c3

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->publishStatusText(Ljava/lang/String;)Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    new-instance v3, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "deviceConnection"

    invoke-direct {v3, v6, v5}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    iget-object v7, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$networkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v7, v7, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    aput-object v7, v6, v4

    const-string v4, "deviceId=?"

    .line 65
    invoke-virtual {v3, v4, v6}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v3

    const-string v4, "lastCheckedDate DESC"

    .line 66
    invoke-virtual {v3, v4}, Lcom/genonbeta/android/database/SQLQuery$Select;->setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v3

    const-class v4, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    .line 64
    invoke-virtual {v2, v3, v4}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->setMax(I)V

    .line 70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    .line 71
    new-instance v6, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    invoke-direct {v6, v4}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;-><init>(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 73
    :cond_6a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6e
    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    .line 74
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_85

    goto :goto_b6

    .line 77
    :cond_85
    iget-object v6, v4, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    iget-object v6, v6, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->publishStatusText(Ljava/lang/String;)Z

    .line 78
    iget-object v6, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    invoke-virtual {v6}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->getProgress()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->setProgress(I)V

    .line 80
    iget-object v6, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    new-instance v8, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;

    invoke-direct {v8, p0, v4}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;)V

    invoke-static {v6, v7, v8}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge;->connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/Class;Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6e

    .line 119
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_6e

    .line 120
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 123
    :cond_b6
    :goto_b6
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->dismiss()V

    .line 125
    new-instance v3, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$2;

    invoke-direct {v3, p0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;)V

    .line 137
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$activity:Landroid/app/Activity;

    if-eqz v3, :cond_da

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_da

    .line 141
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$activity:Landroid/app/Activity;

    new-instance v4, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;-><init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_da
    return-void
.end method
