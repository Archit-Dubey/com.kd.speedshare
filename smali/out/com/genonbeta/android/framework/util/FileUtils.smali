.class public Lcom/genonbeta/android/framework/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/genonbeta/android/framework/util/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/android/framework/util/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/util/Interrupter;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 42
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 43
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p1, :cond_53

    if-eqz p0, :cond_53

    .line 48
    new-array p2, p4, [B

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p4, 0x0

    const/4 v2, 0x0

    :goto_20
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4c

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_33

    .line 54
    invoke-virtual {p0, p2, p4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 55
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    int-to-long v5, p5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_44

    invoke-virtual {p3}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_20

    .line 61
    :cond_44
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Timed out or interrupted. Exiting!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_4c
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 65
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    .line 46
    :cond_53
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to open streams to start copying"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5c

    :goto_5b
    throw p0

    :goto_5c
    goto :goto_5b
.end method

.method public static fetchDirectories(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 70
    invoke-static {p0, p1, v0}, Lcom/genonbeta/android/framework/util/FileUtils;->fetchDirectories(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static fetchDirectories(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Z)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_5e

    aget-object v3, v0, v2

    if-eqz p0, :cond_47

    .line 82
    invoke-virtual {p0, v3}, Lcom/genonbeta/android/framework/io/DocumentFile;->findFile(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 84
    invoke-virtual {v4}, Lcom/genonbeta/android/framework/io/DocumentFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_3a

    .line 85
    :cond_1b
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A file exists for of directory name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    :goto_3a
    if-nez v4, :cond_43

    if-eqz p2, :cond_43

    .line 88
    invoke-virtual {p0, v3}, Lcom/genonbeta/android/framework/io/DocumentFile;->createDirectory(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    goto :goto_44

    :cond_43
    move-object p0, v4

    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 80
    :cond_47
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create directories: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    return-object p0
.end method

.method public static fetchFile(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 97
    invoke-static {p0, p1, p2, v0}, Lcom/genonbeta/android/framework/util/FileUtils;->fetchFile(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static fetchFile(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;Z)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_7

    .line 102
    :cond_3
    invoke-static {p0, p1, p3}, Lcom/genonbeta/android/framework/util/FileUtils;->fetchDirectories(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    :goto_7
    if-eqz p0, :cond_28

    .line 105
    invoke-virtual {p0, p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->findFile(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 108
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->isFile()Z

    move-result p0

    if-eqz p0, :cond_16

    return-object v0

    .line 109
    :cond_16
    new-instance p0, Ljava/io/IOException;

    const-string p1, "A directory exists for of file name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    if-eqz p3, :cond_28

    const/4 p3, 0x0

    .line 115
    invoke-virtual {p0, p3, p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_28

    return-object p0

    .line 122
    :cond_28
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 130
    new-instance p0, Ljava/io/File;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 v0, 0x0

    .line 132
    invoke-static {p0, p1, v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static geActionTypeToView(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "application/vnd.android.package-archive"

    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p0, v0, :cond_11

    const-string p0, "android.intent.action.INSTALL_PACKAGE"

    return-object p0

    :cond_11
    const-string p0, "android.intent.action.VIEW"

    return-object p0
.end method

.method public static getFileContentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 146
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    .line 147
    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c

    const-string p0, "*/*"

    :cond_c
    return-object p0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2e

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_2e

    add-int/lit8 v0, v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    const-string p0, ""

    return-object p0
.end method

.method public static getOpenIntent(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/content/Intent;
    .registers 4

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1d

    .line 171
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/android/framework/util/FileUtils;->geActionTypeToView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_2a

    .line 176
    :cond_1d
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getOriginalUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/FileUtils;->getOpenIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 172
    :cond_2a
    :goto_2a
    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/FileUtils;->getSecureUriSilently(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/FileUtils;->getOpenIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x1

    .line 173
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getOpenIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/genonbeta/android/framework/util/FileUtils;->geActionTypeToView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getSecureUri(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_31

    instance-of v0, p1, Lcom/genonbeta/android/framework/io/TreeDocumentFile;

    if-eqz v0, :cond_b

    goto :goto_31

    .line 189
    :cond_b
    instance-of v0, p1, Lcom/genonbeta/android/framework/io/StreamDocumentFile;

    if-eqz v0, :cond_1a

    .line 190
    check-cast p1, Lcom/genonbeta/android/framework/io/StreamDocumentFile;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/StreamDocumentFile;->getStream()Lcom/genonbeta/android/framework/io/StreamInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/FileUtils;->getSecureUri(Landroid/content/Context;Lcom/genonbeta/android/framework/io/StreamInfo;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 192
    :cond_1a
    instance-of v0, p1, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    if-eqz v0, :cond_29

    .line 193
    check-cast p1, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/FileUtils;->getSelfProviderFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 195
    :cond_29
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot gather right method to create uri"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getSecureUri(Landroid/content/Context;Lcom/genonbeta/android/framework/io/StreamInfo;)Landroid/net/Uri;
    .registers 4

    .line 215
    sget-object v0, Lcom/genonbeta/android/framework/io/StreamInfo$Type;->File:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    iget-object v1, p1, Lcom/genonbeta/android/framework/io/StreamInfo;->type:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/io/StreamInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p1, Lcom/genonbeta/android/framework/io/StreamInfo;->file:Ljava/io/File;

    .line 216
    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/FileUtils;->getSelfProviderFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_13

    :cond_11
    iget-object p0, p1, Lcom/genonbeta/android/framework/io/StreamInfo;->uri:Landroid/net/Uri;

    :goto_13
    return-object p0
.end method

.method public static getSecureUriSilently(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/net/Uri;
    .registers 7

    .line 201
    :try_start_0
    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/FileUtils;->getSecureUri(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/net/Uri;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    .line 204
    sget-object v0, Lcom/genonbeta/android/framework/util/FileUtils;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 206
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 207
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "Cannot create secure uri for the file %s with error message \'%s\'"

    .line 204
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getSelfProviderFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUniqueFileName(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    if-eqz p2, :cond_9

    .line 227
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->findFile(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p2

    if-nez p2, :cond_9

    return-object p1

    :cond_9
    const-string p2, "."

    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_18

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, p1

    :goto_19
    const-string v2, ""

    if-eq p2, v0, :cond_22

    .line 233
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_23

    :cond_22
    move-object p2, v2

    .line 235
    :goto_23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_31

    .line 236
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_31

    move-object v1, p2

    goto :goto_32

    :cond_31
    move-object v2, p2

    :goto_32
    const/4 p2, 0x1

    :goto_33
    const/16 v0, 0x3e7

    if-ge p2, v0, :cond_5d

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p0, v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->findFile(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v3

    if-nez v3, :cond_5a

    return-object v0

    :cond_5a
    add-int/lit8 p2, p2, 0x1

    goto :goto_33

    :cond_5d
    return-object p1
.end method

.method public static move(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/util/Interrupter;II)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    instance-of v0, p1, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    if-eqz v0, :cond_1c

    instance-of v0, p2, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    .line 256
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->getFile()Ljava/io/File;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 257
    :cond_1c
    invoke-static/range {p0 .. p5}, Lcom/genonbeta/android/framework/util/FileUtils;->copy(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/util/Interrupter;II)V

    .line 260
    :cond_1f
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->sync()V

    .line 262
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide p3

    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v0

    cmp-long p0, p3, v0

    if-nez p0, :cond_33

    .line 263
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->delete()Z

    const/4 p0, 0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public static openUri(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x1

    .line 281
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    return v0

    :catchall_5
    move-exception p0

    .line 284
    sget-object p1, Lcom/genonbeta/android/framework/util/FileUtils;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    .line 286
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const-string p0, "Open uri request failed with error message \'%s\'"

    .line 284
    invoke-static {v1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static openUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/genonbeta/android/framework/util/FileUtils;->getOpenIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/FileUtils;->openUri(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static openUri(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Z
    .registers 2

    .line 271
    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/FileUtils;->getOpenIntent(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/genonbeta/android/framework/util/FileUtils;->openUri(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static sizeExpression(JZ)Ljava/lang/String;
    .registers 11

    if-eqz p2, :cond_5

    const/16 v0, 0x3e8

    goto :goto_7

    :cond_5
    const/16 v0, 0x400

    :goto_7
    int-to-long v1, v0

    cmp-long v3, p0, v1

    if-gez v3, :cond_1e

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    long-to-double p0, p0

    .line 299
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v0, v1

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_34

    const-string v2, "kMGTPE"

    goto :goto_36

    :cond_34
    const-string v2, "KMGTPE"

    :goto_36
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_44

    const-string p2, "i"

    goto :goto_46

    :cond_44
    const-string p2, ""

    :goto_46
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 302
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-double v6, v0

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v5

    const/4 p0, 0x1

    aput-object p2, v2, p0

    const-string p0, "%.1f %sB"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
