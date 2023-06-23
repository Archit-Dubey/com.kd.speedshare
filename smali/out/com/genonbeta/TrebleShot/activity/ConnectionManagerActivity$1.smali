.class Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;
.super Ljava/lang/Object;
.source "ConnectionManagerActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isListenerEffective()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onNetworkDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Z
    .registers 9

    .line 74
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    move-result-object v0

    sget-object v1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->RETURN_RESULT:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 75
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    const-string v3, "extraDeviceId"

    .line 76
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    const-string v2, "extraConnectionAdapter"

    .line 77
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 75
    invoke-virtual {v0, v1, p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->finish()V

    goto :goto_4e

    .line 81
    :cond_2f
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getInstance(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-direct {v0, p1, v1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;-><init>(Lcom/genonbeta/TrebleShot/util/ConnectionUtils;Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;)V

    .line 84
    new-instance v2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$1;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$1;-><init>(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;)V

    .line 99
    new-instance v5, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$2;

    invoke-direct {v5, p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$2;-><init>(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;)V

    .line 108
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    iget-object v3, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->makeAcquaintance(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UITask;Ljava/lang/Object;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V

    :goto_4e
    const/4 p1, 0x1

    return p1
.end method
