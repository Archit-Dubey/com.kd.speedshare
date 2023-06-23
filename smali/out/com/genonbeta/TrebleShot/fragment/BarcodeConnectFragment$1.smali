.class Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$1;
.super Ljava/lang/Object;
.source "BarcodeConnectFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;
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

    .line 97
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultReturned(ZZ)V
    .registers 3

    .line 101
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 102
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->updateState()V

    goto :goto_17

    .line 104
    :cond_e
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->access$000(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pauseAndWait()V

    :goto_17
    return-void
.end method
