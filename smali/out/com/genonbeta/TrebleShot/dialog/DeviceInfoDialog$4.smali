.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$4;
.super Ljava/lang/Object;
.source "DeviceInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 4

    .line 126
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$4;->this$0:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$4;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 130
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$4;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$4;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {p1, p2, v0}, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    .line 131
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
