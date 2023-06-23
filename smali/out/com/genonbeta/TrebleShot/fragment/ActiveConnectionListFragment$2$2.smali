.class Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$2;
.super Ljava/lang/Object;
.source "ActiveConnectionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;

.field final synthetic val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
    .registers 3

    .line 114
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$2;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 118
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 119
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$2;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(I)Z

    :cond_1b
    return-void
.end method
