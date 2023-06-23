.class Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;
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

    .line 416
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 420
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 422
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;->savePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getReadableUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1100f3

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 423
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 425
    new-instance v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2$1;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;)V

    const v2, 0x7f11006d

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
