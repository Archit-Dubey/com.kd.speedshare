.class Lcom/genonbeta/TrebleShot/app/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/app/Activity;->checkForTasks()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/app/Activity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/Activity;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/Activity$2;->this$0:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 307
    check-cast p2, Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object p1

    .line 309
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/app/Activity$2;->this$0:Lcom/genonbeta/TrebleShot/app/Activity;

    .line 310
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/service/WorkerService;->intentHash(Landroid/content/Intent;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/service/WorkerService;->findTaskByHash(I)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    .line 312
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/app/Activity$2;->this$0:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onPreviousRunningTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    if-eqz p1, :cond_2c

    .line 315
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/app/Activity$2;->this$0:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/app/Activity;->access$000(Lcom/genonbeta/TrebleShot/app/Activity;)Ljava/util/List;

    move-result-object p2

    monitor-enter p2

    .line 316
    :try_start_22
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/Activity$2;->this$0:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->attachRunningTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    .line 317
    monitor-exit p2

    goto :goto_2c

    :catchall_29
    move-exception p1

    monitor-exit p2
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw p1

    .line 319
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/Activity$2;->this$0:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
