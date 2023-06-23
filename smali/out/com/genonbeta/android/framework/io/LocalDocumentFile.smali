.class public Lcom/genonbeta/android/framework/io/LocalDocumentFile;
.super Lcom/genonbeta/android/framework/io/DocumentFile;
.source "LocalDocumentFile.java"


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/io/File;)V
    .registers 4

    .line 23
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/genonbeta/android/framework/io/DocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Landroid/net/Uri;)V

    .line 24
    iput-object p2, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    return-void
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .registers 8

    .line 204
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_39

    .line 207
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_39

    aget-object v4, p0, v3

    .line 208
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 209
    invoke-static {v4}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 211
    :cond_19
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_36

    .line 212
    sget-object v0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_39
    return v0
.end method

.method private static getTypeForName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2e

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1d

    add-int/lit8 v0, v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    return-object p0

    :cond_1d
    const-string p0, "application/octet-stream"

    return-object p0
.end method


# virtual methods
.method public canRead()Z
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 4

    .line 50
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_16
    :goto_16
    new-instance p1, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    invoke-direct {p1, p0, v0}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/io/File;)V

    return-object p1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 4

    .line 30
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    :cond_1e
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    :try_start_25
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 39
    new-instance p2, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    invoke-direct {p2, p0, p1}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2d} :catch_2e

    return-object p2

    :catch_2e
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public delete()Z
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->deleteContents(Ljava/io/File;)Z

    .line 140
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public findFile(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 4

    .line 152
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    invoke-direct {p1, p0, v0}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/io/File;)V

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return-object p1
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 80
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_1c

    :cond_16
    new-instance v2, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    invoke-direct {v2, v1, v0}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/io/File;)V

    move-object v1, v2

    :cond_1c
    :goto_1c
    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "*/*"

    return-object v0

    .line 91
    :cond_b
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public lastModified()J
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 7

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 163
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 164
    new-instance v5, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    invoke-direct {v5, p0, v4}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/io/File;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 166
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/android/framework/io/DocumentFile;

    return-object v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 4

    .line 172
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 175
    iput-object v0, p0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->mFile:Ljava/io/File;

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public sync()V
    .registers 1

    return-void
.end method
