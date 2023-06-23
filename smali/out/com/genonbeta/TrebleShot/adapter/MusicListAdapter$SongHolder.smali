.class public Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;
.super Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;
.source "MusicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SongHolder"
.end annotation


# instance fields
.field public albumHolder:Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

.field public albumId:I

.field public artist:Ljava/lang/String;

.field public folder:Ljava/lang/String;

.field public song:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;JJLandroid/net/Uri;)V
    .registers 30

    move-object v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p8

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p7

    move-wide/from16 v6, p10

    move-wide/from16 v8, p12

    move-object/from16 v10, p14

    invoke-direct/range {v0 .. v10}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    .line 228
    iput-object v12, v11, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->artist:Ljava/lang/String;

    .line 229
    iput-object v13, v11, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->song:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 230
    iput-object v0, v11, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->folder:Ljava/lang/String;

    .line 231
    iput v14, v11, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->albumId:I

    if-nez p9, :cond_40

    .line 232
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    const/4 v1, 0x0

    const-string v2, "-"

    invoke-direct {v0, v14, v2, v1}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_40
    move-object/from16 v0, p9

    :goto_42
    iput-object v0, v11, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->albumHolder:Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x64

    .line 221
    invoke-direct {p0, v0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyFilter([Ljava/lang/String;)Z
    .registers 8

    .line 238
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->applyFilter([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 241
    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_23

    aget-object v4, p1, v3

    .line 242
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->folder:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    return v1

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_23
    return v2
.end method

.method public getComparableName()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->song:Ljava/lang/String;

    return-object v0
.end method

.method public searchMatches(Ljava/lang/String;)Z
    .registers 3

    .line 257
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->isGroupRepresentative()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 258
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->searchMatches(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 260
    :cond_b
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->artist:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->searchWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->song:Ljava/lang/String;

    .line 261
    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->searchWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$SongHolder;->albumHolder:Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->title:Ljava/lang/String;

    .line 262
    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->searchWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_28

    :cond_26
    const/4 p1, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p1, 0x1

    :goto_29
    return p1
.end method
