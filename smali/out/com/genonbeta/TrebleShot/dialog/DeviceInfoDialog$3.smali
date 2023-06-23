.class Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$3;
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


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/database/AccessDatabase;)V
    .registers 4

    .line 112
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$3;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$3;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 116
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$3;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-boolean p2, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    .line 117
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$3;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog$3;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    return-void
.end method
