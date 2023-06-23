.class public Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "BarcodeScannerActivity.java"


# static fields
.field public static final EXTRA_CONNECTION_ADAPTER:Ljava/lang/String; = "extraConnectionAdapter"

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "extraDeviceId"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 24
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 25
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;->setContentView(I)V

    const p1, 0x7f090201

    .line 27
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 28
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;->setResult(I)V

    .line 32
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 33
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    :cond_27
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f09009e

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    if-eqz p1, :cond_3e

    .line 38
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;)V

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->setDeviceSelectedListener(Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;)V

    :cond_3e
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v1, v0, :cond_e

    .line 63
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 65
    :cond_e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
