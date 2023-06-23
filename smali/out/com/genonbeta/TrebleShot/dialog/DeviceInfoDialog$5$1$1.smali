.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1$1;
.super Ljava/lang/Object;
.source "DeviceInfoDialog.java"

# interfaces
.implements Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;->onConnectionReady(Ljava/net/ServerSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/genonbeta/CoolSocket/CoolSocket$Client;)V
    .registers 6

    const-string v0, "result"

    .line 162
    :try_start_2
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    const/16 v3, 0x468

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x1388

    invoke-virtual {p1, v1, v2}, Lcom/genonbeta/CoolSocket/CoolSocket$Client;->connect(Ljava/net/SocketAddress;I)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    move-result-object p1

    .line 163
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "request"

    const-string v3, "backCompRequestSendUpdate"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->reply(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    move-result-object p1

    .line 166
    new-instance v1, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_5b

    .line 169
    :cond_43
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Not the answer we were looking for."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt(Z)Z

    :goto_5b
    return-void
.end method
