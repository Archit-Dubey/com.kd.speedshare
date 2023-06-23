.class public Lcom/genonbeta/TrebleShot/util/UpdateUtils;
.super Ljava/lang/Object;
.source "UpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/util/UpdateUtils$OnConnectionReadyListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForUpdates(Landroid/content/Context;Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;ZLcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;)V
    .registers 5

    .line 30
    new-instance v0, Lcom/genonbeta/TrebleShot/util/UpdateUtils$1;

    invoke-direct {v0, p0, p3}, Lcom/genonbeta/TrebleShot/util/UpdateUtils$1;-><init>(Landroid/content/Context;Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->checkForUpdates(ZLcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;)V

    return-void
.end method

.method public static getAvailableVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p0

    const-string v0, "availableVersion"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultUpdater(Landroid/content/Context;)Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;
    .registers 5

    .line 55
    new-instance v0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    const-string v1, ""

    const v2, 0x7f1201de

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public static getLastTimeCheckedForUpdates(Landroid/content/Context;)J
    .registers 4

    .line 60
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p0

    const-string v0, "checkedForUpdatesTime"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasNewVersion(Landroid/content/Context;)Z
    .registers 2

    .line 65
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/UpdateUtils;->getAvailableVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 66
    invoke-static {p0, v0}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->isNewVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static receiveUpdate(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/android/framework/util/Interrupter;Lcom/genonbeta/TrebleShot/util/UpdateUtils$OnConnectionReadyListener;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 110
    :try_start_3
    new-instance v2, Ljava/net/ServerSocket;

    const v3, 0xe58d

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_be
    .catchall {:try_start_3 .. :try_end_b} :catchall_bb

    .line 111
    :try_start_b
    invoke-static/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getApplicationDirectory(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p1

    iget-object v5, v5, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/genonbeta/android/framework/io/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_34} :catch_b8
    .catchall {:try_start_b .. :try_end_34} :catchall_b6

    .line 116
    :try_start_34
    new-instance v4, Lcom/genonbeta/TrebleShot/util/UpdateUtils$2;

    invoke-direct {v4, v2}, Lcom/genonbeta/TrebleShot/util/UpdateUtils$2;-><init>(Ljava/net/ServerSocket;)V

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lcom/genonbeta/android/framework/util/Interrupter;->addCloser(Lcom/genonbeta/android/framework/util/Interrupter$Closer;)Z

    if-eqz v0, :cond_43

    .line 131
    invoke-interface {v0, v2}, Lcom/genonbeta/TrebleShot/util/UpdateUtils$OnConnectionReadyListener;->onConnectionReady(Ljava/net/ServerSocket;)V

    :cond_43
    const/16 v0, 0x1388

    .line 133
    invoke-virtual {v2, v0}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 135
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4c} :catch_b3
    .catchall {:try_start_34 .. :try_end_4c} :catchall_b6

    .line 137
    :try_start_4c
    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 139
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    const/16 v7, 0x1fa0

    new-array v7, v7, [B

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_69
    const/4 v12, -0x1

    if-eq v11, v12, :cond_96

    .line 147
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_7c

    .line 148
    invoke-virtual {v6, v7, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 149
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 154
    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    const-wide/16 v14, 0x1388

    cmp-long v16, v12, v14

    if-gtz v16, :cond_8e

    invoke-virtual/range {p2 .. p2}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v12

    if-nez v12, :cond_8e

    goto :goto_69

    .line 155
    :cond_8e
    new-instance v0, Ljava/lang/Exception;

    const-string v5, "Timed out or interrupted. Exiting!"

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_96
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 159
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_9c} :catch_b1
    .catchall {:try_start_4c .. :try_end_9c} :catchall_e7

    if-eqz v4, :cond_a7

    .line 169
    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 170
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 172
    :cond_a7
    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 173
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    :cond_b0
    return-object v3

    :catch_b1
    move-exception v0

    goto :goto_c2

    :catch_b3
    move-exception v0

    move-object v4, v1

    goto :goto_c2

    :catchall_b6
    move-exception v0

    goto :goto_e9

    :catch_b8
    move-exception v0

    move-object v3, v1

    goto :goto_c1

    :catchall_bb
    move-exception v0

    move-object v2, v1

    goto :goto_e9

    :catch_be
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    :goto_c1
    move-object v4, v3

    .line 162
    :goto_c2
    :try_start_c2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_d0

    .line 164
    invoke-virtual {v3}, Lcom/genonbeta/android/framework/io/DocumentFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 165
    invoke-virtual {v3}, Lcom/genonbeta/android/framework/io/DocumentFile;->delete()Z
    :try_end_d0
    .catchall {:try_start_c2 .. :try_end_d0} :catchall_e7

    :cond_d0
    if-eqz v4, :cond_db

    .line 169
    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_db

    .line 170
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    :cond_db
    if-eqz v2, :cond_e6

    .line 172
    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 173
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    :cond_e6
    return-object v1

    :catchall_e7
    move-exception v0

    move-object v1, v4

    :goto_e9
    if-eqz v1, :cond_f4

    .line 169
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_f4

    .line 170
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    :cond_f4
    if-eqz v2, :cond_ff

    .line 172
    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ff

    .line 173
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 174
    :cond_ff
    goto :goto_101

    :goto_100
    throw v0

    :goto_101
    goto :goto_100
.end method

.method public static sendUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 74
    new-instance v1, Ljava/net/InetSocketAddress;

    const v2, 0xe58d

    invoke-direct {v1, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 76
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const/16 v1, 0x1fa0

    new-array v1, v1, [B

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    :cond_2b
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_51

    if-lez v4, :cond_3f

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 91
    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1388

    cmp-long v8, v4, v6

    if-lez v8, :cond_2b

    .line 92
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "CoolTransfer: Timed out... Exiting."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    :cond_51
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 98
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 100
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method
