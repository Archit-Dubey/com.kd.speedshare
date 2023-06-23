.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;
.super Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;
.source "FileListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WritablePathHolder"
.end annotation


# instance fields
.field public pathObject:Lcom/genonbeta/TrebleShot/object/WritablePathObject;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .registers 5

    .line 575
    invoke-direct {p0, p1, p3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;-><init>(ILjava/lang/String;)V

    .line 576
    iput p2, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;->iconRes:I

    .line 577
    iput p4, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;->requestCode:I

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/object/WritablePathObject;Ljava/lang/String;)V
    .registers 14

    .line 582
    iget-object v2, p2, Lcom/genonbeta/TrebleShot/object/WritablePathObject;->title:Ljava/lang/String;

    iget-object v9, p2, Lcom/genonbeta/TrebleShot/object/WritablePathObject;->path:Landroid/net/Uri;

    const v4, 0x7f0700f5

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;IJJLandroid/net/Uri;)V

    .line 583
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;->pathObject:Lcom/genonbeta/TrebleShot/object/WritablePathObject;

    return-void
.end method


# virtual methods
.method public comparisonSupported()Z
    .registers 3

    .line 589
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;->getViewType()I

    move-result v0

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_10

    .line 590
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->comparisonSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public getId()J
    .registers 4

    .line 596
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;->getViewType()I

    move-result v0

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_d

    .line 597
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->getId()J

    move-result-wide v0

    goto :goto_3e

    :cond_d
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 598
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;->iconRes:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;->getRepresentativeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s_%s_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    :goto_3e
    return-wide v0
.end method

.method public setSelectableSelected(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
