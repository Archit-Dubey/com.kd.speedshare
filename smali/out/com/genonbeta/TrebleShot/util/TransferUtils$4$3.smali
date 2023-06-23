.class Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;
.super Ljava/lang/Object;
.source "TransferUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$4;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 333
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$context:Landroid/content/Context;

    const v2, 0x7f1100c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 336
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 338
    new-instance v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3$1;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;)V

    const v2, 0x7f110069

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
