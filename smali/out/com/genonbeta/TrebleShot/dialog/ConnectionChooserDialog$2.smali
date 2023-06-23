.class Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$2;
.super Ljava/lang/Object;
.source "ConnectionChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;Landroid/app/Activity;)V
    .registers 3

    .line 78
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 82
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$2;->val$activity:Landroid/app/Activity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$2;->val$activity:Landroid/app/Activity;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/ManageDevicesActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
