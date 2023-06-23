.class Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$1;
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

    .line 104
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 108
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    return-void
.end method
