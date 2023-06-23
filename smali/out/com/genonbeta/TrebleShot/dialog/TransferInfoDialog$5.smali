.class Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$5;
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

.field final synthetic val$startIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;Landroid/content/Intent;)V
    .registers 3

    .line 182
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$5;->this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$5;->val$startIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 187
    :try_start_0
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$5;->this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$5;->val$startIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void
.end method
