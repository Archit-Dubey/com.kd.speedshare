.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback$1;
.super Ljava/lang/Object;
.source "TransferListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;

.field final synthetic val$selectionList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;Ljava/util/ArrayList;)V
    .registers 3

    .line 475
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback$1;->val$selectionList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 479
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;

    .line 480
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p2

    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback$1;->val$selectionList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->removeAsynchronous(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method
