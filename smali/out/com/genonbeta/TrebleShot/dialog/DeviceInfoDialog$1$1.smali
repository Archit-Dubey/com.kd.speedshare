.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1$1;
.super Ljava/lang/Object;
.source "DeviceInfoDialog.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p2, v0, v1, p1}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->runReceiveTask(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    return-void
.end method
