.class public Lcom/genonbeta/TrebleShot/adapter/VideoListAdapter$VideoHolder;
.super Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoHolder"
.end annotation


# instance fields
.field public duration:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLandroid/net/Uri;)V
    .registers 26

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-object/from16 v11, p13

    .line 145
    invoke-direct/range {v0 .. v11}, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    .line 146
    invoke-static/range {p7 .. p8}, Lcom/genonbeta/TrebleShot/util/TimeUtils;->getDuration(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lcom/genonbeta/TrebleShot/adapter/VideoListAdapter$VideoHolder;->duration:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x64

    .line 140
    invoke-direct {p0, v0, p1}, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;-><init>(ILjava/lang/String;)V

    return-void
.end method
