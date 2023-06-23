.class Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask$1;
.super Ljava/lang/Object;
.source "OrganizeShareRunningTask.java"

# interfaces
.implements Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(II)V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 110
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->updateProgress(II)V

    :cond_13
    return-void
.end method

.method public onProgressState()Z
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask$1;->this$0:Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
