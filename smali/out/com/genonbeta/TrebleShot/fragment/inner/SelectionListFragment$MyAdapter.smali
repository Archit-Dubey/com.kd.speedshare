.class public Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;
.super Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;
.source "SelectionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter<",
        "Lcom/genonbeta/android/framework/object/Selectable;",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 130
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mList:Ljava/util/ArrayList;

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mPendingList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public checkReversed(Landroidx/appcompat/widget/AppCompatCheckBox;Lcom/genonbeta/android/framework/object/Selectable;)V
    .registers 4

    .line 204
    invoke-interface {p2}, Lcom/genonbeta/android/framework/object/Selectable;->isSelectableSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Lcom/genonbeta/android/framework/object/Selectable;->setSelectableSelected(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 205
    invoke-interface {p2}, Lcom/genonbeta/android/framework/object/Selectable;->isSelectableSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    :cond_13
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getList()Ljava/util/List;
    .registers 2

    .line 123
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->getList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected load(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mPendingList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 214
    :try_start_6
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 123
    check-cast p1, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->onBindViewHolder(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;I)V
    .registers 5

    .line 164
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/android/framework/object/Selectable;

    .line 165
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 166
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0901e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 168
    invoke-interface {p2}, Lcom/genonbeta/android/framework/object/Selectable;->getSelectableTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-interface {p2}, Lcom/genonbeta/android/framework/object/Selectable;->isSelectableSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;
    .registers 6

    .line 137
    new-instance p2, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 138
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0900af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 140
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;Landroidx/appcompat/widget/AppCompatCheckBox;Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;Landroidx/appcompat/widget/AppCompatCheckBox;Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onLoad()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mPendingList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method public onUpdate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->getList()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 191
    :try_start_5
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$MyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 193
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p1
.end method
