.class Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;
.super Ljava/lang/Object;
.source "TransferUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$5;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 395
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100ef

    .line 397
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 398
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 400
    new-instance v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1$1;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;)V

    const v2, 0x7f11006a

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
