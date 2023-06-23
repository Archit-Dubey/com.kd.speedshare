.class Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;
.super Ljava/lang/Object;
.source "EstablishConnectionDialog.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

.field final synthetic val$connectionResult:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->val$connectionResult:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V
    .registers 7

    .line 85
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->val$connectionResult:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    const/4 v1, -0x1

    iput v1, v0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    .line 88
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->val$connectionResult:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-virtual {p1, v2}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->connect(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object v2

    .line 90
    new-instance v3, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1$1;

    invoke-direct {v3, p0, v2}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V

    .line 103
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/genonbeta/android/framework/util/Interrupter;->addCloser(Lcom/genonbeta/android/framework/util/Interrupter$Closer;)Z

    const/4 v4, 0x1

    .line 105
    invoke-virtual {p1, v2, v4}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->handshake(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Z)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    .line 106
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$networkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p1, v2, v4}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->updateDeviceIfOkay(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    .line 108
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/genonbeta/android/framework/util/Interrupter;->removeCloser(Lcom/genonbeta/android/framework/util/Interrupter$Closer;)Z

    .line 110
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->val$connectionResult:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v0, v3

    iput v0, v2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_40
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3e

    goto :goto_44

    :catchall_3e
    move-exception v0

    goto :goto_50

    :catch_40
    move-exception v0

    .line 112
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    .line 114
    :goto_44
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->val$connectionResult:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    iget v0, v0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->setReturn(Ljava/lang/Object;)V

    return-void

    :goto_50
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->val$connectionResult:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    iget v1, v1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;->setReturn(Ljava/lang/Object;)V

    .line 115
    throw v0
.end method
