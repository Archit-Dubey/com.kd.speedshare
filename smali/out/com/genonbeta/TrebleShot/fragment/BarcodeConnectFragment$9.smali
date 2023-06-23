.class Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$9;
.super Ljava/lang/Object;
.source "BarcodeConnectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->updateState(ZLcom/genonbeta/android/framework/util/Interrupter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

.field final synthetic val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;Lcom/genonbeta/android/framework/util/Interrupter;)V
    .registers 3

    .line 404
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$9;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$9;->val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 408
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$9;->val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt()Z

    return-void
.end method
