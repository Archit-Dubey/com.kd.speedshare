.class public Lcom/genonbeta/android/framework/io/StreamDocumentFile;
.super Lcom/genonbeta/android/framework/io/DocumentFile;
.source "StreamDocumentFile.java"


# instance fields
.field private mStream:Lcom/genonbeta/android/framework/io/StreamInfo;


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/io/StreamInfo;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0, p2}, Lcom/genonbeta/android/framework/io/DocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Landroid/net/Uri;)V

    .line 20
    iput-object p1, p0, Lcom/genonbeta/android/framework/io/StreamDocumentFile;->mStream:Lcom/genonbeta/android/framework/io/StreamInfo;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public canWrite()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public delete()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/StreamDocumentFile;->mStream:Lcom/genonbeta/android/framework/io/StreamInfo;

    iget-object v0, v0, Lcom/genonbeta/android/framework/io/StreamInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/StreamDocumentFile;->mStream:Lcom/genonbeta/android/framework/io/StreamInfo;

    iget-object v0, v0, Lcom/genonbeta/android/framework/io/StreamInfo;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Lcom/genonbeta/android/framework/io/StreamInfo;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/StreamDocumentFile;->mStream:Lcom/genonbeta/android/framework/io/StreamInfo;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/StreamDocumentFile;->mStream:Lcom/genonbeta/android/framework/io/StreamInfo;

    iget-object v0, v0, Lcom/genonbeta/android/framework/io/StreamInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/StreamDocumentFile;->mStream:Lcom/genonbeta/android/framework/io/StreamInfo;

    iget-object v0, v0, Lcom/genonbeta/android/framework/io/StreamInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFile()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isVirtual()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public lastModified()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length()J
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/StreamDocumentFile;->mStream:Lcom/genonbeta/android/framework/io/StreamInfo;

    iget-wide v0, v0, Lcom/genonbeta/android/framework/io/StreamInfo;->size:J

    return-wide v0
.end method

.method public listFiles()[Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/genonbeta/android/framework/io/DocumentFile;

    return-object v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public sync()V
    .registers 1

    return-void
.end method
