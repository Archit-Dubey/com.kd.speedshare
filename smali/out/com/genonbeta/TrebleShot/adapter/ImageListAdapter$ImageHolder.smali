.class public Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter$ImageHolder;
.super Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;
.source "ImageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/ImageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageHolder"
.end annotation


# instance fields
.field public dateTakenString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V
    .registers 12

    .line 140
    invoke-direct/range {p0 .. p11}, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x64

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/genonbeta/TrebleShot/widget/GalleryGroupEditableListAdapter$GalleryGroupShareable;-><init>(ILjava/lang/String;)V

    return-void
.end method
