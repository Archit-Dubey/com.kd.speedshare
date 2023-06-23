.class Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver$1;
.super Ljava/lang/Thread;
.source "NetworkStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver;->evaluateTheCondition(Landroid/net/NetworkInfo;Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver;Landroid/content/Context;)V
    .registers 3

    .line 43
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver$1;->this$0:Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 47
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-wide/16 v0, 0x6a4

    .line 50
    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 51
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/receiver/NetworkStatusReceiver$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "genonbeta.intent.action.SCAN_DEVICES"

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_21
    return-void
.end method
