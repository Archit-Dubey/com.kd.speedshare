.class public Lcom/journeyapps/barcodescanner/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"


# instance fields
.field private barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private capture:Lcom/journeyapps/barcodescanner/CaptureManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeContent()Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .registers 2

    .line 36
    sget v0, Lcom/journeyapps/barcodescanner/R$layout;->zxing_capture:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->setContentView(I)V

    .line 37
    sget v0, Lcom/journeyapps/barcodescanner/R$id;->zxing_barcode_scanner:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->initializeContent()Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 24
    new-instance v0, Lcom/journeyapps/barcodescanner/CaptureManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-direct {v0, p0, v1}, Lcom/journeyapps/barcodescanner/CaptureManager;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    .line 25
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->initializeFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 26
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->decode()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 58
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method protected onPause()V
    .registers 2

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 51
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/CaptureManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 44
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
