.class final Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->showConnectionRejectionInformation(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lorg/json/JSONObject;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field final synthetic val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 64
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 68
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 69
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100f1

    .line 70
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;->val$activity:Landroid/app/Activity;

    const v2, 0x7f1101e3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v5, v5, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;->val$activity:Landroid/app/Activity;

    .line 71
    invoke-static {v5}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110069

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$1;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_4a
    return-void
.end method
