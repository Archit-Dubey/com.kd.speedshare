.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;
.super Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 13

    .line 455
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->loadMimeIcon(Ljava/lang/String;)I

    move-result v4

    .line 458
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->lastModified()J

    move-result-wide v5

    .line 459
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v7

    .line 460
    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getSecureUriSilently(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/net/Uri;

    move-result-object v9

    move-object v0, p0

    move-object v1, p2

    .line 454
    invoke-direct/range {v0 .. v9}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;IJJLandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public loadThumbnail(Landroid/widget/ImageView;)Z
    .registers 6

    .line 466
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 469
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 471
    array-length v1, v0

    if-lez v1, :cond_4d

    const/4 v1, 0x0

    .line 472
    aget-object v2, v0, v1

    const-string v3, "image"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    aget-object v0, v0, v1

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 473
    :cond_26
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 474
    invoke-virtual {v1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/net/Uri;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    iget v1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;->iconRes:I

    .line 475
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/GlideRequest;->error(I)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    const/16 v1, 0xa0

    .line 476
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/GlideRequest;->override(I)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->centerCrop()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    .line 478
    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const/4 p1, 0x1

    return p1

    .line 484
    :cond_4d
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->loadThumbnail(Landroid/widget/ImageView;)Z

    move-result p1

    return p1
.end method
