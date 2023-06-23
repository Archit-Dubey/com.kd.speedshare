.class Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$7;
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

    .line 346
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$7;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 350
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 351
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 353
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$7;->val$code:Ljava/lang/String;

    const-string v0, "copiedText"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 354
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f11010e

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_32
    return-void
.end method
