.class Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;
.super Ljava/lang/Object;
.source "TransferAssigneeListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;

.field final synthetic val$assignee:Lcom/genonbeta/TrebleShot/object/ShowingAssignee;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;Lcom/genonbeta/TrebleShot/object/ShowingAssignee;)V
    .registers 3

    .line 135
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->val$assignee:Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090193

    if-ne p1, v0, :cond_38

    .line 142
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getTransferGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->val$assignee:Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    new-instance v3, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1$1;

    invoke-direct {v3, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->changeConnection(Landroidx/fragment/app/FragmentActivity;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;)V

    goto :goto_5a

    :cond_38
    const v0, 0x7f090195

    if-ne p1, v0, :cond_5c

    .line 152
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;->val$assignee:Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    invoke-virtual {p1, v0, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->removeAsynchronous(Landroid/app/Activity;Lcom/genonbeta/android/database/DatabaseObject;)V

    :goto_5a
    const/4 p1, 0x1

    return p1

    :cond_5c
    const/4 p1, 0x0

    return p1
.end method
