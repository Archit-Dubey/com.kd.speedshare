.class Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1;
.super Ljava/lang/Object;
.source "ImageListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;
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
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
    .registers 4

    .line 74
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->isRepresentative()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 75
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->registerLayoutViewClicks(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    .line 77
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1$2;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->isGridLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_3c

    const v1, 0x7f0901c1

    goto :goto_3f

    :cond_3c
    const v1, 0x7f0901c0

    :goto_3f
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1$3;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4b
    return-void
.end method

.method public bridge synthetic onQuickActions(Ljava/lang/Object;)V
    .registers 2

    .line 70
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ImageListFragment$1;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V

    return-void
.end method
