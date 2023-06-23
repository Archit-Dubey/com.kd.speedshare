.class Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;
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
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
    .registers 4

    .line 83
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->isRepresentative()Z

    move-result v0

    if-nez v0, :cond_31

    .line 84
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->registerLayoutViewClicks(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    .line 86
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1$2;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_31
    return-void
.end method

.method public bridge synthetic onQuickActions(Ljava/lang/Object;)V
    .registers 2

    .line 79
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V

    return-void
.end method
