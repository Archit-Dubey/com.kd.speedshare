.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;
.super Ljava/lang/Object;
.source "TransferListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

.field final synthetic val$selectedPath:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;Landroid/net/Uri;)V
    .registers 3

    .line 321
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->val$selectedPath:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 325
    new-instance p1, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;)V

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    const v0, 0x7f1100f7

    .line 375
    invoke-virtual {p2, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7$1;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    const p2, 0x7f0700b2

    .line 376
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setIconRes(I)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    .line 377
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    return-void
.end method
