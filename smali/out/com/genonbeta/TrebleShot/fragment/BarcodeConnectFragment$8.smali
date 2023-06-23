.class Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$8;
.super Ljava/lang/Object;
.source "BarcodeConnectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->handleBarcode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;Ljava/lang/String;)V
    .registers 3

    .line 330
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$8;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$8;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 334
    new-instance p1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    .line 335
    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result p2

    int-to-long v0, p2

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$8;->val$code:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/genonbeta/TrebleShot/object/TextStreamObject;-><init>(JLjava/lang/String;)V

    .line 336
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$8;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 338
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$8;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f110111

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 340
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$8;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$8;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "genonbeta.intent.action.EDIT_TEXT"

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-wide v1, p1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->id:J

    const-string p1, "clipboardId"

    .line 342
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 340
    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
