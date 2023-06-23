.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$task:Lcom/genonbeta/TrebleShot/ui/UITask;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    .line 194
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$5;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$task:Lcom/genonbeta/TrebleShot/ui/UITask;

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/ui/UITask;->updateTaskStopped()V

    :cond_17
    return-void
.end method
