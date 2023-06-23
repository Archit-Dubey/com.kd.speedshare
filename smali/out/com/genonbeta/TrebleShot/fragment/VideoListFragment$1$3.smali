.class Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$3;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 96
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$3;->this$1:Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$3;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 100
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$3;->this$1:Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 101
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$3;->this$1:Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/VideoListFragment$1$3;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(I)Z

    :cond_1b
    return-void
.end method
