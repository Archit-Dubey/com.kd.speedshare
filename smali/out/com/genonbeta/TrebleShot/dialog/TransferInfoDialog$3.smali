.class Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;
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

.field final synthetic val$pseudoFile:Lcom/genonbeta/android/framework/io/DocumentFile;

.field final synthetic val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/object/TransferObject;Landroid/content/Context;)V
    .registers 5

    .line 128
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->val$pseudoFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 132
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f11013d

    .line 134
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f11020d

    .line 135
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f110027

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 137
    new-instance p2, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$3;)V

    const v0, 0x7f11005c

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
