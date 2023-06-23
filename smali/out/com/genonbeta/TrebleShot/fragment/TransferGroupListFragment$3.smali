.class Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$3;
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

    .line 117
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 121
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    const v2, 0x7f1101f9

    .line 122
    invoke-virtual {v1, v2}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraActivitySubtitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->MAKE_ACQUAINTANCE:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    .line 123
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraRequestType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
