.class Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$2;
.super Ljava/lang/Object;
.source "TransferAssigneeListFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 96
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startWebShareActivity(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1
.end method
