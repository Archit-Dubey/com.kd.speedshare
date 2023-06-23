.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;
.super Ljava/lang/Object;
.source "DeviceInfoDialog.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/UpdateUtils$OnConnectionReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionReady(Ljava/net/ServerSocket;)V
    .registers 2

    .line 156
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1$1;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$1;)V

    invoke-static {p1}, Lcom/genonbeta/CoolSocket/CoolSocket;->connect(Lcom/genonbeta/CoolSocket/CoolSocket$Client$ConnectionHandler;)V

    return-void
.end method
