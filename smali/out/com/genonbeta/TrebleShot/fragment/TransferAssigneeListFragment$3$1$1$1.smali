.class Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1$1;
.super Ljava/lang/Object;
.source "TransferAssigneeListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1$1;->this$3:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionUpdated(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V
    .registers 5

    .line 147
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1$1;->this$3:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1$1;->this$3:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getAdapterName(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f1100c9

    invoke-virtual {p2, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
