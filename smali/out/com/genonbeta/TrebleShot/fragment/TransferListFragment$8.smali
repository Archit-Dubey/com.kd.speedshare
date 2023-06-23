.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$8;
.super Ljava/lang/Object;
.source "TransferListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->updateSavePath(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$8;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 438
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$8;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f1100f9

    invoke-virtual {v0, v2, v1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
