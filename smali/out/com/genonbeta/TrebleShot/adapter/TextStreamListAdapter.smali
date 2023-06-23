.class public Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.source "TextStreamListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter<",
        "Lcom/genonbeta/TrebleShot/object/TextStreamObject;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;)V
    .registers 4

    const/16 v0, 0x6e

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 22
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V
    .registers 8

    .line 60
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    .line 62
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->tryBinding(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 63
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0901e9

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901eb

    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901ec

    .line 67
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->isSelectableSelected()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 71
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-wide v3, p2, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->date:J

    const/4 v0, 0x1

    invoke-static {p1, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->getGroupBy()I

    move-result p1

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_4f

    const/4 p1, 0x0

    goto :goto_51

    :cond_4f
    const/16 p1, 0x8

    :goto_51
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->getGroupBy()I

    move-result p1

    if-eq p1, v0, :cond_63

    .line 76
    iget-wide p1, p2, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->date:J

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->getSectionNameDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_63

    :catch_63
    :cond_63
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_19

    .line 51
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0062

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090138

    invoke-direct {p2, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;I)V

    return-object p2

    .line 53
    :cond_19
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0087

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/TextStreamObject;
    .registers 3

    .line 43
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    invoke-direct {v0, p1}, Lcom/genonbeta/TrebleShot/object/TextStreamObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    move-result-object p1

    return-object p1
.end method

.method protected onLoad(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/object/TextStreamObject;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    new-instance v1, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "clipboard"

    invoke-direct {v1, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-class v2, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    .line 37
    invoke-virtual {p1, p0, v1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    goto :goto_16

    :cond_26
    return-void
.end method
