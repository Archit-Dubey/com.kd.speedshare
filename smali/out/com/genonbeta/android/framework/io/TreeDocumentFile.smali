.class public Lcom/genonbeta/android/framework/io/TreeDocumentFile;
.super Lcom/genonbeta/android/framework/io/DocumentFile;
.source "TreeDocumentFile.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExists:Z

.field private mFlags:J

.field private mId:Ljava/lang/String;

.field private mLastModified:J

.field private mLength:J

.field private mName:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/genonbeta/android/framework/io/DocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Landroid/net/Uri;)V

    .line 52
    iput-object p2, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0, p3}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->loadFrom(Landroid/database/Cursor;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 55
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mId:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    .line 57
    :cond_18
    iget-object p1, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->setOriginalUri(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p4}, Lcom/genonbeta/android/framework/io/DocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Landroid/net/Uri;)V

    .line 42
    iput-object p2, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    .line 45
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->sync()V

    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public canWrite()Z
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 3

    const-string v0, "vnd.android.document/directory"

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    return-object p1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 5

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, p1, p2}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 67
    new-instance p2, Lcom/genonbeta/android/framework/io/TreeDocumentFile;

    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1, p1}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object p2

    :catch_16
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public delete()Z
    .registers 3

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .registers 2

    .line 196
    iget-boolean v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mExists:Z

    return v0
.end method

.method public getFlags()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mFlags:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mType:Ljava/lang/String;

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mType:Ljava/lang/String;

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public isVirtual()Z
    .registers 6

    .line 120
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->getFlags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public lastModified()J
    .registers 3

    .line 126
    iget-wide v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mLastModified:J

    return-wide v0
.end method

.method public length()J
    .registers 3

    .line 132
    iget-wide v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mLength:J

    return-wide v0
.end method

.method public listFiles()[Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 11

    const/4 v0, 0x0

    .line 203
    :try_start_1
    iget-object v1, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 204
    iget-object v1, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 206
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_42

    .line 209
    :cond_25
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 212
    :cond_2b
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    new-instance v4, Lcom/genonbeta/android/framework/io/TreeDocumentFile;

    iget-object v5, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v1}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Landroid/content/Context;Landroid/database/Cursor;)V

    aput-object v4, v2, v3

    .line 213
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 215
    invoke-static {v1}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_42
    :goto_42
    new-array v0, v0, [Lcom/genonbeta/android/framework/io/DocumentFile;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_44} :catch_45

    return-object v0

    :catch_45
    new-array v0, v0, [Lcom/genonbeta/android/framework/io/DocumentFile;

    return-object v0
.end method

.method protected loadFrom(Landroid/database/Cursor;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "document_id"

    .line 140
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "_display_name"

    .line 141
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_size"

    .line 142
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "mime_type"

    .line 143
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "flags"

    .line 144
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "last_modified"

    .line 145
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v1, v7, :cond_5e

    if-eq v2, v7, :cond_5e

    if-eq v3, v7, :cond_5e

    if-eq v4, v7, :cond_5e

    if-eq v5, v7, :cond_5e

    if-ne v6, v7, :cond_36

    goto :goto_5e

    .line 155
    :cond_36
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mId:Ljava/lang/String;

    .line 156
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mName:Ljava/lang/String;

    .line 157
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mLastModified:J

    .line 158
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mLength:J

    .line 159
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mType:Ljava/lang/String;

    .line 160
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mFlags:J

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mExists:Z

    return p1

    :cond_5e
    :goto_5e
    return v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 229
    :try_start_1
    iget-object v1, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2, p1}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    :catch_11
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return v0
.end method

.method public sync()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mExists:Z

    .line 242
    iget-object v0, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    .line 247
    :try_start_a
    iget-object v2, p0, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 249
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0, v0}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->loadFrom(Landroid/database/Cursor;)Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_33
    .catchall {:try_start_a .. :try_end_20} :catchall_31

    if-eqz v1, :cond_26

    .line 255
    invoke-static {v0}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_26
    invoke-static {v0}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->closeQuietly(Ljava/io/Closeable;)V

    .line 258
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to sync()"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_31
    move-exception v1

    goto :goto_4b

    :catch_33
    move-exception v1

    .line 252
    :try_start_34
    sget-object v2, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    throw v1
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_31

    .line 255
    :goto_4b
    invoke-static {v0}, Lcom/genonbeta/android/framework/io/TreeDocumentFile;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
