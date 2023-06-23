.class final Lcom/google/android/gms/measurement/internal/zzfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Ljava/net/URL;

.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzfe;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfc;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfe;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzfe;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zza:Ljava/net/URL;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzb:[B

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzc:Lcom/google/android/gms/measurement/internal/zzfe;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzd:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zze:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzc()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    :try_start_9
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zza:Ljava/net/URL;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_105
    .catchall {:try_start_9 .. :try_end_11} :catchall_ca

    .line 17
    :try_start_11
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zze:Ljava/util/Map;

    if-eqz v4, :cond_3b

    .line 18
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zze:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 21
    :cond_3b
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzb:[B

    if-eqz v4, :cond_88

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzki;->zzg()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzb:[B

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzc([B)[B

    move-result-object v4

    .line 23
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v5

    const-string v6, "Uploading data. size"

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    .line 24
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    .line 25
    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 27
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 28
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_75} :catch_c7
    .catchall {:try_start_11 .. :try_end_75} :catchall_c4

    .line 29
    :try_start_75
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 30
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7b} :catch_82
    .catchall {:try_start_75 .. :try_end_7b} :catchall_7c

    goto :goto_88

    :catchall_7c
    move-exception v4

    move-object v10, v1

    move-object v2, v4

    move-object v1, v5

    goto/16 :goto_ce

    :catch_82
    move-exception v4

    move-object v10, v1

    move-object v8, v4

    move-object v1, v5

    goto/16 :goto_109

    .line 32
    :cond_88
    :goto_88
    :try_start_88
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8c} :catch_c7
    .catchall {:try_start_88 .. :try_end_8c} :catchall_c4

    .line 33
    :try_start_8c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_bf
    .catchall {:try_start_8c .. :try_end_90} :catchall_ba

    .line 34
    :try_start_90
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(Lcom/google/android/gms/measurement/internal/zzfc;Ljava/net/HttpURLConnection;)[B

    move-result-object v10
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_96} :catch_b6
    .catchall {:try_start_90 .. :try_end_96} :catchall_b1

    if-eqz v3, :cond_9b

    .line 36
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 37
    :cond_9b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzd:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzc:Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfe;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzff;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void

    :catchall_b1
    move-exception v4

    move-object v2, v4

    move v7, v8

    move-object v10, v11

    goto :goto_cf

    :catch_b6
    move-exception v4

    move v7, v8

    move-object v10, v11

    goto :goto_c2

    :catchall_ba
    move-exception v4

    move-object v10, v1

    move-object v2, v4

    move v7, v8

    goto :goto_cf

    :catch_bf
    move-exception v4

    move-object v10, v1

    move v7, v8

    :goto_c2
    move-object v8, v4

    goto :goto_10a

    :catchall_c4
    move-exception v4

    move-object v10, v1

    goto :goto_cd

    :catch_c7
    move-exception v4

    move-object v10, v1

    goto :goto_108

    :catchall_ca
    move-exception v4

    move-object v3, v1

    move-object v10, v3

    :goto_cd
    move-object v2, v4

    :goto_ce
    const/4 v7, 0x0

    :goto_cf
    if-eqz v1, :cond_e9

    .line 55
    :try_start_d1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d5

    goto :goto_e9

    :catch_d5
    move-exception v1

    .line 58
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzd:Ljava/lang/String;

    .line 60
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 61
    invoke-virtual {v4, v0, v5, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e9
    :goto_e9
    if-eqz v3, :cond_ee

    .line 63
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    :cond_ee
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzd:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzc:Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfe;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzff;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    .line 66
    throw v2

    :catch_105
    move-exception v4

    move-object v3, v1

    move-object v10, v3

    :goto_108
    move-object v8, v4

    :goto_109
    const/4 v7, 0x0

    :goto_10a
    if-eqz v1, :cond_124

    .line 42
    :try_start_10c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_110

    goto :goto_124

    :catch_110
    move-exception v1

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzd:Ljava/lang/String;

    .line 47
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 48
    invoke-virtual {v2, v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_124
    :goto_124
    if-eqz v3, :cond_129

    .line 50
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_129
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzd:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzc:Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfe;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzff;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void
.end method
