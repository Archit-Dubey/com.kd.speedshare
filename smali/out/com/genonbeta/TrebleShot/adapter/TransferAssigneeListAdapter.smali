.class public Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;
.source "TransferAssigneeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter<",
        "Lcom/genonbeta/TrebleShot/object/ShowingAssignee;",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

.field private mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultIconBuilder(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 26
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;I)V
    .registers 6

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    .line 52
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0901eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 56
    iget-object v2, p2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-static {v1, v2}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getAdapterName(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    invoke-static {p1, v0, p2}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->showPictureIntoView(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
    .registers 6

    .line 41
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->isHorizontalOrientation()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->isGridLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_17

    :cond_13
    const v1, 0x7f0c0078

    goto :goto_1a

    :cond_17
    :goto_17
    const v1, 0x7f0c0079

    :goto_1a
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onLoad()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/ShowingAssignee;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->loadAssigneeList(Lcom/genonbeta/android/database/SQLiteDatabase;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setGroup(Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    return-object p0
.end method
