.class public final Lcom/google/android/gms/internal/ads/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.2.0"


# direct methods
.method private static zza(I)I
    .registers 5

    const/16 v0, 0x201

    if-eq p0, v0, :cond_32

    const/16 v0, 0x202

    if-eq p0, v0, :cond_30

    const/16 v0, 0x301

    if-eq p0, v0, :cond_32

    packed-switch p0, :pswitch_data_34

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown signature algorithm: 0x"

    int-to-long v2, p0

    .line 363
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    :cond_27
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2c
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    :pswitch_30
    const/4 p0, 0x2

    return p0

    :cond_32
    :pswitch_32
    const/4 p0, 0x1

    return p0

    :pswitch_data_34
    .packed-switch 0x101
        :pswitch_32
        :pswitch_30
        :pswitch_32
        :pswitch_30
    .end packed-switch
.end method

.method private static zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_45

    .line 412
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_3d

    .line 415
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_18

    .line 418
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 416
    :cond_18
    new-instance v1, Ljava/io/IOException;

    .line 417
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v2, 0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remaining: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 410
    :cond_45
    new-instance v0, Ljava/io/IOException;

    .line 411
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v1, 0x5d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zza(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    if-ltz p1, :cond_2f

    .line 395
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 396
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt p1, v1, :cond_29

    if-gt p1, v0, :cond_29

    .line 400
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 401
    :try_start_12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 402
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 403
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_24

    .line 405
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1

    :catchall_24
    move-exception p1

    .line 407
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 408
    throw p1

    .line 399
    :cond_29
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    .line 394
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 6

    const/16 p1, 0x8

    if-lt p2, p1, :cond_61

    .line 374
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 375
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_40

    .line 377
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 378
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    .line 379
    :try_start_17
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 380
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 381
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 382
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 383
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_35

    .line 385
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 386
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 387
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_35
    move-exception p1

    .line 389
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 390
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 391
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 392
    throw p1

    .line 376
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 p1, 0x29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "end > capacity: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 p1, 0x26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "end < start: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 8"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(I[BI)V
    .registers 4

    int-to-byte p2, p0

    const/4 v0, 0x1

    .line 428
    aput-byte p2, p1, v0

    ushr-int/lit8 p2, p0, 0x8

    int-to-byte p2, p2

    const/4 v0, 0x2

    .line 429
    aput-byte p2, p1, v0

    ushr-int/lit8 p2, p0, 0x10

    int-to-byte p2, p2

    const/4 v0, 0x3

    .line 430
    aput-byte p2, p1, v0

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 p2, 0x4

    .line 431
    aput-byte p0, p1, p2

    return-void
.end method

.method private static zza(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 157
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 158
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzb;->zzb(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 163
    :cond_15
    :goto_15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    const/16 v11, 0x8

    const/16 v12, 0x301

    const/16 v13, 0x202

    const/16 v14, 0x201

    const/4 v15, 0x1

    if-eqz v10, :cond_d8

    add-int/lit8 v8, v8, 0x1

    .line 165
    :try_start_26
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 166
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lt v6, v11, :cond_b4

    .line 168
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v6, v14, :cond_46

    if-eq v6, v13, :cond_46

    if-eq v6, v12, :cond_46

    packed-switch v6, :pswitch_data_318

    const/4 v11, 0x0

    goto :goto_47

    :cond_46
    :pswitch_46
    const/4 v11, 0x1

    :goto_47
    if-nez v11, :cond_4a

    goto :goto_15

    :cond_4a
    if-eq v7, v4, :cond_ac

    .line 178
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzb;->zza(I)I

    move-result v11

    .line 179
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzb;->zza(I)I

    move-result v12
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_54} :catch_be
    .catch Ljava/nio/BufferUnderflowException; {:try_start_26 .. :try_end_54} :catch_bc

    const-string v13, "Unknown digestAlgorithm2: "

    const/16 v14, 0x25

    const/4 v5, 0x2

    if-eq v11, v15, :cond_8e

    if-ne v11, v5, :cond_77

    if-eq v12, v15, :cond_aa

    if-ne v12, v5, :cond_62

    goto :goto_a9

    .line 189
    :cond_62
    :try_start_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown digestAlgorithm1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8e
    if-eq v12, v15, :cond_a9

    if-ne v12, v5, :cond_94

    const/4 v15, -0x1

    goto :goto_aa

    .line 185
    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a9
    :goto_a9
    const/4 v15, 0x0

    :cond_aa
    :goto_aa
    if-lez v15, :cond_15

    .line 193
    :cond_ac
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzb;->zzb(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    move-object v9, v5

    move v7, v6

    goto/16 :goto_15

    .line 167
    :cond_b4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature record too short"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_bc} :catch_be
    .catch Ljava/nio/BufferUnderflowException; {:try_start_62 .. :try_end_bc} :catch_bc

    :catch_bc
    move-exception v0

    goto :goto_bf

    :catch_be
    move-exception v0

    .line 196
    :goto_bf
    new-instance v1, Ljava/lang/SecurityException;

    const/16 v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to parse signature record #"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d8
    if-ne v7, v4, :cond_ec

    if-nez v8, :cond_e4

    .line 199
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_e4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No supported signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ec
    const-string v1, "Unknown signature algorithm: 0x"

    if-eq v7, v14, :cond_11d

    if-eq v7, v13, :cond_11d

    if-eq v7, v12, :cond_11a

    packed-switch v7, :pswitch_data_324

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    int-to-long v2, v7

    .line 207
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10d

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_113

    :cond_10d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_113
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_117
    const-string v4, "RSA"

    goto :goto_11f

    :cond_11a
    const-string v4, "DSA"

    goto :goto_11f

    :cond_11d
    const-string v4, "EC"

    :goto_11f
    if-eq v7, v14, :cond_199

    if-eq v7, v13, :cond_191

    if-eq v7, v12, :cond_189

    packed-switch v7, :pswitch_data_330

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    int-to-long v2, v7

    .line 220
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13e

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_144

    :cond_13e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_144
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_148
    const-string v1, "SHA512withRSA"

    const/4 v5, 0x0

    .line 215
    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_1a0

    :pswitch_150
    const/4 v5, 0x0

    const-string v1, "SHA256withRSA"

    .line 214
    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_1a0

    .line 213
    :pswitch_158
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    sget-object v19, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v20, 0x40

    const/16 v21, 0x1

    const-string v17, "SHA-512"

    const-string v18, "MGF1"

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v5, "SHA512withRSA/PSS"

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_187

    .line 212
    :pswitch_170
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    sget-object v19, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v20, 0x20

    const/16 v21, 0x1

    const-string v17, "SHA-256"

    const-string v18, "MGF1"

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v5, "SHA256withRSA/PSS"

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    :goto_187
    const/4 v5, 0x0

    goto :goto_1a0

    :cond_189
    const-string v1, "SHA256withDSA"

    const/4 v5, 0x0

    .line 218
    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_1a0

    :cond_191
    const/4 v5, 0x0

    const-string v1, "SHA512withECDSA"

    .line 217
    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_1a0

    :cond_199
    const/4 v5, 0x0

    const-string v1, "SHA256withECDSA"

    .line 216
    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 222
    :goto_1a0
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 223
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    .line 225
    :try_start_1a8
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 226
    invoke-virtual {v4, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 227
    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 228
    invoke-virtual {v8, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v1, :cond_1c1

    .line 230
    invoke-virtual {v8, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 231
    :cond_1c1
    invoke-virtual {v8, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 232
    invoke-virtual {v8, v9}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_1c8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a8 .. :try_end_1c8} :catch_2ee
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1a8 .. :try_end_1c8} :catch_2ec
    .catch Ljava/security/InvalidKeyException; {:try_start_1a8 .. :try_end_1c8} :catch_2ea
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1a8 .. :try_end_1c8} :catch_2e8
    .catch Ljava/security/SignatureException; {:try_start_1a8 .. :try_end_1c8} :catch_2e6

    if-eqz v1, :cond_2d6

    .line 239
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 240
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 243
    :cond_1d7
    :goto_1d7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_21e

    add-int/2addr v6, v15

    .line 245
    :try_start_1de
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 246
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-lt v9, v11, :cond_1fa

    .line 248
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 249
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v9, v7, :cond_1d7

    .line 251
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzb;->zzb(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    goto :goto_1d7

    .line 247
    :cond_1fa
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Record too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_202
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_202} :catch_204
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1de .. :try_end_202} :catch_202

    :catch_202
    move-exception v0

    goto :goto_205

    :catch_204
    move-exception v0

    .line 254
    :goto_205
    new-instance v1, Ljava/io/IOException;

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to parse digest record #"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 255
    :cond_21e
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ce

    .line 257
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzb;->zza(I)I

    move-result v1

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_251

    .line 260
    invoke-static {v3, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_23d

    goto :goto_251

    .line 261
    :cond_23d
    new-instance v0, Ljava/lang/SecurityException;

    .line 262
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzb;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_251
    :goto_251
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 266
    :goto_25b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_296

    add-int/2addr v3, v15

    .line 268
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzb;->zzb(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 269
    :try_start_266
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v6, p2

    .line 270
    invoke-virtual {v6, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_273
    .catch Ljava/security/cert/CertificateException; {:try_start_266 .. :try_end_273} :catch_27c

    .line 274
    new-instance v7, Lcom/google/android/gms/internal/ads/zzg;

    invoke-direct {v7, v5, v4}, Lcom/google/android/gms/internal/ads/zzg;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 275
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25b

    :catch_27c
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/SecurityException;

    const/16 v2, 0x29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to decode certificate #"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 277
    :cond_296
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c6

    const/4 v0, 0x0

    .line 279
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 280
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 281
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2be

    .line 283
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 282
    :cond_2be
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Public key mismatch between certificate and signature record"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2c6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No certificates listed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_2ce
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_2d6
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " signature did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2e6
    move-exception v0

    goto :goto_2ef

    :catch_2e8
    move-exception v0

    goto :goto_2ef

    :catch_2ea
    move-exception v0

    goto :goto_2ef

    :catch_2ec
    move-exception v0

    goto :goto_2ef

    :catch_2ee
    move-exception v0

    .line 235
    :goto_2ef
    new-instance v1, Ljava/lang/SecurityException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to verify "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signature"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_316

    :goto_315
    throw v1

    :goto_316
    goto :goto_315

    nop

    :pswitch_data_318
    .packed-switch 0x101
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
    .end packed-switch

    :pswitch_data_324
    .packed-switch 0x101
        :pswitch_117
        :pswitch_117
        :pswitch_117
        :pswitch_117
    .end packed-switch

    :pswitch_data_330
    .packed-switch 0x101
        :pswitch_170
        :pswitch_158
        :pswitch_150
        :pswitch_148
    .end packed-switch
.end method

.method private static zza([I[Lcom/google/android/gms/internal/ads/zzc;)[[B
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 285
    array-length v2, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    const/4 v6, 0x0

    :goto_a
    const-wide/32 v9, 0x100000

    if-ge v6, v2, :cond_1e

    aget-object v11, v1, v6

    .line 286
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzc;->size()J

    move-result-wide v11

    add-long/2addr v11, v9

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    .line 287
    div-long/2addr v11, v9

    add-long/2addr v7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_1e
    const-wide/32 v11, 0x1fffff

    cmp-long v2, v7, v11

    if-gez v2, :cond_199

    long-to-int v2, v7

    .line 293
    array-length v6, v0

    new-array v6, v6, [[B

    const/4 v7, 0x0

    .line 294
    :goto_2a
    array-length v8, v0

    const/4 v11, 0x5

    const/4 v12, 0x1

    if-ge v7, v8, :cond_46

    .line 295
    aget v8, v0, v7

    .line 296
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzb;->zzc(I)I

    move-result v8

    mul-int v8, v8, v2

    add-int/2addr v8, v11

    .line 297
    new-array v8, v8, [B

    const/16 v11, 0x5a

    .line 298
    aput-byte v11, v8, v5

    .line 299
    invoke-static {v2, v8, v12}, Lcom/google/android/gms/internal/ads/zzb;->zza(I[BI)V

    .line 300
    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_46
    new-array v2, v11, [B

    const/16 v7, -0x5b

    aput-byte v7, v2, v5

    .line 305
    array-length v7, v0

    new-array v8, v7, [Ljava/security/MessageDigest;

    const/4 v13, 0x0

    .line 306
    :goto_50
    array-length v14, v0

    const-string v15, " digest not supported"

    if-ge v13, v14, :cond_73

    .line 307
    aget v14, v0, v13

    .line 308
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzb;->zzb(I)Ljava/lang/String;

    move-result-object v14

    .line 309
    :try_start_5b
    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v16

    aput-object v16, v8, v13
    :try_end_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5b .. :try_end_61} :catch_64

    add-int/lit8 v13, v13, 0x1

    goto :goto_50

    :catch_64
    move-exception v0

    .line 312
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 315
    :cond_73
    array-length v13, v1

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_77
    if-ge v14, v13, :cond_16c

    aget-object v11, v1, v14

    .line 317
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzc;->size()J

    move-result-wide v18

    move-wide/from16 v21, v3

    move/from16 v20, v16

    move-wide/from16 v24, v18

    move/from16 v18, v13

    move-wide/from16 v12, v24

    :goto_89
    cmp-long v19, v12, v3

    if-lez v19, :cond_14d

    .line 319
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    const/4 v3, 0x1

    .line 320
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzb;->zza(I[BI)V

    const/4 v3, 0x0

    :goto_97
    if-ge v3, v7, :cond_a4

    .line 322
    aget-object v9, v8, v3

    invoke-virtual {v9, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v3, v3, 0x1

    const-wide/32 v9, 0x100000

    goto :goto_97

    :cond_a4
    move-wide/from16 v9, v21

    .line 324
    :try_start_a6
    invoke-interface {v11, v8, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzc;->zza([Ljava/security/MessageDigest;JI)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_128

    const/4 v3, 0x0

    .line 328
    :goto_aa
    array-length v1, v0

    if-ge v3, v1, :cond_107

    .line 329
    aget v1, v0, v3

    move-object/from16 v19, v2

    .line 330
    aget-object v2, v6, v3

    .line 332
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzb;->zzc(I)I

    move-result v1

    move/from16 v21, v7

    .line 333
    aget-object v7, v8, v3

    move-object/from16 v22, v8

    move/from16 v8, v20

    mul-int v20, v8, v1

    move-object/from16 v23, v11

    const/16 v17, 0x5

    add-int/lit8 v11, v20, 0x5

    .line 335
    invoke-virtual {v7, v2, v11, v1}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v2

    if-ne v2, v1, :cond_da

    add-int/lit8 v3, v3, 0x1

    move/from16 v20, v8

    move-object/from16 v2, v19

    move/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v11, v23

    goto :goto_aa

    .line 337
    :cond_da
    new-instance v0, Ljava/lang/RuntimeException;

    .line 338
    invoke-virtual {v7}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected output size of "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " digest: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_107
    move-object/from16 v19, v2

    move/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v11

    move/from16 v8, v20

    const/16 v17, 0x5

    int-to-long v1, v4

    add-long v3, v9, v1

    sub-long/2addr v12, v1

    add-int/lit8 v20, v8, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v8, v22

    const-wide/32 v9, 0x100000

    move-wide/from16 v21, v3

    const-wide/16 v3, 0x0

    goto/16 :goto_89

    :catch_128
    move-exception v0

    move/from16 v8, v20

    move-object v1, v0

    .line 327
    new-instance v0, Ljava/security/DigestException;

    const/16 v2, 0x3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to digest chunk #"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of section #"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_14d
    move-object/from16 v19, v2

    move/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v8, v20

    const/16 v17, 0x5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v16, v8

    move/from16 v13, v18

    move-object/from16 v8, v22

    const-wide/16 v3, 0x0

    const-wide/32 v9, 0x100000

    const/4 v11, 0x5

    const/4 v12, 0x1

    goto/16 :goto_77

    .line 346
    :cond_16c
    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v5, 0x0

    .line 347
    :goto_170
    array-length v2, v0

    if-ge v5, v2, :cond_198

    .line 348
    aget v2, v0, v5

    .line 349
    aget-object v3, v6, v5

    .line 350
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzb;->zzb(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    :try_start_17b
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_17f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17b .. :try_end_17f} :catch_188

    .line 355
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 356
    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_170

    :catch_188
    move-exception v0

    move-object v1, v0

    .line 354
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_198
    return-object v1

    .line 291
    :cond_199
    new-instance v0, Ljava/security/DigestException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many chunks: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    goto :goto_1b3

    :goto_1b2
    throw v0

    :goto_1b3
    goto :goto_1b2
.end method

.method public static zza(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzh;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzi;->zza(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_270

    .line 12
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 13
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v2, 0x14

    sub-long v2, v9, v2

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-ltz v7, :cond_36

    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 18
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const v3, 0x504b0607

    if-ne v2, v3, :cond_36

    const/4 v2, 0x1

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    if-nez v2, :cond_268

    .line 22
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzi;->zzc(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    cmp-long v2, v7, v9

    if-gez v2, :cond_247

    .line 25
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzi;->zzd(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v2, v7

    cmp-long v12, v2, v9

    if-nez v12, :cond_23f

    const-wide/16 v2, 0x20

    cmp-long v12, v7, v2

    if-ltz v12, :cond_226

    const/16 v2, 0x18

    .line 34
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 35
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    int-to-long v12, v12

    sub-long v12, v7, v12

    invoke-virtual {v1, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 37
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    invoke-virtual {v1, v12, v13, v14}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v12, 0x8

    .line 38
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v13

    const-wide v15, 0x20676953204b5041L

    cmp-long v17, v13, v15

    if-nez v17, :cond_21e

    const/16 v13, 0x10

    .line 39
    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v13

    const-wide v15, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v17, v13, v15

    if-nez v17, :cond_21e

    .line 41
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v13

    .line 42
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v2, v3

    cmp-long v15, v13, v2

    if-ltz v15, :cond_204

    const-wide/32 v2, 0x7ffffff7

    cmp-long v15, v13, v2

    if-gtz v15, :cond_204

    const-wide/16 v2, 0x8

    add-long/2addr v2, v13

    long-to-int v3, v2

    move-wide v15, v13

    int-to-long v12, v3

    sub-long v12, v7, v12

    cmp-long v14, v12, v4

    if-ltz v14, :cond_1eb

    .line 48
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 49
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v1, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 51
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    invoke-virtual {v1, v4, v5, v14}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 52
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    cmp-long v14, v4, v15

    if-nez v14, :cond_1c9

    .line 55
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 57
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 58
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 61
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v5, :cond_1c1

    .line 63
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/16 v5, 0x18

    sub-int/2addr v3, v5

    const/16 v2, 0x8

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 65
    :goto_fe
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1b9

    add-int/2addr v6, v0

    .line 67
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v2, :cond_1a0

    .line 69
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4
    :try_end_10f
    .catchall {:try_start_9 .. :try_end_10f} :catchall_292

    const-wide/16 v14, 0x4

    const-string v0, " size out of range: "

    const-string v2, "APK Signing Block entry #"

    cmp-long v17, v4, v14

    if-ltz v17, :cond_183

    const-wide/32 v14, 0x7fffffff

    cmp-long v17, v4, v14

    if-gtz v17, :cond_183

    long-to-int v5, v4

    .line 73
    :try_start_121
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v5

    .line 74
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-gt v5, v14, :cond_15a

    .line 77
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v2, 0x7109871a

    if-ne v0, v2, :cond_153

    add-int/lit8 v5, v5, -0x4

    .line 79
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 84
    new-instance v0, Lcom/google/android/gms/internal/ads/zze;

    const/4 v2, 0x0

    move-object v3, v0

    move-wide v5, v12

    move-object v12, v2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zze;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zza;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/channels/FileChannel;Lcom/google/android/gms/internal/ads/zze;)[[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 88
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14f
    .catchall {:try_start_121 .. :try_end_14f} :catchall_292

    .line 90
    :try_start_14f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_152

    :catch_152
    return-object v0

    .line 80
    :cond_153
    :try_start_153
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    const/16 v2, 0x8

    goto :goto_fe

    .line 75
    :cond_15a
    new-instance v4, Lcom/google/android/gms/internal/ads/zzh;

    .line 76
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v7, 0x5b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", available: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v4

    .line 71
    :cond_183
    new-instance v3, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v7, 0x4c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_1a0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x46

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1b9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const-string v2, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1c9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v4, v15

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1eb
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "APK Signing Block offset out of range: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_204
    move-wide v4, v13

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "APK Signing Block size out of range: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_21e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const-string v2, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_226
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x57

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_23f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const-string v2, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_247
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x7a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ZIP Central Directory offset out of range: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". ZIP End of Central Directory offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_268
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const-string v2, "ZIP64 APK not supported"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_270
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    .line 9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const/16 v4, 0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Not an APK file: ZIP End of Central Directory record not found in file with "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_292
    .catchall {:try_start_153 .. :try_end_292} :catchall_292

    :catchall_292
    move-exception v0

    .line 95
    :try_start_293
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_296
    .catch Ljava/io/IOException; {:try_start_293 .. :try_end_296} :catch_296

    .line 98
    :catch_296
    goto :goto_298

    :goto_297
    throw v0

    :goto_298
    goto :goto_297
.end method

.method private static zza(Ljava/nio/channels/FileChannel;Lcom/google/android/gms/internal/ads/zze;)[[Ljava/security/cert/X509Certificate;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_a
    const-string v2, "X.509"

    .line 102
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2
    :try_end_10
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_10} :catch_12c

    .line 106
    :try_start_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zze;->zza(Lcom/google/android/gms/internal/ads/zze;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_123

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 110
    :goto_1a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_51

    add-int/lit8 v5, v5, 0x1

    .line 112
    :try_start_22
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 113
    invoke-static {v6, v0, v2}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 114
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2d} :catch_32
    .catch Ljava/nio/BufferUnderflowException; {:try_start_22 .. :try_end_2d} :catch_30
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_2d} :catch_2e

    goto :goto_1a

    :catch_2e
    move-exception v0

    goto :goto_33

    :catch_30
    move-exception v0

    goto :goto_33

    :catch_32
    move-exception v0

    .line 117
    :goto_33
    new-instance v1, Ljava/lang/SecurityException;

    const/16 v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to parse/verify signer #"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " block"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_51
    if-lez v5, :cond_11b

    .line 120
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_113

    .line 123
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zze;->zzb(Lcom/google/android/gms/internal/ads/zze;)J

    move-result-wide v2

    .line 124
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zze;->zzc(Lcom/google/android/gms/internal/ads/zze;)J

    move-result-wide v11

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zze;->zzd(Lcom/google/android/gms/internal/ads/zze;)J

    move-result-wide v13

    .line 126
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zze;->zze(Lcom/google/android/gms/internal/ads/zze;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 128
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10b

    .line 130
    new-instance v16, Lcom/google/android/gms/internal/ads/zzf;

    const-wide/16 v7, 0x0

    move-object/from16 v5, v16

    move-object/from16 v6, p0

    move-wide v9, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzf;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 131
    new-instance v17, Lcom/google/android/gms/internal/ads/zzf;

    sub-long v9, v13, v11

    move-object/from16 v5, v17

    move-wide v7, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzf;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 132
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 133
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 134
    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzi;->zza(Ljava/nio/ByteBuffer;J)V

    .line 135
    new-instance v2, Lcom/google/android/gms/internal/ads/zzd;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzd;-><init>(Ljava/nio/ByteBuffer;)V

    .line 136
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    new-array v5, v3, [I

    .line 138
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_a5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_ba

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 139
    aput v8, v5, v7

    add-int/2addr v7, v9

    goto :goto_a5

    :cond_ba
    const/4 v6, 0x3

    :try_start_bb
    new-array v6, v6, [Lcom/google/android/gms/internal/ads/zzc;

    aput-object v16, v6, v4

    aput-object v17, v6, v9

    const/4 v7, 0x2

    aput-object v2, v6, v7

    .line 143
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzb;->zza([I[Lcom/google/android/gms/internal/ads/zzc;)[[B

    move-result-object v2
    :try_end_c8
    .catch Ljava/security/DigestException; {:try_start_bb .. :try_end_c8} :catch_102

    :goto_c8
    if-ge v4, v3, :cond_f5

    .line 148
    aget v6, v5, v4

    .line 149
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 150
    aget-object v8, v2, v4

    .line 151
    invoke-static {v7, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_e1

    add-int/lit8 v4, v4, 0x1

    goto :goto_c8

    .line 152
    :cond_e1
    new-instance v0, Ljava/lang/SecurityException;

    .line 153
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzb;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " digest of contents did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_f5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/X509Certificate;

    return-object v0

    :catch_102
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to compute digest(s) of contents"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 129
    :cond_10b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No digests provided"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_113
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No content digests found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_11b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signers found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_123
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to read list of signers"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_12c
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_136

    :goto_135
    throw v1

    :goto_136
    goto :goto_135
.end method

.method private static zzb(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const-string p0, "SHA-512"

    return-object p0

    .line 367
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown content digest algorthm: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const-string p0, "SHA-256"

    return-object p0
.end method

.method private static zzb(Ljava/nio/ByteBuffer;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_37

    .line 422
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_12

    .line 425
    new-array v0, v0, [B

    .line 426
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    .line 423
    :cond_12
    new-instance v1, Ljava/io/IOException;

    .line 424
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v2, 0x5a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", available: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_37
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzc(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/16 p0, 0x40

    return p0

    .line 371
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown content digest algorthm: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/16 p0, 0x20

    return p0
.end method
