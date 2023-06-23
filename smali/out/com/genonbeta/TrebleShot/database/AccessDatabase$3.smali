.class Lcom/genonbeta/TrebleShot/database/AccessDatabase$3;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "AccessDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/database/AccessDatabase;->removeAsynchronous(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/Runnable;)V
    .registers 3

    .line 455
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$3;->this$0:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRun()V
    .registers 2

    .line 459
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase$3;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "-"

    .line 460
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase$3;->publishStatusText(Ljava/lang/String;)Z

    .line 462
    :cond_b
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
