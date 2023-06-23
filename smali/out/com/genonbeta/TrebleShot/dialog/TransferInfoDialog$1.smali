.class Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;
.super Ljava/lang/Object;
.source "TransferInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;Lcom/genonbeta/TrebleShot/object/TransferObject;Landroid/content/Context;)V
    .registers 4

    .line 89
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 93
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f11013b

    .line 95
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 96
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f110204

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f110033

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 99
    new-instance p2, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1$1;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;)V

    const v0, 0x7f11005c

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
