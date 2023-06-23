.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;
.super Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;I)V
    .registers 5

    .line 512
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .line 517
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->lastModified()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v9

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;IJJLandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getId()J
    .registers 3

    .line 523
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->getId()J

    move-result-wide v0

    return-wide v0
.end method
