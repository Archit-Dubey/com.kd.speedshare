.class public Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "RemoveDeviceDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 5

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11013a

    .line 19
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f110203

    .line 20
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f110027

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 22
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    const p1, 0x7f11005c

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/dialog/RemoveDeviceDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method
