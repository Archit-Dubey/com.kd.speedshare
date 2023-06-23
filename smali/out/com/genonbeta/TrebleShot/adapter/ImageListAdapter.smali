.class public Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter;
.source "ImageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter<",
        "Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field private mSelectedInset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/16 v0, 0x6f

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter;-><init>(Landroid/content/Context;I)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06012b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->mSelectedInset:I

    return-void
.end method


# virtual methods
.method public isGridSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 26
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V
    .registers 7

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    .line 93
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;

    .line 95
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->tryBinding(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z

    move-result p1

    if-nez p1, :cond_60

    const p1, 0x7f0900c0

    .line 96
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p1, 0x7f09010f

    .line 97
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f0901e9

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901eb

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    iget-object v3, p2, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;->friendlyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p2, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;->dateTakenString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;->isSelectableSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object v0

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;->uri:Landroid/net/Uri;

    .line 107
    invoke-virtual {v0, p2}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/net/Uri;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p2

    const/16 v0, 0x12c

    .line 108
    invoke-virtual {p2, v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->override(I)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p2

    .line 109
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/GlideRequest;->centerCrop()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p2

    .line 110
    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_60

    :catch_60
    :cond_60
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_19

    .line 81
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0062

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090138

    invoke-direct {p2, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;I)V

    return-object p2

    .line 83
    :cond_19
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->isGridLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_29

    const v2, 0x7f0c0081

    goto :goto_2c

    :cond_29
    const v2, 0x7f0c0080

    :goto_2c
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;
    .registers 3

    .line 120
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;

    invoke-direct {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onLoad(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 42
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 45
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b2

    const-string v2, "_id"

    .line 46
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    .line 47
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "_display_name"

    .line 48
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "bucket_display_name"

    .line 49
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "date_added"

    .line 50
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "_size"

    .line 51
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "mime_type"

    .line 52
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 55
    :goto_40
    new-instance v15, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;

    .line 56
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 57
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 58
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 59
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 60
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 61
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    .line 62
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v3

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v9, v15

    move/from16 v22, v2

    move-object v2, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move-object/from16 v20, v3

    invoke-direct/range {v9 .. v20}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v9, v2, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;->date:J

    invoke-static {v3, v9, v10}, Lcom/genonbeta/TrebleShot/util/TimeUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;->dateTakenString:Ljava/lang/String;

    move-object/from16 v3, p1

    .line 67
    invoke-virtual {v3, v0, v2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_ad

    goto :goto_b2

    :cond_ad
    move/from16 v3, v21

    move/from16 v2, v22

    goto :goto_40

    .line 72
    :cond_b2
    :goto_b2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b5
    return-void
.end method
