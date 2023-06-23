.class Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$2;
.super Ljava/lang/Object;
.source "TransferGroupListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 112
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
