.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ReceivedFileHolder;
.super Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedFileHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/object/TransferObject;)V
    .registers 7

    .line 492
    invoke-direct {p0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;-><init>(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    if-nez p3, :cond_d

    const p2, 0x7f1100f4

    .line 495
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_d
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 496
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ReceivedFileHolder;->getComparableSize()J

    move-result-wide v0

    const/4 p2, 0x0

    invoke-static {v0, v1, p2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 v0, 0x1

    iget-wide v1, p3, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    .line 497
    invoke-static {v1, v2, p2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "%s / %s"

    .line 496
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2a
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ReceivedFileHolder;->info:Ljava/lang/String;

    if-nez p3, :cond_32

    const p1, 0x7f0700a4

    goto :goto_38

    .line 499
    :cond_32
    iget-object p1, p3, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileMimeType:Ljava/lang/String;

    .line 501
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->loadMimeIcon(Ljava/lang/String;)I

    move-result p1

    :goto_38
    iput p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ReceivedFileHolder;->iconRes:I

    if-eqz p3, :cond_40

    .line 504
    iget-object p1, p3, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ReceivedFileHolder;->friendlyName:Ljava/lang/String;

    :cond_40
    return-void
.end method
