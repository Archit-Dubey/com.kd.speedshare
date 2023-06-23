.class public Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;
.source "ActiveConnectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter<",
        "Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 26
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;I)V
    .registers 5

    .line 64
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;

    .line 65
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0901e9

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901eb

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 70
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->getSelectableTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->getInterface()Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getAssociatedAddress()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {v0, p2}, Lcom/genonbeta/TrebleShot/util/TextUtils;->makeWebShareLink(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_36
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 74
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;->printStackTrace()V

    :goto_3b
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
    .registers 6

    .line 56
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0076

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onLoad()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    sget-object v1, Lcom/genonbeta/TrebleShot/config/AppConfig;->DEFAULT_DISABLED_INTERFACES:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->getInterfaces(Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    .line 42
    new-instance v3, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;

    .line 43
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getAdapterName(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AddressedInterface;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;-><init>(Lcom/genonbeta/TrebleShot/util/AddressedInterface;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, v3}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;->filterItem(Lcom/genonbeta/TrebleShot/object/Editable;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 46
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_33
    return-object v0
.end method
