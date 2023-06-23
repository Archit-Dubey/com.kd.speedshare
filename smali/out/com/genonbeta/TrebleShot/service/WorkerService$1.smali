.class Lcom/genonbeta/TrebleShot/service/WorkerService$1;
.super Ljava/lang/Object;
.source "WorkerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/service/WorkerService;->run(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/WorkerService;

.field final synthetic val$runningTask:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/service/WorkerService;Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 3

    .line 188
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$1;->this$0:Lcom/genonbeta/TrebleShot/service/WorkerService;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$1;->val$runningTask:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$1;->val$runningTask:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$1;->this$0:Lcom/genonbeta/TrebleShot/service/WorkerService;

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$200(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Lcom/genonbeta/TrebleShot/service/WorkerService;)V

    .line 194
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$1;->this$0:Lcom/genonbeta/TrebleShot/service/WorkerService;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$1;->val$runningTask:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService;->registerWork(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    .line 195
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$1;->val$runningTask:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run()V

    .line 196
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$1;->this$0:Lcom/genonbeta/TrebleShot/service/WorkerService;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$1;->val$runningTask:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService;->unregisterWork(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    .line 198
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$1;->val$runningTask:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$200(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Lcom/genonbeta/TrebleShot/service/WorkerService;)V

    return-void
.end method
