.class public final Lcom/google/android/gms/internal/ads/zzbez;
.super Lcom/google/android/gms/internal/ads/zzbes;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field private static final zzekq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzekr:Ljava/text/DecimalFormat;


# instance fields
.field private zzcz:Ljava/io/File;

.field private zzeks:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbez;->zzekq:Ljava/util/Set;

    .line 199
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbez;->zzekr:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdb;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbes;-><init>(Lcom/google/android/gms/internal/ads/zzbdb;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbez;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_11

    const-string p1, "Context.getCacheDir() returned null"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_11
    new-instance v0, Ljava/io/File;

    const-string v1, "admobVideoStreams"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_4c

    const-string p1, "Could not create preload cache directory at "

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_40
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_46
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    return-void

    .line 11
    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    .line 12
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_60

    :cond_5f
    return-void

    :cond_60
    :goto_60
    const-string p1, "Could not set cache file permissions at "

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_77

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7d

    :cond_77
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_7d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    return-void
.end method

.method private final zzd(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 197
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ".done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final abort()V
    .registers 2

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzeks:Z

    return-void
.end method

.method public final zzfm(Ljava/lang/String;)Z
    .registers 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 17
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_10

    const-string v0, "noCacheDir"

    .line 18
    invoke-virtual {v8, v9, v10, v0, v10}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 21
    :cond_10
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    if-nez v0, :cond_16

    const/4 v3, 0x0

    goto :goto_32

    .line 24
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    if-ge v2, v1, :cond_32

    aget-object v4, v0, v2

    .line 25
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    add-int/lit8 v3, v3, 0x1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 29
    :cond_32
    :goto_32
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzclu:Lcom/google/android/gms/internal/ads/zzaag;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_95

    .line 33
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    if-nez v0, :cond_4a

    :cond_48
    const/4 v0, 0x0

    goto :goto_88

    :cond_4a
    const-wide v1, 0x7fffffffffffffffL

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    move-object v5, v10

    const/4 v4, 0x0

    :goto_56
    if-ge v4, v3, :cond_73

    aget-object v6, v0, v4

    .line 38
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v12, ".done"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_70

    .line 39
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v7, v12, v1

    if-gez v7, :cond_70

    move-object v5, v6

    move-wide v1, v12

    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    :cond_73
    if-eqz v5, :cond_48

    .line 46
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 47
    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzbez;->zzd(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_88
    :goto_88
    if-nez v0, :cond_10

    const-string v0, "Unable to expire stream cache"

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    const-string v0, "expireFailed"

    .line 53
    invoke-virtual {v8, v9, v10, v0, v10}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 55
    :cond_95
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzfn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v12, Ljava/io/File;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    invoke-direct {v12, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    invoke-direct {v8, v12}, Lcom/google/android/gms/internal/ads/zzbez;->zzd(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 58
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_d8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 59
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "Stream cache hit at "

    .line 60
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c7

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    :cond_c7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_cd
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    return v13

    .line 63
    :cond_d8
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzbez;->zzcz:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_f8

    :cond_f2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    .line 64
    :goto_f8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbez;->zzekq:Ljava/util/Set;

    monitor-enter v1

    .line 65
    :try_start_fb
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbez;->zzekq:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    const-string v0, "Stream cache already in progress at "

    .line 66
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_114

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11a

    :cond_114
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_11a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inProgress"

    invoke-virtual {v8, v9, v0, v2, v10}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    monitor-exit v1

    return v11

    .line 69
    :cond_128
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbez;->zzekq:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit v1
    :try_end_12e
    .catchall {:try_start_fb .. :try_end_12e} :catchall_5bf

    const-string v15, "error"

    .line 74
    :try_start_130
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzli()Lcom/google/android/gms/internal/ads/zzbbq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzclz:Lcom/google/android/gms/internal/ads/zzaag;

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 78
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_149
    add-int/2addr v3, v13

    const/16 v4, 0x14

    if-gt v3, v4, :cond_511

    .line 81
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 82
    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 83
    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 84
    instance-of v6, v5, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_506

    .line 86
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 87
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbau;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbau;-><init>()V

    .line 88
    invoke-virtual {v6, v5, v10}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 89
    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 90
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 91
    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/net/HttpURLConnection;I)V

    .line 92
    div-int/lit8 v7, v7, 0x64
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_172} :catch_524
    .catch Ljava/lang/RuntimeException; {:try_start_130 .. :try_end_172} :catch_522

    const/4 v6, 0x3

    if-ne v7, v6, :cond_1ec

    :try_start_175
    const-string v4, "Location"

    .line 93
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1dd

    .line 96
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v2, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d5

    const-string v7, "http"

    .line 100
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b5

    const-string v7, "https"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b5

    .line 101
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported scheme: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1ab

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b1

    :cond_1ab
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1b1
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b5
    const-string v2, "Redirecting to "

    .line 102
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1c6

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1cc

    :cond_1c6
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_1cc
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v6

    goto/16 :goto_149

    .line 99
    :cond_1d5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1dd
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Location header in redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_1e5} :catch_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_175 .. :try_end_1e5} :catch_1e5

    :catch_1e5
    move-exception v0

    goto :goto_1e8

    :catch_1e7
    move-exception v0

    :goto_1e8
    move-object v2, v10

    :goto_1e9
    move-object v1, v14

    goto/16 :goto_52a

    .line 108
    :cond_1ec
    :try_start_1ec
    instance-of v1, v5, Ljava/net/HttpURLConnection;
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1ee} :catch_524
    .catch Ljava/lang/RuntimeException; {:try_start_1ec .. :try_end_1ee} :catch_522

    if-eqz v1, :cond_245

    .line 109
    :try_start_1f0
    move-object v1, v5

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_245

    const-string v15, "badUrl"

    const-string v0, "HTTP request failed. Code: "

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_213

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_218

    :cond_213
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_218} :catch_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_1f0 .. :try_end_218} :catch_1e5

    .line 113
    :goto_218
    :try_start_218
    new-instance v0, Ljava/io/IOException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HTTP status code "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_241
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_241} :catch_243
    .catch Ljava/lang/RuntimeException; {:try_start_218 .. :try_end_241} :catch_241

    :catch_241
    move-exception v0

    goto :goto_1e9

    :catch_243
    move-exception v0

    goto :goto_1e9

    .line 114
    :cond_245
    :try_start_245
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7
    :try_end_249
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_249} :catch_524
    .catch Ljava/lang/RuntimeException; {:try_start_245 .. :try_end_249} :catch_522

    if-gez v7, :cond_274

    :try_start_24b
    const-string v0, "Stream cache aborted, missing content-length header at "

    .line 116
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25c

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_262

    :cond_25c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_262
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentLengthMissing"

    invoke-virtual {v8, v9, v0, v1, v10}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbez;->zzekq:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_273
    .catch Ljava/io/IOException; {:try_start_24b .. :try_end_273} :catch_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_24b .. :try_end_273} :catch_1e5

    return v11

    .line 120
    :cond_274
    :try_start_274
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbez;->zzekr:Ljava/text/DecimalFormat;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaav;->zzclv:Lcom/google/android/gms/internal/ads/zzaag;

    .line 122
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_28b
    .catch Ljava/io/IOException; {:try_start_274 .. :try_end_28b} :catch_524
    .catch Ljava/lang/RuntimeException; {:try_start_274 .. :try_end_28b} :catch_522

    if-le v7, v3, :cond_2e2

    .line 125
    :try_start_28d
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Content length "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exceeds limit at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    const-string v0, "File too big for full file cache. Size: "

    .line 126
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2cd

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d3

    :cond_2cd
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 127
    :goto_2d3
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sizeExceeded"

    invoke-virtual {v8, v9, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbez;->zzekq:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2e1
    .catch Ljava/io/IOException; {:try_start_28d .. :try_end_2e1} :catch_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_28d .. :try_end_2e1} :catch_1e5

    return v11

    .line 130
    :cond_2e2
    :try_start_2e2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Caching "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 132
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v5

    .line 133
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31d
    .catch Ljava/io/IOException; {:try_start_2e2 .. :try_end_31d} :catch_524
    .catch Ljava/lang/RuntimeException; {:try_start_2e2 .. :try_end_31d} :catch_522

    .line 134
    :try_start_31d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const/high16 v1, 0x100000

    .line 135
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 136
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v16

    .line 138
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v17

    .line 139
    sget-object v6, Lcom/google/android/gms/internal/ads/zzaav;->zzcly:Lcom/google/android/gms/internal/ads/zzaag;

    .line 140
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v6

    .line 141
    check-cast v6, Ljava/lang/Long;
    :try_end_33b
    .catch Ljava/io/IOException; {:try_start_31d .. :try_end_33b} :catch_4fc
    .catch Ljava/lang/RuntimeException; {:try_start_31d .. :try_end_33b} :catch_4fa

    move-object v10, v14

    :try_start_33c
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 142
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbag;

    invoke-direct {v6, v13, v14}, Lcom/google/android/gms/internal/ads/zzbag;-><init>(J)V

    .line 143
    sget-object v13, Lcom/google/android/gms/internal/ads/zzaav;->zzclx:Lcom/google/android/gms/internal/ads/zzaag;

    .line 144
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v13

    .line 145
    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 146
    :goto_355
    invoke-interface {v5, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v20
    :try_end_359
    .catch Ljava/io/IOException; {:try_start_33c .. :try_end_359} :catch_4f5
    .catch Ljava/lang/RuntimeException; {:try_start_33c .. :try_end_359} :catch_4f3

    if-ltz v20, :cond_471

    add-int v11, v11, v20

    if-le v11, v3, :cond_392

    :try_start_35f
    const-string v15, "sizeExceeded"

    const-string v0, "File too big for full file cache. Size: "

    .line 150
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_377

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_37c

    :cond_377
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_37c
    .catch Ljava/io/IOException; {:try_start_35f .. :try_end_37c} :catch_38c
    .catch Ljava/lang/RuntimeException; {:try_start_35f .. :try_end_37c} :catch_38a

    .line 151
    :goto_37c
    :try_start_37c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream cache file size limit exceeded"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_384
    .catch Ljava/io/IOException; {:try_start_37c .. :try_end_384} :catch_386
    .catch Ljava/lang/RuntimeException; {:try_start_37c .. :try_end_384} :catch_384

    :catch_384
    move-exception v0

    goto :goto_387

    :catch_386
    move-exception v0

    :goto_387
    move-object v2, v1

    move-object v1, v10

    goto :goto_38f

    :catch_38a
    move-exception v0

    goto :goto_38d

    :catch_38c
    move-exception v0

    :goto_38d
    move-object v1, v10

    const/4 v2, 0x0

    :goto_38f
    move-object v10, v4

    goto/16 :goto_52a

    .line 152
    :cond_392
    :try_start_392
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 153
    :cond_395
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v20

    if-gtz v20, :cond_395

    .line 154
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 155
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v17

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v13

    cmp-long v24, v20, v22

    if-gtz v24, :cond_425

    move-object/from16 v20, v1

    .line 160
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzbez;->zzeks:Z

    if-nez v1, :cond_415

    .line 163
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbag;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_3ef

    .line 164
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    .line 165
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbaq;->zzaag:Landroid/os/Handler;
    :try_end_3be
    .catch Ljava/io/IOException; {:try_start_392 .. :try_end_3be} :catch_469
    .catch Ljava/lang/RuntimeException; {:try_start_392 .. :try_end_3be} :catch_467

    move-object/from16 v22, v15

    :try_start_3c0
    new-instance v15, Lcom/google/android/gms/internal/ads/zzber;
    :try_end_3c2
    .catch Ljava/io/IOException; {:try_start_3c0 .. :try_end_3c2} :catch_3e9
    .catch Ljava/lang/RuntimeException; {:try_start_3c0 .. :try_end_3c2} :catch_3e7

    const/16 v23, 0x0

    move-object/from16 v24, v10

    move-object v10, v1

    move-object v1, v15

    move-object/from16 v25, v2

    move-object/from16 v2, p0

    move/from16 v26, v3

    move-object/from16 v3, p1

    move-object/from16 v27, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v5

    move v5, v11

    move-object/from16 v19, v6

    const/16 v28, 0x3

    move v6, v7

    move/from16 v29, v7

    move/from16 v7, v23

    :try_start_3e0
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzber;-><init>(Lcom/google/android/gms/internal/ads/zzbes;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {v10, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_401

    :catch_3e7
    move-exception v0

    goto :goto_3ea

    :catch_3e9
    move-exception v0

    :goto_3ea
    move-object/from16 v27, v4

    move-object v1, v10

    goto/16 :goto_4f0

    :cond_3ef
    move-object/from16 v25, v2

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v21, v5

    move-object/from16 v19, v6

    move/from16 v29, v7

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    const/16 v28, 0x3

    :goto_401
    move-object/from16 v6, v19

    move-object/from16 v1, v20

    move-object/from16 v5, v21

    move-object/from16 v15, v22

    move-object/from16 v10, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    move/from16 v7, v29

    goto/16 :goto_355

    :cond_415
    move-object/from16 v27, v4

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    const-string v15, "externalAbort"
    :try_end_41d
    .catch Ljava/io/IOException; {:try_start_3e0 .. :try_end_41d} :catch_4bb
    .catch Ljava/lang/RuntimeException; {:try_start_3e0 .. :try_end_41d} :catch_4b9

    .line 162
    :try_start_41d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "abort requested"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_425
    .catch Ljava/io/IOException; {:try_start_41d .. :try_end_425} :catch_465
    .catch Ljava/lang/RuntimeException; {:try_start_41d .. :try_end_425} :catch_463

    :cond_425
    move-object/from16 v27, v4

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    :try_start_42b
    const-string v15, "downloadTimeout"
    :try_end_42d
    .catch Ljava/io/IOException; {:try_start_42b .. :try_end_42d} :catch_4bb
    .catch Ljava/lang/RuntimeException; {:try_start_42b .. :try_end_42d} :catch_4b9

    .line 158
    :try_start_42d
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Timeout exceeded. Limit: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_451
    .catch Ljava/io/IOException; {:try_start_42d .. :try_end_451} :catch_465
    .catch Ljava/lang/RuntimeException; {:try_start_42d .. :try_end_451} :catch_463

    .line 159
    :try_start_451
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache time limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_459
    .catch Ljava/io/IOException; {:try_start_451 .. :try_end_459} :catch_45b
    .catch Ljava/lang/RuntimeException; {:try_start_451 .. :try_end_459} :catch_459

    :catch_459
    move-exception v0

    goto :goto_45c

    :catch_45b
    move-exception v0

    :goto_45c
    move-object v2, v10

    move-object/from16 v1, v24

    move-object/from16 v10, v27

    goto/16 :goto_52a

    :catch_463
    move-exception v0

    goto :goto_4be

    :catch_465
    move-exception v0

    goto :goto_4be

    :catch_467
    move-exception v0

    goto :goto_46a

    :catch_469
    move-exception v0

    :goto_46a
    move-object/from16 v27, v4

    move-object/from16 v22, v15

    move-object v1, v10

    goto/16 :goto_502

    :cond_471
    move-object/from16 v27, v4

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    const/16 v28, 0x3

    .line 167
    :try_start_479
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V

    .line 168
    invoke-static/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzaxv;->isLoggable(I)Z

    move-result v1
    :try_end_480
    .catch Ljava/io/IOException; {:try_start_479 .. :try_end_480} :catch_4ed
    .catch Ljava/lang/RuntimeException; {:try_start_479 .. :try_end_480} :catch_4eb

    if-eqz v1, :cond_4c1

    .line 169
    :try_start_482
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbez;->zzekr:Ljava/text/DecimalFormat;

    int-to-long v2, v11

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Preloaded "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V
    :try_end_4b8
    .catch Ljava/io/IOException; {:try_start_482 .. :try_end_4b8} :catch_4bb
    .catch Ljava/lang/RuntimeException; {:try_start_482 .. :try_end_4b8} :catch_4b9

    goto :goto_4c1

    :catch_4b9
    move-exception v0

    goto :goto_4bc

    :catch_4bb
    move-exception v0

    :goto_4bc
    move-object/from16 v15, v22

    :goto_4be
    move-object/from16 v1, v24

    goto :goto_502

    :cond_4c1
    :goto_4c1
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    :try_start_4c3
    invoke-virtual {v12, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_4ca
    .catch Ljava/io/IOException; {:try_start_4c3 .. :try_end_4ca} :catch_4ed
    .catch Ljava/lang/RuntimeException; {:try_start_4c3 .. :try_end_4ca} :catch_4eb

    if-eqz v1, :cond_4d4

    .line 174
    :try_start_4cc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4d3
    .catch Ljava/io/IOException; {:try_start_4cc .. :try_end_4d3} :catch_4bb
    .catch Ljava/lang/RuntimeException; {:try_start_4cc .. :try_end_4d3} :catch_4b9

    goto :goto_4d7

    .line 175
    :cond_4d4
    :try_start_4d4
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_4d7
    .catch Ljava/io/IOException; {:try_start_4d4 .. :try_end_4d7} :catch_4d7
    .catch Ljava/lang/RuntimeException; {:try_start_4d4 .. :try_end_4d7} :catch_4b9

    .line 178
    :catch_4d7
    :goto_4d7
    :try_start_4d7
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v11}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbez;->zzekq:Ljava/util/Set;
    :try_end_4e0
    .catch Ljava/io/IOException; {:try_start_4d7 .. :try_end_4e0} :catch_4ed
    .catch Ljava/lang/RuntimeException; {:try_start_4d7 .. :try_end_4e0} :catch_4eb

    move-object/from16 v1, v24

    :try_start_4e2
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4e5
    .catch Ljava/io/IOException; {:try_start_4e2 .. :try_end_4e5} :catch_4e9
    .catch Ljava/lang/RuntimeException; {:try_start_4e2 .. :try_end_4e5} :catch_4e7

    const/4 v0, 0x1

    return v0

    :catch_4e7
    move-exception v0

    goto :goto_4f0

    :catch_4e9
    move-exception v0

    goto :goto_4f0

    :catch_4eb
    move-exception v0

    goto :goto_4ee

    :catch_4ed
    move-exception v0

    :goto_4ee
    move-object/from16 v1, v24

    :goto_4f0
    move-object/from16 v15, v22

    goto :goto_502

    :catch_4f3
    move-exception v0

    goto :goto_4f6

    :catch_4f5
    move-exception v0

    :goto_4f6
    move-object/from16 v27, v4

    move-object v1, v10

    goto :goto_500

    :catch_4fa
    move-exception v0

    goto :goto_4fd

    :catch_4fc
    move-exception v0

    :goto_4fd
    move-object/from16 v27, v4

    move-object v1, v14

    :goto_500
    move-object/from16 v22, v15

    :goto_502
    move-object/from16 v10, v27

    const/4 v2, 0x0

    goto :goto_52a

    :cond_506
    move-object v1, v14

    move-object/from16 v22, v15

    .line 85
    :try_start_509
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid protocol."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_511
    move-object v1, v14

    move-object/from16 v22, v15

    .line 106
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Too many redirects (20)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51c
    .catch Ljava/io/IOException; {:try_start_509 .. :try_end_51c} :catch_51e
    .catch Ljava/lang/RuntimeException; {:try_start_509 .. :try_end_51c} :catch_51c

    :catch_51c
    move-exception v0

    goto :goto_51f

    :catch_51e
    move-exception v0

    :goto_51f
    move-object/from16 v15, v22

    goto :goto_528

    :catch_522
    move-exception v0

    goto :goto_525

    :catch_524
    move-exception v0

    :goto_525
    move-object v1, v14

    move-object/from16 v22, v15

    :goto_528
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 182
    :goto_52a
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_537

    .line 183
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v3

    const-string v4, "VideoStreamFullFileCache.preload"

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 184
    :cond_537
    :try_start_537
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_53a
    .catch Ljava/io/IOException; {:try_start_537 .. :try_end_53a} :catch_53b
    .catch Ljava/lang/NullPointerException; {:try_start_537 .. :try_end_53a} :catch_53b

    goto :goto_53c

    :catch_53b
    nop

    .line 187
    :goto_53c
    iget-boolean v3, v8, Lcom/google/android/gms/internal/ads/zzbez;->zzeks:Z

    if-eqz v3, :cond_564

    .line 188
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Preload aborted for URL \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfc(Ljava/lang/String;)V

    goto :goto_587

    .line 189
    :cond_564
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Preload failed for URL \""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    :goto_587
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5b1

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5b1

    const-string v0, "Could not delete partial cache file at "

    .line 191
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5a8

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5ae

    :cond_5a8
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_5ae
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 192
    :cond_5b1
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v15, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbez;->zzekq:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    return v1

    :catchall_5bf
    move-exception v0

    .line 70
    :try_start_5c0
    monitor-exit v1
    :try_end_5c1
    .catchall {:try_start_5c0 .. :try_end_5c1} :catchall_5bf

    goto :goto_5c3

    :goto_5c2
    throw v0

    :goto_5c3
    goto :goto_5c2
.end method
