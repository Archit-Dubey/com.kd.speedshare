.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$6;
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

    .line 312
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$6;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$6;->val$selectedPath:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 316
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$6;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$6;->val$selectedPath:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->updateSavePath(Ljava/lang/String;)V

    return-void
.end method
