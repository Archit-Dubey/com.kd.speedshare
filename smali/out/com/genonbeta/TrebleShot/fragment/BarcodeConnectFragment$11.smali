.class Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$11;
.super Ljava/lang/Object;
.source "BarcodeConnectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->updateState()V
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

    .line 452
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$11;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 456
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$11;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->access$300(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$11;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$11;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->access$200(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->validateLocationPermission(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z

    return-void
.end method
