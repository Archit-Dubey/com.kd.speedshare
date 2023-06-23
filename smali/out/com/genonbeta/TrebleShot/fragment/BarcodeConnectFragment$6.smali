.class Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$6;
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

.field final synthetic val$accessPin:I

.field final synthetic val$ipAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;Ljava/lang/String;I)V
    .registers 4

    .line 307
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$6;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$6;->val$ipAddress:Ljava/lang/String;

    iput p3, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$6;->val$accessPin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 311
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$6;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$6;->val$ipAddress:Ljava/lang/String;

    iget v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$6;->val$accessPin:I

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->makeAcquaintance(Ljava/lang/Object;I)V

    return-void
.end method
