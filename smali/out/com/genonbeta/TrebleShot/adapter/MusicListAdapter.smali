.class public Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;
.super Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.source "MusicListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;,
        Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter<",
        "Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        ">;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister<",
        "Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODE_GROUP_BY_ALBUM:I = 0x65

.field public static final MODE_GROUP_BY_ARTIST:I = 0x66

.field public static final MODE_GROUP_BY_FOLDER:I = 0x67


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/16 v0, 0x66

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;-><init>(Landroid/content/Context;I)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public createLister(Ljava/util/List;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;",
            ">;I)",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->createLister(Ljava/util/List;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;

    move-result-object p1

    .line 180
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->setCustomLister(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister$CustomGroupLister;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;

    move-result-object p1

    return-object p1
.end method

.method public extractFolderName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 185
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 186
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 188
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_16

    .line 189
    array-length p1, v0

    sub-int/2addr p1, v2

    aget-object p1, v0, p1

    :cond_16
    return-object p1
.end method

.method public getSectionName(ILcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;)Ljava/lang/String;
    .registers 5

    .line 199
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->isGroupRepresentative()Z

    move-result v0

    if-nez v0, :cond_29

    .line 200
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getGroupBy()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_11

    .line 201
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->artist:Ljava/lang/String;

    return-object p1

    .line 202
    :cond_11
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getGroupBy()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1c

    .line 203
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->folder:Ljava/lang/String;

    return-object p1

    .line 204
    :cond_1c
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getGroupBy()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_29

    .line 205
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->albumHolder:Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->title:Ljava/lang/String;

    return-object p1

    .line 208
    :cond_29
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->getSectionName(ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSectionName(ILcom/genonbeta/TrebleShot/object/Editable;)Ljava/lang/String;
    .registers 3

    .line 26
    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getSectionName(ILcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSectionName(ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Ljava/lang/String;
    .registers 3

    .line 26
    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getSectionName(ILcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 26
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;I)V
    .registers 10

    .line 121
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;

    .line 122
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->tryBinding(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z

    move-result p1

    if-nez p1, :cond_aa

    const p1, 0x7f09010f

    .line 125
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f0901e9

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901eb

    .line 127
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901ec

    .line 128
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0901ef

    .line 129
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 131
    iget-object v5, p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->song:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getGroupBy()I

    move-result v1

    const/16 v5, 0x65

    if-eq v1, v5, :cond_67

    .line 134
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getGroupBy()I

    move-result v1

    const/16 v6, 0x66

    if-ne v1, v6, :cond_53

    goto :goto_67

    .line 142
    :cond_53
    iget-object v1, p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->artist:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->albumHolder:Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7f

    .line 135
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getGroupBy()I

    move-result v1

    if-ne v1, v5, :cond_70

    iget-object v1, p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->artist:Ljava/lang/String;

    goto :goto_74

    :cond_70
    iget-object v1, p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->albumHolder:Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->title:Ljava/lang/String;

    :goto_74
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    .line 139
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_7f
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->isSelectableSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object v0

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->albumHolder:Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->art:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, p2}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p2

    const v0, 0x7f0700e3

    .line 152
    invoke-virtual {p2, v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->placeholder(I)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p2

    const/16 v0, 0xa0

    .line 153
    invoke-virtual {p2, v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->override(I)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p2

    .line 154
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/GlideRequest;->centerCrop()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p2

    .line 155
    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_aa} :catch_aa

    :catch_aa
    :cond_aa
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_19

    .line 112
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0062

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090138

    invoke-direct {p2, p1, v0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;I)V

    return-object p2

    .line 114
    :cond_19
    new-instance p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0082

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;",
            ">;I",
            "Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;",
            ")Z"
        }
    .end annotation

    const/16 v0, 0x65

    if-ne p2, v0, :cond_11

    .line 166
    new-instance p2, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;

    iget-object v0, p3, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->albumHolder:Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->title:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offer(Ljava/lang/Object;Lcom/genonbeta/android/framework/util/listing/Merger;)V

    goto :goto_2e

    :cond_11
    const/16 v0, 0x66

    if-ne p2, v0, :cond_20

    .line 168
    new-instance p2, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;

    iget-object v0, p3, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->artist:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offer(Ljava/lang/Object;Lcom/genonbeta/android/framework/util/listing/Merger;)V

    goto :goto_2e

    :cond_20
    const/16 v0, 0x67

    if-ne p2, v0, :cond_30

    .line 170
    new-instance p2, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;

    iget-object v0, p3, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->folder:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/genonbeta/android/framework/util/listing/merger/StringMerger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offer(Ljava/lang/Object;Lcom/genonbeta/android/framework/util/listing/Merger;)V

    :goto_2e
    const/4 p1, 0x1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z
    .registers 4

    .line 26
    check-cast p3, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->onCustomGroupListing(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;ILcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;)Z

    move-result p1

    return p1
.end method

.method protected onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;
    .registers 3

    .line 104
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;

    invoke-direct {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->onGenerateRepresentative(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onLoad(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister<",
            "Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 45
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 46
    iget-object v2, v0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    .line 49
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v6, v5

    const/4 v4, 0x0

    const-string v5, "is_music=?"

    const/4 v7, 0x0

    .line 46
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 52
    iget-object v3, v0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "_id"

    if-eqz v3, :cond_67

    .line 55
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 56
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "album_art"

    .line 57
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "album"

    .line 58
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 61
    :cond_42
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_42

    .line 65
    :cond_64
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_67
    if-eqz v2, :cond_131

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 70
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "artist"

    .line 71
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    .line 72
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "_data"

    .line 73
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "album_id"

    .line 74
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "_display_name"

    .line 75
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "date_modified"

    .line 76
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "_size"

    .line 77
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "mime_type"

    .line 78
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 81
    :goto_a3
    new-instance v15, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;

    .line 82
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 83
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 84
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 85
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 86
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;->extractFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 87
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 88
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 89
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v22, v12

    check-cast v22, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    .line 90
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    mul-long v23, v23, v25

    .line 91
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v1

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v12, v15

    move/from16 v28, v3

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move-object/from16 v21, v22

    move-wide/from16 v22, v23

    move-wide/from16 v24, v25

    move-object/from16 v26, v1

    invoke-direct/range {v12 .. v26}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;JJLandroid/net/Uri;)V

    move-object/from16 v1, p1

    .line 81
    invoke-virtual {v1, v0, v3}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupLister;->offerObliged(Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)V

    .line 94
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_128

    goto :goto_12e

    :cond_128
    move-object/from16 v1, v27

    move/from16 v3, v28

    goto/16 :goto_a3

    .line 97
    :cond_12e
    :goto_12e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_131
    return-void
.end method
