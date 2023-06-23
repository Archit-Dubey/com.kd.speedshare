.class Lcom/genonbeta/TrebleShot/app/EditableListFragment$2;
.super Ljava/lang/Object;
.source "EditableListFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->access$002(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->refreshList()V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 2

    .line 217
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$2;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->refreshList()V

    const/4 p1, 0x1

    return p1
.end method
