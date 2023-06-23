.class Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$2;
.super Ljava/lang/Object;
.source "AddDeviceRunningTask.java"

# interfaces
.implements Lcom/genonbeta/android/framework/util/Interrupter$Closer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

.field final synthetic val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V
    .registers 3

    .line 158
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$2;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$2;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .registers 3

    .line 162
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$2;->this$1:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask$2$2;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V

    return-void
.end method
