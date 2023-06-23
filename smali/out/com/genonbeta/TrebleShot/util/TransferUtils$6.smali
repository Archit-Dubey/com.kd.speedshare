.class final Lcom/genonbeta/TrebleShot/util/TransferUtils$6;
.super Ljava/lang/Object;
.source "TransferUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils;->startTransfer(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

.field final synthetic val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

.field final synthetic val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

.field final synthetic val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V
    .registers 5

    .line 449
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 454
    :try_start_0
    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    .line 457
    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 459
    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    new-instance v3, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;

    invoke-direct {v3, p0, v0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$1;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$6;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V

    .line 483
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->show()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_47

    .line 485
    :catch_22
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110107

    .line 486
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110027

    const/4 v2, 0x0

    .line 487
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110069

    new-instance v2, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$2;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$6$2;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$6;)V

    .line 488
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_47
    return-void
.end method
