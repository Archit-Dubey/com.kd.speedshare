.class Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask$1;
.super Ljava/lang/Object;
.source "WorkerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Landroid/content/Context;)V
    .registers 3

    .line 375
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 379
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask$1;->val$context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/genonbeta/TrebleShot/service/WorkerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 381
    check-cast p2, Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object p1

    .line 382
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/service/WorkerService;->run(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    .line 384
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
