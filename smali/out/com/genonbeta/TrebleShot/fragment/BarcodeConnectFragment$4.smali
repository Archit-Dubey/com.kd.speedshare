.class Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$4;
.super Ljava/lang/Object;
.source "BarcodeConnectFragment.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/BarcodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public barcodeResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getResult()Lcom/google/zxing/Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->handleBarcode(Ljava/lang/String;)V

    return-void
.end method

.method public possibleResultPoints(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
