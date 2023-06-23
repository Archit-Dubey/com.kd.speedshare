.class public Lcom/genonbeta/android/framework/io/StreamInfo;
.super Ljava/lang/Object;
.source "StreamInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/io/StreamInfo$FolderStateException;,
        Lcom/genonbeta/android/framework/io/StreamInfo$Type;
    }
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public friendlyName:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field public mimeType:Ljava/lang/String;

.field public size:J

.field public type:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/StreamCorruptedException;,
            Lcom/genonbeta/android/framework/io/StreamInfo$FolderStateException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/genonbeta/android/framework/io/StreamInfo;->loadStream(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 47
    :cond_a
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string p2, "Content was not able to route a stream. Empty result is returned"

    invoke-direct {p1, p2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStreamInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/StreamInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/StreamCorruptedException;,
            Lcom/genonbeta/android/framework/io/StreamInfo$FolderStateException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/genonbeta/android/framework/io/StreamInfo;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/android/framework/io/StreamInfo;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method private loadStream(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/android/framework/io/StreamInfo$FolderStateException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 57
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    iput-object p2, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->uri:Landroid/net/Uri;

    const-string v1, "content"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_54

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    .line 63
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 66
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "_display_name"

    .line 67
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "_size"

    .line 68
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_50

    if-eq v1, v3, :cond_50

    .line 71
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->friendlyName:Ljava/lang/String;

    .line 72
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->size:J

    .line 73
    iget-object p1, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->mimeType:Ljava/lang/String;

    .line 74
    sget-object p1, Lcom/genonbeta/android/framework/io/StreamInfo$Type;->Stream:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    iput-object p1, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->type:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    return v2

    .line 80
    :cond_50
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_94

    :cond_54
    const-string p1, "file"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 83
    new-instance p1, Ljava/io/File;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p2

    if-eqz p2, :cond_94

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_8e

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->friendlyName:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->size:J

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/genonbeta/android/framework/util/FileUtils;->getFileContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->mimeType:Ljava/lang/String;

    .line 92
    sget-object p2, Lcom/genonbeta/android/framework/io/StreamInfo$Type;->File:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    iput-object p2, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->type:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    .line 93
    iput-object p1, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->file:Ljava/io/File;

    return v2

    .line 87
    :cond_8e
    new-instance p1, Lcom/genonbeta/android/framework/io/StreamInfo$FolderStateException;

    invoke-direct {p1}, Lcom/genonbeta/android/framework/io/StreamInfo$FolderStateException;-><init>()V

    throw p1

    :cond_94
    :goto_94
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->file:Ljava/io/File;

    if-nez v0, :cond_f

    .line 117
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/StreamInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_16

    :cond_f
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_16
    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->file:Ljava/io/File;

    if-nez v0, :cond_11

    .line 110
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/StreamInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->uri:Landroid/net/Uri;

    const-string v2, "wa"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_19

    :cond_11
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/StreamInfo;->file:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_19
    return-object v0
.end method
