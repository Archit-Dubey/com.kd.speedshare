.class public Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;
.super Lcom/genonbeta/TrebleShot/app/ProgressDialog;
.source "EstablishConnectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;
    }
.end annotation


# instance fields
.field private mTask:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V
    .registers 11

    .line 38
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v2, Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-direct {v2}, Lcom/genonbeta/android/framework/util/Interrupter;-><init>()V

    const v0, 0x7f11015c

    .line 42
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->setTitle(I)V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->setCancelable(Z)V

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->setProgressStyle(I)V

    .line 45
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110027

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$1;

    invoke-direct {v1, p0, v2}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;Lcom/genonbeta/android/framework/util/Interrupter;)V

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v0, v1}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    new-instance v6, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;Lcom/genonbeta/android/framework/util/Interrupter;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V

    iput-object v6, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->mTask:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    return-void
.end method


# virtual methods
.method public show()V
    .registers 4

    .line 187
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/ProgressDialog;->show()V

    .line 188
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->mTask:Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11016f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    return-void
.end method
