.class Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$2;
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

    .line 116
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$2;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 120
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$2;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    sget-object p2, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object p2, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 121
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog$2;->val$transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    return-void
.end method
