.class public Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;
.super Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;
.source "GalleryGroupEditableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryGroupShareable"
.end annotation


# instance fields
.field public albumName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V
    .registers 23

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v10, p11

    .line 67
    invoke-direct/range {v0 .. v10}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    move-object/from16 v1, p5

    .line 68
    iput-object v1, v0, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;->albumName:Ljava/lang/String;

    return-void
.end method
