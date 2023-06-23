.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2$1;
.super Ljava/lang/Object;
.source "TransferListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;

.field final synthetic val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
    .registers 3

    .line 134
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 138
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 139
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(I)Z

    :cond_1b
    return-void
.end method
