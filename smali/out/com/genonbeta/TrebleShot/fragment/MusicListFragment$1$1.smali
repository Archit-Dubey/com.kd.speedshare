.class Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1$1;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;

.field final synthetic val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
    .registers 3

    .line 88
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 92
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment$1$1;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/MusicListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    return-void
.end method
