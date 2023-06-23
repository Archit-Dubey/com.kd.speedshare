.class Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$1;
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

    .line 58
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 62
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$1$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    return-void
.end method
