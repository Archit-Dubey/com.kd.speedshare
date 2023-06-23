.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "UIConnectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->makeAcquaintance(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UITask;Ljava/lang/Object;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConnected:Z

.field private mRemoteAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

.field final synthetic val$accessPin:I

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$object:Ljava/lang/Object;

.field final synthetic val$registerListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

.field final synthetic val$task:Lcom/genonbeta/TrebleShot/ui/UITask;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UITask;Ljava/lang/Object;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V
    .registers 7

    .line 115
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$task:Lcom/genonbeta/TrebleShot/ui/UITask;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$object:Ljava/lang/Object;

    iput p5, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$accessPin:I

    iput-object p6, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$registerListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->mConnected:Z

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 8

    .line 122
    new-instance v6, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$1;

    invoke-direct {v6, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$1;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;)V

    .line 132
    :try_start_5
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$object:Ljava/lang/Object;

    instance-of v0, v0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    if-eqz v0, :cond_25

    .line 133
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$object:Ljava/lang/Object;

    check-cast v2, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;

    new-instance v3, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$2;

    invoke-direct {v3, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$2;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->establishHotspotConnection(Lcom/genonbeta/android/framework/util/Interrupter;Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$HotspotNetwork;Lcom/genonbeta/TrebleShot/util/ConnectionUtils$ConnectionCallback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->mRemoteAddress:Ljava/lang/String;

    goto :goto_31

    .line 143
    :cond_25
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$object:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 144
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$object:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->mRemoteAddress:Ljava/lang/String;

    .line 146
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->mRemoteAddress:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 147
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->mRemoteAddress:Ljava/lang/String;

    iget v3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$accessPin:I

    new-instance v4, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;

    invoke-direct {v4, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;)V

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->setupConnection(Landroid/app/Activity;Ljava/lang/String;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->mConnected:Z

    .line 166
    :cond_4e
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->mConnected:Z

    if-nez v0, :cond_6d

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interruptedByUser()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$4;

    invoke-direct {v1, p0, v6}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$4;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6d} :catch_8f
    .catchall {:try_start_5 .. :try_end_6d} :catchall_7c

    .line 188
    :cond_6d
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;)V

    goto :goto_9d

    :catchall_7c
    move-exception v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    throw v0

    .line 188
    :catch_8f
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;)V

    :goto_9d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
