.class public Lcom/google/android/gms/internal/ads/zzau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzx;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final zzcf:Lcom/google/android/gms/internal/ads/zzbe;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzcg:Lcom/google/android/gms/internal/ads/zzar;

.field private final zzch:Lcom/google/android/gms/internal/ads/zzat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 134
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaq;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzau;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzar;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzat;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzat;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzau;-><init>(Lcom/google/android/gms/internal/ads/zzar;Lcom/google/android/gms/internal/ads/zzat;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzar;Lcom/google/android/gms/internal/ads/zzat;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzau;->zzcg:Lcom/google/android/gms/internal/ads/zzar;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzau;->zzcf:Lcom/google/android/gms/internal/ads/zzbe;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzau;->zzch:Lcom/google/android/gms/internal/ads/zzat;

    return-void
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzao;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzao;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzao;
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->zzj()Lcom/google/android/gms/internal/ads/zzan;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->zzi()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 100
    :try_start_b
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzan;->zza(Lcom/google/android/gms/internal/ads/zzao;)V
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/zzao; {:try_start_b .. :try_end_e} :catch_22

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    .line 106
    throw p2
.end method

.method private final zza(Ljava/io/InputStream;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/ads/zzam;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzau;->zzch:Lcom/google/android/gms/internal/ads/zzat;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzbi;-><init>(Lcom/google/android/gms/internal/ads/zzat;I)V

    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3a

    .line 113
    :try_start_d
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzau;->zzch:Lcom/google/android/gms/internal/ads/zzat;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzat;->zzf(I)[B

    move-result-object v2

    .line 114
    :goto_15
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 115
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbi;->write([BII)V

    goto :goto_15

    .line 116
    :cond_20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbi;->toByteArray()[B

    move-result-object v3
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_38

    if-eqz p1, :cond_2f

    .line 118
    :try_start_26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2f

    :catch_2a
    new-array p1, v1, [Ljava/lang/Object;

    .line 121
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaq;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzau;->zzch:Lcom/google/android/gms/internal/ads/zzat;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zza([B)V

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbi;->close()V

    return-object v3

    :catchall_38
    move-exception v3

    goto :goto_40

    .line 112
    :cond_3a
    :try_start_3a
    new-instance v3, Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzam;-><init>()V

    throw v3
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_38

    :goto_40
    if-eqz p1, :cond_4b

    .line 127
    :try_start_42
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4b

    :catch_46
    new-array p1, v1, [Ljava/lang/Object;

    .line 130
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaq;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzau;->zzch:Lcom/google/android/gms/internal/ads/zzat;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zza([B)V

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbi;->close()V

    .line 133
    goto :goto_55

    :goto_54
    throw v3

    :goto_55
    goto :goto_54
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/internal/ads/zzaa;)Lcom/google/android/gms/internal/ads/zzy;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzao;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 11
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x0

    .line 13
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaa;->zzf()Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_3e

    .line 16
    :cond_1a
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 17
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzn;->zzr:Ljava/lang/String;

    if-eqz v11, :cond_2a

    const-string v11, "If-None-Match"

    .line 18
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzn;->zzr:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2a
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzn;->zzt:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_3d

    const-string v11, "If-Modified-Since"

    .line 20
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzn;->zzt:J

    .line 21
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzbc;->zzb(J)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    move-object v0, v10

    .line 25
    :goto_3e
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzau;->zzcg:Lcom/google/android/gms/internal/ads/zzar;

    invoke-virtual {v10, v2, v0}, Lcom/google/android/gms/internal/ads/zzar;->zza(Lcom/google/android/gms/internal/ads/zzaa;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v10
    :try_end_44
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_44} :catch_22b
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_44} :catch_20a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_44} :catch_192

    .line 26
    :try_start_44
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbb;->getStatusCode()I

    move-result v12

    .line 27
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbb;->zzq()Ljava/util/List;

    move-result-object v5

    const/16 v0, 0x130

    if-ne v12, v0, :cond_116

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaa;->zzf()Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v0

    if-nez v0, :cond_6a

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzy;

    const/16 v14, 0x130

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v17, v11, v3

    move-object v13, v0

    move-object/from16 v19, v5

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzy;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    .line 35
    :cond_6a
    new-instance v11, Ljava/util/TreeSet;

    sget-object v12, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v11, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 36
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8f

    .line 37
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzu;

    .line 38
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzu;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 40
    :cond_8f
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzn;->zzx:Ljava/util/List;

    if-eqz v13, :cond_c0

    .line 42
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzn;->zzx:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_ff

    .line 43
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzn;->zzx:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_a6
    :goto_a6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ff

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzu;

    .line 44
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzu;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a6

    .line 45
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 47
    :cond_c0
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzn;->zzw:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_ff

    .line 48
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzn;->zzw:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d2
    :goto_d2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ff

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d2

    .line 50
    new-instance v15, Lcom/google/android/gms/internal/ads/zzu;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v8, v14}, Lcom/google/android/gms/internal/ads/zzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 54
    :cond_ff
    new-instance v8, Lcom/google/android/gms/internal/ads/zzy;

    const/16 v15, 0x130

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzn;->data:[B

    const/16 v17, 0x1

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v18, v13, v3

    move-object v14, v8

    move-object/from16 v16, v0

    move-object/from16 v20, v12

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzy;-><init>(I[BZJLjava/util/List;)V

    return-object v8

    .line 57
    :cond_116
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbb;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_125

    .line 60
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbb;->getContentLength()I

    move-result v8

    invoke-direct {v1, v0, v8}, Lcom/google/android/gms/internal/ads/zzau;->zza(Ljava/io/InputStream;I)[B

    move-result-object v0

    goto :goto_127

    :cond_125
    new-array v0, v9, [B
    :try_end_127
    .catch Ljava/net/SocketTimeoutException; {:try_start_44 .. :try_end_127} :catch_22b
    .catch Ljava/net/MalformedURLException; {:try_start_44 .. :try_end_127} :catch_20a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_127} :catch_18d

    :goto_127
    move-object v8, v0

    .line 62
    :try_start_128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v13, v3

    .line 64
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzau;->DEBUG:Z

    if-nez v0, :cond_137

    const-wide/16 v15, 0xbb8

    cmp-long v0, v13, v15

    if-lez v0, :cond_169

    :cond_137
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v9

    .line 66
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v6

    if-eqz v8, :cond_14c

    .line 67
    array-length v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_14e

    :cond_14c
    const-string v13, "null"

    :goto_14e
    aput-object v13, v11, v7

    const/4 v13, 0x3

    .line 68
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x4

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaa;->zzj()Lcom/google/android/gms/internal/ads/zzan;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/zzan;->zzc()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    .line 70
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzaq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_169
    const/16 v0, 0xc8

    if-lt v12, v0, :cond_181

    const/16 v0, 0x12b

    if-gt v12, v0, :cond_181

    .line 73
    new-instance v0, Lcom/google/android/gms/internal/ads/zzy;

    const/4 v14, 0x0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v3

    move-object v11, v0

    move-object v13, v8

    move-object/from16 v17, v5

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzy;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    .line 72
    :cond_181
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_187
    .catch Ljava/net/SocketTimeoutException; {:try_start_128 .. :try_end_187} :catch_22b
    .catch Ljava/net/MalformedURLException; {:try_start_128 .. :try_end_187} :catch_20a
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_187} :catch_187

    :catch_187
    move-exception v0

    move-object/from16 v17, v5

    move-object v13, v8

    move-object v8, v10

    goto :goto_197

    :catch_18d
    move-exception v0

    move-object/from16 v17, v5

    move-object v8, v10

    goto :goto_196

    :catch_192
    move-exception v0

    move-object/from16 v17, v5

    const/4 v8, 0x0

    :goto_196
    const/4 v13, 0x0

    :goto_197
    if-eqz v8, :cond_204

    .line 83
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbb;->getStatusCode()I

    move-result v0

    new-array v5, v7, [Ljava/lang/Object;

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaa;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Unexpected response code %d for %s"

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzaq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_1f8

    .line 87
    new-instance v5, Lcom/google/android/gms/internal/ads/zzy;

    const/4 v14, 0x0

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v6, v3

    move-object v11, v5

    move v12, v0

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzy;-><init>(I[BZJLjava/util/List;)V

    const/16 v6, 0x191

    if-eq v0, v6, :cond_1ec

    const/16 v6, 0x193

    if-ne v0, v6, :cond_1c9

    goto :goto_1ec

    :cond_1c9
    const/16 v2, 0x190

    if-lt v0, v2, :cond_1d8

    const/16 v2, 0x1f3

    if-le v0, v2, :cond_1d2

    goto :goto_1d8

    .line 92
    :cond_1d2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzr;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzr;-><init>(Lcom/google/android/gms/internal/ads/zzy;)V

    throw v0

    :cond_1d8
    :goto_1d8
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_1e6

    const/16 v2, 0x257

    if-gt v0, v2, :cond_1e6

    .line 94
    new-instance v0, Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzam;-><init>(Lcom/google/android/gms/internal/ads/zzy;)V

    throw v0

    .line 95
    :cond_1e6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzam;-><init>(Lcom/google/android/gms/internal/ads/zzy;)V

    throw v0

    .line 90
    :cond_1ec
    :goto_1ec
    new-instance v0, Lcom/google/android/gms/internal/ads/zzl;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzl;-><init>(Lcom/google/android/gms/internal/ads/zzy;)V

    const-string v5, "auth"

    invoke-static {v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzau;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzao;)V

    goto/16 :goto_8

    .line 96
    :cond_1f8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    const-string v5, "network"

    invoke-static {v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzau;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzao;)V

    goto/16 :goto_8

    .line 84
    :cond_204
    new-instance v2, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_20a
    move-exception v0

    .line 80
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Bad URL "

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaa;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_222

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_227

    :cond_222
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_227
    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 77
    :catch_22b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzap;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzap;-><init>()V

    const-string v5, "socket"

    invoke-static {v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzau;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzao;)V

    goto/16 :goto_8
.end method
