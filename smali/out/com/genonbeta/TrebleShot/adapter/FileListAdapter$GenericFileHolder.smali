.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;
.super Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericFileHolder"
.end annotation


# instance fields
.field public file:Lcom/genonbeta/android/framework/io/DocumentFile;

.field public iconRes:I

.field public info:Ljava/lang/String;

.field public requestCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;IJJLandroid/net/Uri;)V
    .registers 22

    move-object v11, p0

    .line 421
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p2

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    move-object v0, p1

    .line 423
    iput-object v0, v11, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    move-object v0, p3

    .line 424
    iput-object v0, v11, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->info:Ljava/lang/String;

    move/from16 v0, p4

    .line 425
    iput v0, v11, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->iconRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x64

    .line 409
    invoke-direct {p0, v0, p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()J
    .registers 6

    .line 431
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_33

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 432
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 433
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s_%s"

    .line 432
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 432
    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->setId(J)V

    .line 435
    :cond_33
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestCode()I
    .registers 2

    .line 441
    iget v0, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->requestCode:I

    return v0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
