.class public Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "ShareAppDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11013e

    .line 35
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f110027

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 38
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;Landroid/content/Context;)V

    const v1, 0x7f110023

    invoke-virtual {p0, v1, v0}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;Landroid/content/Context;)V

    const p1, 0x7f110024

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;->shareAsApk(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;->shareAsLink(Landroid/content/Context;)V

    return-void
.end method

.method private shareAsApk(Landroid/content/Context;)V
    .registers 4

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;-><init>(Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private shareAsLink(Landroid/content/Context;)V
    .registers 4

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$4;-><init>(Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
