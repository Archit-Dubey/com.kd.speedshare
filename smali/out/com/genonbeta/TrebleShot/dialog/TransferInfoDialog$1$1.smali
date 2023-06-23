.class Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1$1;
.super Ljava/lang/Object;
.source "TransferInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 104
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1$1;->this$1:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$1;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V

    return-void
.end method
