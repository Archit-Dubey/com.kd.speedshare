.class Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "TextEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->doCommunicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

.field final synthetic val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

.field final synthetic val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 4

    .line 278
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    .line 282
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$1;-><init>(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;)V

    .line 291
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;

    invoke-direct {v2, p0, v0}, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3$2;-><init>(Lcom/genonbeta/TrebleShot/activity/TextEditorActivity$3;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge;->connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;ZLcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    return-void
.end method
