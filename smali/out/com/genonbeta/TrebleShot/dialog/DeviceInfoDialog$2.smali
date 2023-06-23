.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;
.super Ljava/lang/Object;
.source "DeviceInfoDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field final synthetic val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field final synthetic val$trustSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Landroidx/appcompat/widget/SwitchCompat;)V
    .registers 5

    .line 99
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;->val$trustSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 103
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    .line 104
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 105
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$2;->val$trustSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    return-void
.end method
