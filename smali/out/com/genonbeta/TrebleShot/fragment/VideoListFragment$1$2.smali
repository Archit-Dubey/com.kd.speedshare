.class Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$2;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;

.field final synthetic val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
    .registers 3

    .line 85
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$2;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 89
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$2;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->performLayoutLongClick(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result p1

    return p1
.end method
