.class public abstract Lcom/genonbeta/android/framework/io/DocumentFile;
.super Ljava/lang/Object;
.source "DocumentFile.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mOriginalUri:Landroid/net/Uri;

.field private final mParent:Lcom/genonbeta/android/framework/io/DocumentFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/android/framework/io/DocumentFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Landroid/net/Uri;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/genonbeta/android/framework/io/DocumentFile;->mParent:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 29
    invoke-virtual {p0, p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->setOriginalUri(Landroid/net/Uri;)V

    return-void
.end method

.method protected static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_8

    .line 125
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    .line 127
    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 3

    .line 34
    new-instance v0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/io/File;)V

    return-object v0
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 41
    :try_start_6
    new-instance v0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;

    const/4 v1, 0x0

    if-eqz p2, :cond_10

    invoke-static {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->prepareUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_11

    :cond_10
    move-object p2, p1

    :goto_11
    invoke-direct {v0, v1, p0, p2, p1}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15

    return-object v0

    .line 47
    :catch_15
    :cond_15
    :try_start_15
    new-instance p2, Lcom/genonbeta/android/framework/io/StreamDocumentFile;

    new-instance v0, Lcom/genonbeta/android/framework/io/StreamInfo;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/android/framework/io/StreamInfo;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, v0, p1}, Lcom/genonbeta/android/framework/io/StreamDocumentFile;-><init>(Lcom/genonbeta/android/framework/io/StreamInfo;Landroid/net/Uri;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_20

    return-object p2

    .line 52
    :catch_20
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create right connection for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static prepareUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 136
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract canRead()Z
.end method

.method public abstract canWrite()Z
.end method

.method public abstract createDirectory(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
.end method

.method public abstract createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
.end method

.method public abstract delete()Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 58
    instance-of v0, p1, Lcom/genonbeta/android/framework/io/DocumentFile;

    if-eqz v0, :cond_1c

    .line 59
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 60
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public abstract exists()Z
.end method

.method public findFile(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 7

    .line 109
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->listFiles()[Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 110
    invoke-virtual {v3}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/DocumentFile;->mOriginalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/DocumentFile;->mParent:Lcom/genonbeta/android/framework/io/DocumentFile;

    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract isVirtual()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method

.method public abstract listFiles()[Lcom/genonbeta/android/framework/io/DocumentFile;
.end method

.method public abstract renameTo(Ljava/lang/String;)Z
.end method

.method protected setOriginalUri(Landroid/net/Uri;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/genonbeta/android/framework/io/DocumentFile;->mOriginalUri:Landroid/net/Uri;

    return-void
.end method

.method public abstract sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
