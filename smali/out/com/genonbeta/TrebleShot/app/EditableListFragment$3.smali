.class Lcom/genonbeta/TrebleShot/app/EditableListFragment$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "EditableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

.field final synthetic val$optimalGridSize:I


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;I)V
    .registers 3

    .line 377
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    iput p2, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$3;->val$optimalGridSize:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_18

    .line 384
    :cond_10
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    iget v1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$3;->val$optimalGridSize:I

    .line 386
    invoke-virtual {v0, p1, v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onGridSpanSize(II)I

    move-result p1

    :goto_18
    return p1
.end method
