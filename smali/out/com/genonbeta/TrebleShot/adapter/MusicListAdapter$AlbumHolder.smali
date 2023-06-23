.class public Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;
.super Ljava/lang/Object;
.source "MusicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumHolder"
.end annotation


# instance fields
.field public art:Ljava/lang/String;

.field public id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput p1, p0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->id:I

    .line 275
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->art:Ljava/lang/String;

    .line 276
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 282
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;

    iget p1, p1, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->id:I

    iget v0, p0, Lcom/genonbeta/TrebleShot/adapter/MusicListAdapter$AlbumHolder;->id:I

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_14

    :cond_e
    const/4 p1, 0x0

    goto :goto_14

    :cond_10
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_14
    return p1
.end method
