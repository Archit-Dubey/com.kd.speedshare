.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;
.super Ljava/lang/Object;
.source "TransferListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions<",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
    .registers 4

    .line 130
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->isRepresentative()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 131
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->registerLayoutViewClicks(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    .line 133
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    return-void
.end method

.method public bridge synthetic onQuickActions(Ljava/lang/Object;)V
    .registers 2

    .line 126
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V

    return-void
.end method
