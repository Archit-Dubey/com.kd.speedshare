.class Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionManagerActivity.java"


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

    .line 123
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.intent.action.CONNECTION_MANAGER_CHANGE_FRAGMENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p1, "extraFragmentEnum"

    .line 128
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 129
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    :try_start_18
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    move-result-object p1

    .line 134
    sget-object p2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->EnterIpAddress:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 135
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->showEnterIpAddressDialog()V

    goto/16 :goto_c3

    .line 137
    :cond_2b
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->setFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_30} :catch_c3

    goto/16 :goto_c3

    .line 141
    :cond_32
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    move-result-object p1

    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->RETURN_RESULT:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.TrebleShot.transaction.action.DEVICE_ACQUAINTANCE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c3

    const-string p1, "extraDeviceId"

    .line 143
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    const-string v0, "extraConnectionAdapterName"

    .line 144
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 145
    new-instance v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    iget-object v2, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :try_start_70
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 150
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 152
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->access$200(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;->onNetworkDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_8b} :catch_8c

    goto :goto_c3

    :catch_8c
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c3

    .line 157
    :cond_91
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    move-result-object p1

    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->MAKE_ACQUAINTANCE:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.TrebleShot.transaction.action.INCOMING_TRANSFER_READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c3

    const-string p1, "extraGroupId"

    .line 159
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 160
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    const-wide/16 v1, -0x1

    .line 161
    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 160
    invoke-static {v0, p1, p2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->startInstance(Landroid/content/Context;J)V

    .line 162
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->finish()V

    :catch_c3
    :cond_c3
    :goto_c3
    return-void
.end method
