.class public final Lcom/google/android/gms/measurement/internal/zzie;
.super Lcom/google/android/gms/measurement/internal/zzgw;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# instance fields
.field private final zza:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgd;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgw;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_f

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-direct {p1}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>()V

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzie;->zza:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzie;Ljava/net/HttpURLConnection;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Ljava/net/HttpURLConnection;)[B

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/net/HttpURLConnection;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 17
    :goto_e
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_19

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    .line 19
    :cond_19
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_23

    if-eqz v0, :cond_22

    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_22
    return-object p0

    :catchall_23
    move-exception p0

    if-eqz v0, :cond_29

    .line 24
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 25
    :cond_29
    goto :goto_2b

    :goto_2a
    throw p0

    :goto_2b
    goto :goto_2a
.end method


# virtual methods
.method protected final zza(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 27
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_30

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzie;->zza:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_16

    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_16

    .line 30
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 31
    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 32
    :cond_16
    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const v1, 0xea60

    .line 34
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v1, 0xee48

    .line 35
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 36
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1

    .line 28
    :cond_30
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to obtain HTTP connection"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic zza()V
    .registers 1

    .line 39
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zza()V

    return-void
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    .line 40
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    .line 41
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    .line 42
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzd()V

    return-void
.end method

.method protected final zze()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .registers 3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzaa()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 9
    :try_start_f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_1f

    .line 12
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzai;
    .registers 2

    .line 43
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 44
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    .line 45
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzex;
    .registers 2

    .line 46
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzkw;
    .registers 2

    .line 47
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzfw;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzfl;
    .registers 2

    .line 50
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 51
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    .line 52
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method
