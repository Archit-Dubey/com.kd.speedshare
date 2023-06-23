.class Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$3;
.super Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;
.source "TextStreamListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

.field final synthetic val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V
    .registers 5

    .line 132
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$3;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-direct {p0, p2, p3}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$3;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
    .registers 3

    .line 137
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$3;->val$quickActions:Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->quickAction(Ljava/lang/Object;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    return-object p1
.end method
