.class Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1$1;
.super Ljava/lang/Object;
.source "EstablishConnectionDialog.java"

# interfaces
.implements Lcom/genonbeta/android/framework/util/Interrupter$Closer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;->onConnect(Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;

.field final synthetic val$activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V
    .registers 3

    .line 91
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1$1;->val$activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .registers 2

    .line 96
    :try_start_0
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$1$1;->val$activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    return-void
.end method
