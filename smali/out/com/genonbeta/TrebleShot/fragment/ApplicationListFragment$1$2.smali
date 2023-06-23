.class Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$2;
.super Ljava/lang/Object;
.source "ApplicationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;

.field final synthetic val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$2;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 72
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 73
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$2;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(I)Z

    :cond_1b
    return-void
.end method
