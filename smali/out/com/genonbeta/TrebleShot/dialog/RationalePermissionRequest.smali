.class public Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "RationalePermissionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;
    }
.end annotation


# instance fields
.field public mPermissionQueue:Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;Z)V
    .registers 5

    .line 32
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->mPermissionQueue:Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 37
    iget-object v0, p2, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 38
    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;->message:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 40
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->mPermissionQueue:Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;->permission:Ljava/lang/String;

    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_28

    const p2, 0x7f110078

    .line 41
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;Lcom/genonbeta/TrebleShot/app/Activity;)V

    invoke-virtual {p0, p2, v0}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_28
    const p2, 0x7f110025

    .line 54
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;Lcom/genonbeta/TrebleShot/app/Activity;)V

    invoke-virtual {p0, p2, v0}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz p3, :cond_41

    const p2, 0x7f110062

    .line 64
    new-instance p3, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$3;

    invoke-direct {p3, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$3;-><init>(Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;Lcom/genonbeta/TrebleShot/app/Activity;)V

    invoke-virtual {p0, p2, p3}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_48

    :cond_41
    const p1, 0x7f110033

    const/4 p2, 0x0

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_48
    return-void
.end method

.method public static requestIfNecessary(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;Z)Landroidx/appcompat/app/AlertDialog;
    .registers 4

    .line 80
    iget-object v0, p1, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_13

    :cond_a
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;Z)V

    .line 82
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    :goto_13
    return-object p0
.end method
