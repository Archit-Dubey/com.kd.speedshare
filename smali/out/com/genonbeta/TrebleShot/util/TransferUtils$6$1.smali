.class Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;
.super Ljava/lang/Object;
.source "TransferUtils.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

.field final synthetic val$networkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$6;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 3

    .line 460
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->val$networkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;",
            ">;)V"
        }
    .end annotation

    .line 464
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->connectionAdapter:Ljava/lang/String;

    iget-object v0, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    .line 465
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v0, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    iput-object v0, p2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->connectionAdapter:Ljava/lang/String;

    .line 467
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    .line 468
    invoke-virtual {p2, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 471
    :cond_25
    sget-object p2, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {p2, v0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_62

    .line 472
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    const-class v1, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.genonbeta.intent.action.SEAMLESS_START"

    .line 474
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    const-string v2, "extraGroupId"

    .line 475
    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    const-string v1, "extraDeviceId"

    .line 477
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 472
    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_73

    .line 480
    :cond_62
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;->val$networkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-static {p2, v0, v1, v2, p1}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->requestStartSending(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    :goto_73
    return-void
.end method
