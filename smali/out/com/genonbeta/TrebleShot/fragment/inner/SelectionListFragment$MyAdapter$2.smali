.class Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$2;
.super Ljava/lang/Object;
.source "SelectionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;

.field final synthetic val$checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

.field final synthetic val$holder:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;Landroidx/appcompat/widget/AppCompatCheckBox;Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V
    .registers 4

    .line 150
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$2;->val$checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$2;->val$holder:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 154
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$2;->val$checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->getList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$2;->val$holder:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/android/framework/object/Selectable;

    invoke-virtual {p1, v0, v1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->checkReversed(Landroidx/appcompat/widget/AppCompatCheckBox;Lcom/genonbeta/android/framework/object/Selectable;)V

    return-void
.end method
