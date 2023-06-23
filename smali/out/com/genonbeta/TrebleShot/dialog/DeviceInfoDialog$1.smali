.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;
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

    .line 74
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 78
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$1;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V

    .line 85
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->show()V

    return-void
.end method
