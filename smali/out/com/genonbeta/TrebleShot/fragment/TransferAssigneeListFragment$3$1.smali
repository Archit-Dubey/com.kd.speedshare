.class Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;
.super Ljava/lang/Object;
.source "TransferAssigneeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

.field final synthetic val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    .line 129
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 130
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 132
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0d001a

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    new-instance p1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;

    invoke-direct {p1, p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3$1;Lcom/genonbeta/TrebleShot/object/ShowingAssignee;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 160
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
