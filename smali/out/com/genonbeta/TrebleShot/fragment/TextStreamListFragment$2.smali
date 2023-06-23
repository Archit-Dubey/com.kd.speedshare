.class Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$2;
.super Ljava/lang/Object;
.source "TextStreamListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;
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
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
    .registers 3

    .line 126
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->isRepresentative()Z

    move-result v0

    if-nez v0, :cond_b

    .line 127
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->registerLayoutViewClicks(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V

    :cond_b
    return-void
.end method

.method public bridge synthetic onQuickActions(Ljava/lang/Object;)V
    .registers 2

    .line 122
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$2;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V

    return-void
.end method
