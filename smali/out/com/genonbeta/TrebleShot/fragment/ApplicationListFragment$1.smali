.class Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;
.super Ljava/lang/Object;
.source "ApplicationListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions<",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuickActions(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->registerLayoutViewClicks(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    .line 56
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$2;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onQuickActions(Ljava/lang/Object;)V
    .registers 2

    .line 50
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    return-void
.end method
