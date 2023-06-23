.class public Lcom/genonbeta/TrebleShot/util/FileUtils;
.super Lcom/genonbeta/android/framework/util/FileUtils;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/genonbeta/android/framework/util/FileUtils;-><init>()V

    return-void
.end method

.method public static copy(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/util/Interrupter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v4, 0x1fa0

    const/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/util/FileUtils;->copy(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/util/Interrupter;II)V

    return-void
.end method

.method public static getApplicationDirectory(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 5

    .line 32
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getDefaultApplicationDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v1

    const-string v2, "storage_path"

    .line 35
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x0

    .line 37
    :try_start_11
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->canWrite()Z

    move-result v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_27} :catch_2a

    if-eqz v1, :cond_2e

    return-object p0

    :catch_2a
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :cond_2e
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 51
    :cond_3c
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_45

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_45
    invoke-static {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultApplicationDirectoryPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f110153

    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2e

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_13

    add-int/lit8 v0, v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIncomingPseudoFile(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/TransferGroup;Z)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-static {p0, p2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getSavePath(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    iget-object p2, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->file:Ljava/lang/String;

    invoke-static {p0, p2, p1, p3}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fetchFile(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static getIncomingTransactionFile(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 81
    invoke-static {p0, p1, p2, v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getIncomingPseudoFile(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/TransferGroup;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_c

    return-object p0

    .line 84
    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File cannot be created or you don\'t have permission write on it"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getReadableUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getReadableUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReadableUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 101
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    :goto_b
    return-object p1
.end method

.method public static getReadableUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getReadableUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSavePath(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 4

    .line 120
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getApplicationDirectory(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    .line 122
    iget-object v1, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->savePath:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 124
    :try_start_8
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->savePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->canWrite()Z

    move-result p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1f

    if-eqz p1, :cond_35

    return-object p0

    :catch_1f
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    .line 132
    :cond_24
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->savePath:Ljava/lang/String;

    .line 133
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    :cond_35
    :goto_35
    return-object v0
.end method

.method public static move(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/util/Interrupter;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v4, 0x1fa0

    const/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 107
    invoke-static/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/util/FileUtils;->move(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/util/Interrupter;II)Z

    move-result p0

    return p0
.end method

.method public static openUriForeground(Landroid/app/Activity;Lcom/genonbeta/android/framework/io/DocumentFile;)Z
    .registers 5

    .line 148
    invoke-static {p0, p1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->openUri(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    const v0, 0x7f1100f6

    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_1f
    return v1
.end method

.method public static saveReceivedFile(Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/object/TransferObject;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getUniqueFileName(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 170
    invoke-virtual {p1, p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 173
    invoke-virtual {p0, p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->findFile(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    return-object p0

    .line 171
    :cond_12
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to rename object: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
