.class Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity$1;
.super Ljava/lang/Object;
.source "ManageDevicesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 32
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;

    const-class v2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->RETURN_RESULT:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    .line 33
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraRequestType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;

    const v2, 0x7f1101a0

    .line 34
    invoke-virtual {v1, v2}, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraActivitySubtitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
