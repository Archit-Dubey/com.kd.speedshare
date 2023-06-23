.class public final Lcom/google/android/gms/measurement/internal/zzil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"


# direct methods
.method public static zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 9
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_32

    .line 11
    :try_start_e
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 13
    new-instance p0, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 14
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_2f

    .line 15
    :try_start_22
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2d

    .line 16
    :try_start_26
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 17
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    return-object v1

    :catchall_2d
    move-exception v1

    goto :goto_35

    :catchall_2f
    move-exception v1

    move-object p0, v0

    goto :goto_35

    :catchall_32
    move-exception v1

    move-object p0, v0

    move-object v2, p0

    :goto_35
    if-eqz v2, :cond_3a

    .line 20
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3a
    if-eqz p0, :cond_3f

    .line 22
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    .line 23
    :cond_3f
    throw v1
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_40} :catch_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_40} :catch_40

    :catch_40
    return-object v0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_28

    .line 30
    aget-object v3, p1, v2

    if-nez p0, :cond_18

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_20

    :cond_18
    if-nez p0, :cond_1c

    const/4 v3, 0x0

    goto :goto_20

    .line 35
    :cond_1c
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_20
    if-eqz v3, :cond_25

    .line 37
    aget-object p0, p2, v2

    return-object p0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method
