.class Lcom/genonbeta/TrebleShot/service/CommunicationService$3;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$3;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$3;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->access$000(Lcom/genonbeta/TrebleShot/service/CommunicationService;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$3;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    .line 392
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getHotspotUtils()Lcom/genonbeta/TrebleShot/util/HotspotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/HotspotUtils;->isStarted()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$3;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    .line 393
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->hasOngoingTasks()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$3;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    .line 394
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "kill_service_on_exit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 395
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$3;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->stopSelf()V

    const-string v0, "CommunicationService"

    const-string v1, "onStartCommand(): Destroy state has been applied"

    .line 396
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method
