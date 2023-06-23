.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$1;
.super Ljava/lang/Object;
.source "DeviceInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 195
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->this$0:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2$1;->this$2:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5$2;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$5;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-virtual {p1, p2, v0, v1}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->runReceiveTask(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    return-void
.end method
