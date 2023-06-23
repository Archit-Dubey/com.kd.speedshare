.class public final Lcom/google/android/gms/internal/ads/zzdre;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.2.0"


# direct methods
.method public static zza(Ljava/io/File;Z)Ljava/io/File;
    .registers 2

    if-eqz p1, :cond_11

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_11

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 20
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 21
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1a
    return-object p0
.end method

.method public static zza(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/io/File;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 3
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Ljava/io/File;[B)Z
    .registers 4

    const/4 v0, 0x0

    .line 5
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1b
    .catchall {:try_start_1 .. :try_end_6} :catchall_16

    .line 6
    :try_start_6
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_14
    .catchall {:try_start_6 .. :try_end_c} :catchall_11

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_11
    move-exception p0

    move-object v0, v1

    goto :goto_17

    :catch_14
    move-object v0, v1

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 13
    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    throw p0

    .line 11
    :catch_1b
    :goto_1b
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static zze(Ljava/io/File;)Z
    .registers 5

    .line 23
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 25
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdre;->zze(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 29
    :cond_1e
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static zzf(Ljava/io/File;)[B
    .registers 3

    const/4 v0, 0x0

    .line 31
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1a
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    .line 32
    :try_start_6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->toByteArray()[B

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_1b
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_12
    move-exception p0

    move-object v0, v1

    goto :goto_16

    :catchall_15
    move-exception p0

    .line 38
    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 39
    throw p0

    :catch_1a
    move-object v1, v0

    .line 36
    :catch_1b
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method
