.class Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog$1;
.super Ljava/lang/Object;
.source "RemoveDeviceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 4

    .line 23
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 27
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->removeAsynchronous(Landroid/app/Activity;Lcom/genonbeta/android/database/DatabaseObject;)V

    return-void
.end method
