.class Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->onConnected(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

.field final synthetic val$activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V
    .registers 3

    .line 724
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$1;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$1;->val$activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$1;->this$1:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$1;->val$activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getClientAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/UpdateUtils;->sendUpdate(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    .line 731
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_16
    return-void
.end method
