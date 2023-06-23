.class public final Lcom/google/android/gms/internal/ads/zzbd;
.super Lcom/google/android/gms/internal/ads/zzar;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzcv:Lcom/google/android/gms/internal/ads/zzbf;

.field private final zzcw:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(Lcom/google/android/gms/internal/ads/zzbf;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbf;)V
    .registers 2

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(Lcom/google/android/gms/internal/ads/zzbf;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbf;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzar;-><init>()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzcv:Lcom/google/android/gms/internal/ads/zzbf;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzcw:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static zza(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_9

    .line 91
    :catch_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method private static zza(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzu;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    new-instance v4, Lcom/google/android/gms/internal/ads/zzu;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_48
    return-object v0
.end method

.method private static zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/zzaa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/ads/zzl;
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->zzg()[B

    move-result-object p1

    if-eqz p1, :cond_3d

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 97
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "application/x-www-form-urlencoded; charset="

    const-string v2, "UTF-8"

    .line 101
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_25
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 102
    :goto_2b
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2e
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 105
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_3d
    return-void
.end method

.method static synthetic zzb(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    .line 107
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbd;->zza(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaa;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzbb;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/ads/zzl;
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzcv:Lcom/google/android/gms/internal/ads/zzbf;

    if-eqz p2, :cond_3b

    .line 14
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3a

    .line 16
    new-instance p1, Ljava/io/IOException;

    const-string p2, "URL blocked by rewriter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_36

    :cond_30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_36
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    move-object v0, p2

    .line 18
    :cond_3b
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 22
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->zzi()I

    move-result v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 27
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    .line 29
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 30
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v4, "https"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    :try_start_68
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_70
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 38
    :cond_86
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->getMethod()I

    move-result p2

    packed-switch p2, :pswitch_data_12e

    .line 62
    new-instance p1, Ljava/lang/IllegalStateException;

    goto/16 :goto_11f

    :pswitch_91
    const-string p2, "PATCH"

    .line 59
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 60
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbd;->zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/zzaa;)V

    goto :goto_c9

    :pswitch_9a
    const-string p2, "TRACE"

    .line 57
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_c9

    :pswitch_a0
    const-string p2, "OPTIONS"

    .line 55
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_c9

    :pswitch_a6
    const-string p2, "HEAD"

    .line 53
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_c9

    :pswitch_ac
    const-string p2, "DELETE"

    .line 45
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_c9

    :pswitch_b2
    const-string p2, "PUT"

    .line 50
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbd;->zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/zzaa;)V

    goto :goto_c9

    :pswitch_bb
    const-string p2, "POST"

    .line 47
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 48
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbd;->zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/zzaa;)V

    goto :goto_c9

    :pswitch_c4
    const-string p2, "GET"

    .line 43
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 63
    :goto_c9
    :pswitch_c9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_117

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->getMethod()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e9

    const/16 p1, 0x64

    if-gt p1, p2, :cond_df

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_e9

    :cond_df
    const/16 p1, 0xcc

    if-eq p2, p1, :cond_e9

    const/16 p1, 0x130

    if-eq p2, p1, :cond_e9

    const/4 p1, 0x1

    goto :goto_ea

    :cond_e9
    const/4 p1, 0x0

    :goto_ea
    if-nez p1, :cond_fd

    .line 69
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbb;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbd;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbb;-><init>(ILjava/util/List;)V
    :try_end_f9
    .catchall {:try_start_68 .. :try_end_f9} :catchall_125

    .line 70
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 73
    :cond_fd
    :try_start_fd
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbb;

    .line 74
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbd;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbg;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/zzbg;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {p1, p2, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbb;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_113
    .catchall {:try_start_fd .. :try_end_113} :catchall_114

    return-object p1

    :catchall_114
    move-exception p1

    const/4 v2, 0x1

    goto :goto_126

    .line 65
    :cond_117
    :try_start_117
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_11f
    const-string p2, "Unknown method type."

    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_125
    .catchall {:try_start_117 .. :try_end_125} :catchall_125

    :catchall_125
    move-exception p1

    :goto_126
    if-nez v2, :cond_12b

    .line 78
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 79
    :cond_12b
    goto :goto_12d

    :goto_12c
    throw p1

    :goto_12d
    goto :goto_12c

    :pswitch_data_12e
    .packed-switch -0x1
        :pswitch_c9
        :pswitch_c4
        :pswitch_bb
        :pswitch_b2
        :pswitch_ac
        :pswitch_a6
        :pswitch_a0
        :pswitch_9a
        :pswitch_91
    .end packed-switch
.end method
