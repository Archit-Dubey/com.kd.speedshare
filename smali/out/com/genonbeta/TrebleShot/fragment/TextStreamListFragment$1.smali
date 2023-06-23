.class Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$1;
.super Ljava/lang/Object;
.source "TextStreamListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 77
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "genonbeta.intent.action.EDIT_TEXT"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
