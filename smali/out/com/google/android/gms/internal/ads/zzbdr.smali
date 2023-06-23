.class final Lcom/google/android/gms/internal/ads/zzbdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzok;


# static fields
.field private static final zzbig:Ljava/util/regex/Pattern;

.field private static final zzbih:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private zzbif:Lcom/google/android/gms/internal/ads/zzop;

.field private final zzbij:I

.field private final zzbik:I

.field private final zzbil:Ljava/lang/String;

.field private final zzbio:Lcom/google/android/gms/internal/ads/zzos;

.field private final zzbip:Lcom/google/android/gms/internal/ads/zzoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzoy<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbdr;",
            ">;"
        }
    .end annotation
.end field

.field private zzbiq:Ljava/net/HttpURLConnection;

.field private zzbir:Ljava/io/InputStream;

.field private zzbis:Z

.field private zzbit:J

.field private zzbiu:J

.field private zzbiv:J

.field private zzcq:J

.field private zzeir:Ljavax/net/ssl/SSLSocketFactory;

.field private zzeis:I

.field private zzeit:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 226
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbig:Ljava/util/regex/Pattern;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbih:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoy;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzoy<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbdr;",
            ">;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdu;-><init>(Lcom/google/android/gms/internal/ads/zzbdr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeir:Ljavax/net/ssl/SSLSocketFactory;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeit:Ljava/util/Set;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpb;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbil:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbip:Lcom/google/android/gms/internal/ads/zzoy;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzos;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzos;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbio:Lcom/google/android/gms/internal/ads/zzos;

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbij:I

    .line 8
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbik:I

    .line 9
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeis:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdr;)I
    .registers 1

    .line 223
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeis:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdr;Ljava/net/Socket;)V
    .registers 2

    .line 224
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdr;->zza(Ljava/net/Socket;)V

    return-void
.end method

.method private final zza(Ljava/net/Socket;)V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeit:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static zzc(Ljava/net/HttpURLConnection;)J
    .registers 10

    const-string v0, "Content-Length"

    .line 195
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    if-nez v1, :cond_34

    .line 197
    :try_start_e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_13

    goto :goto_36

    .line 200
    :catch_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Length ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfb(Ljava/lang/String;)V

    :cond_34
    const-wide/16 v3, -0x1

    :goto_36
    const-string v1, "Content-Range"

    .line 201
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c9

    .line 203
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbig:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_c9

    const/4 v5, 0x2

    .line 206
    :try_start_4f
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-gez v1, :cond_6c

    move-wide v3, v5

    goto :goto_c9

    :cond_6c
    cmp-long v1, v3, v5

    if-eqz v1, :cond_c9

    .line 210
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 211
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_a6} :catch_a8

    move-wide v3, v0

    goto :goto_c9

    .line 214
    :catch_a8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected Content-Range ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfb(Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    return-wide v3
.end method

.method private final zziq()V
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiq:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_11

    .line 217
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    const-string v1, "Unexpected error while disconnecting"

    .line 220
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiq:Ljava/net/HttpURLConnection;

    :cond_11
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzoq;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbir:Ljava/io/InputStream;

    if-eqz v2, :cond_7b

    .line 145
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiq:Ljava/net/HttpURLConnection;

    .line 146
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiu:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_13

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiu:J

    goto :goto_18

    :cond_13
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiu:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzcq:J

    sub-long/2addr v3, v7

    .line 148
    :goto_18
    sget v7, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I

    const/16 v8, 0x13

    if-eq v7, v8, :cond_24

    sget v7, Lcom/google/android/gms/internal/ads/zzpo;->SDK_INT:I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_93

    const/16 v8, 0x14

    if-ne v7, v8, :cond_6b

    .line 149
    :cond_24
    :try_start_24
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_34

    .line 151
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3a

    goto :goto_6b

    :cond_34
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-lez v7, :cond_6b

    .line 154
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 157
    :cond_52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    .line 158
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 160
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_6b} :catch_6b
    .catchall {:try_start_24 .. :try_end_6b} :catchall_93

    .line 163
    :catch_6b
    :cond_6b
    :goto_6b
    :try_start_6b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbir:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_71
    .catchall {:try_start_6b .. :try_end_70} :catchall_93

    goto :goto_7b

    :catch_71
    move-exception v2

    .line 166
    :try_start_72
    new-instance v3, Lcom/google/android/gms/internal/ads/zzoq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbif:Lcom/google/android/gms/internal/ads/zzop;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzop;I)V

    throw v3
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_93

    .line 167
    :cond_7b
    :goto_7b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbir:Ljava/io/InputStream;

    .line 168
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zziq()V

    .line 169
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbis:Z

    if-eqz v0, :cond_8d

    .line 170
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbis:Z

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbip:Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v0, :cond_8d

    .line 172
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzoy;->zze(Ljava/lang/Object;)V

    .line 173
    :cond_8d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeit:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :catchall_93
    move-exception v2

    .line 175
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbir:Ljava/io/InputStream;

    .line 176
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zziq()V

    .line 177
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbis:Z

    if-eqz v0, :cond_a6

    .line 178
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbis:Z

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbip:Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v0, :cond_a6

    .line 180
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzoy;->zze(Ljava/lang/Object;)V

    .line 181
    :cond_a6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeit:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 182
    throw v2
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiq:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzoq;
        }
    .end annotation

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiv:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbit:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_5c

    .line 109
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbih:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_19

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 112
    :cond_19
    :goto_19
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiv:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbit:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_57

    .line 113
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbit:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiv:J

    sub-long/2addr v1, v6

    array-length v3, v0

    int-to-long v6, v3

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbir:Ljava/io/InputStream;

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 115
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_51

    if-eq v1, v5, :cond_4b

    .line 119
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiv:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiv:J

    .line 120
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbip:Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v2, :cond_19

    .line 121
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbip:Lcom/google/android/gms/internal/ads/zzoy;

    invoke-interface {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzc(Ljava/lang/Object;I)V

    goto :goto_19

    .line 118
    :cond_4b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 116
    :cond_51
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 123
    :cond_57
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbih:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_5c
    if-nez p3, :cond_5f

    return v4

    .line 127
    :cond_5f
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiu:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_79

    .line 128
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiu:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzcq:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_73

    return v5

    :cond_73
    int-to-long v6, p3

    .line 131
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 132
    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbir:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_8e

    .line 134
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiu:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_88

    return v5

    .line 135
    :cond_88
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 137
    :cond_8e
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzcq:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzcq:J

    .line 138
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbip:Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz p2, :cond_9d

    .line 139
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbip:Lcom/google/android/gms/internal/ads/zzoy;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzoy;->zzc(Ljava/lang/Object;I)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9d} :catch_9e

    :cond_9d
    return p1

    :catch_9e
    move-exception p1

    .line 143
    new-instance p2, Lcom/google/android/gms/internal/ads/zzoq;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbif:Lcom/google/android/gms/internal/ads/zzop;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzop;I)V

    goto :goto_a9

    :goto_a8
    throw p2

    :goto_a9
    goto :goto_a8
.end method

.method final setReceiveBufferSize(I)V
    .registers 4

    .line 183
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeis:I

    .line 184
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeit:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 185
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 186
    :try_start_1a
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeis:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_1f
    .catch Ljava/net/SocketException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_8

    :catch_20
    move-exception v0

    const-string v1, "Failed to update receive buffer size."

    .line 189
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_27
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzop;)J
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzoq;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Unable to connect to "

    .line 12
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbif:Lcom/google/android/gms/internal/ads/zzop;

    const-wide/16 v4, 0x0

    .line 13
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzcq:J

    .line 14
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiv:J

    const/4 v6, 0x1

    .line 16
    :try_start_f
    new-instance v0, Ljava/net/URL;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzop;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzop;->zzbid:[B

    .line 18
    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzop;->position:J

    .line 19
    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/zzop;->zzcp:J

    .line 20
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzop;->isFlagSet(I)Z

    move-result v12

    const/4 v14, 0x0

    :goto_25
    add-int/lit8 v15, v14, 0x1

    const/16 v6, 0x14

    if-gt v14, v6, :cond_22f

    .line 24
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;

    .line 25
    instance-of v13, v14, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v13, :cond_3d

    .line 26
    move-object v13, v14

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzeir:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v13, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 27
    :cond_3d
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbij:I

    invoke-virtual {v14, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 28
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbik:I

    invoke-virtual {v14, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 29
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbio:Lcom/google/android/gms/internal/ads/zzos;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzos;->zzir()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_55
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_75

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    goto :goto_55

    :cond_75
    const-wide/16 v4, -0x1

    const-wide/16 v17, 0x0

    cmp-long v6, v8, v17

    if-nez v6, :cond_85

    cmp-long v6, v10, v4

    if-eqz v6, :cond_82

    goto :goto_85

    :cond_82
    move-wide/from16 v16, v8

    goto :goto_d0

    :cond_85
    :goto_85
    const/16 v6, 0x1b

    .line 33
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "bytes="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    cmp-long v13, v10, v4

    if-eqz v13, :cond_c9

    .line 35
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    add-long v19, v8, v10

    const-wide/16 v21, 0x1

    sub-long v4, v19, v21

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v16, 0x14

    add-int/lit8 v13, v13, 0x14

    move-wide/from16 v16, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_cb

    :cond_c9
    move-wide/from16 v16, v8

    :goto_cb
    const-string v4, "Range"

    .line 36
    invoke-virtual {v14, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d0
    const-string v4, "User-Agent"

    .line 37
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbil:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_e0

    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    .line 39
    invoke-virtual {v14, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v14, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz v7, :cond_e8

    const/4 v4, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v4, 0x0

    .line 41
    :goto_e9
    invoke-virtual {v14, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v7, :cond_108

    const-string v4, "POST"

    .line 43
    invoke-virtual {v14, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 44
    array-length v4, v7

    if-eqz v4, :cond_108

    .line 45
    array-length v4, v7

    invoke-virtual {v14, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 46
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->connect()V

    .line 47
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 48
    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 49
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_10b

    .line 51
    :cond_108
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->connect()V

    .line 54
    :goto_10b
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12c

    if-eq v4, v5, :cond_1da

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_1da

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_1da

    const/16 v5, 0x12f

    if-eq v4, v5, :cond_1da

    if-nez v7, :cond_12b

    const/16 v5, 0x133

    if-eq v4, v5, :cond_1da

    const/16 v5, 0x134

    if-ne v4, v5, :cond_12b

    goto/16 :goto_1da

    .line 71
    :cond_12b
    iput-object v14, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiq:Ljava/net/HttpURLConnection;
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12d} :catch_248

    .line 76
    :try_start_12d
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_131} :catch_1b3

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_197

    const/16 v4, 0x12b

    if-le v0, v4, :cond_13a

    goto :goto_197

    :cond_13a
    if-ne v0, v3, :cond_147

    .line 89
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzop;->position:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_149

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzop;->position:J

    goto :goto_14a

    :cond_147
    const-wide/16 v5, 0x0

    :cond_149
    move-wide v4, v5

    :goto_14a
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbit:J

    const/4 v3, 0x1

    .line 90
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzop;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_173

    .line 91
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzop;->zzcp:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_160

    .line 92
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzop;->zzcp:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiu:J

    goto :goto_177

    .line 93
    :cond_160
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiq:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzc(Ljava/net/HttpURLConnection;)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_16f

    .line 95
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbit:J

    sub-long/2addr v3, v5

    move-wide v4, v3

    goto :goto_170

    :cond_16f
    move-wide v4, v5

    :goto_170
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiu:J

    goto :goto_177

    .line 97
    :cond_173
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzop;->zzcp:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiu:J

    .line 98
    :goto_177
    :try_start_177
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiq:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbir:Ljava/io/InputStream;
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_17f} :catch_18c

    const/4 v3, 0x1

    .line 103
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbis:Z

    .line 104
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbip:Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v0, :cond_189

    .line 105
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzoy;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzop;)V

    .line 106
    :cond_189
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiu:J

    return-wide v2

    :catch_18c
    move-exception v0

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zziq()V

    .line 102
    new-instance v3, Lcom/google/android/gms/internal/ads/zzoq;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzop;I)V

    throw v3

    .line 83
    :cond_197
    :goto_197
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zzbiq:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zziq()V

    .line 85
    new-instance v4, Lcom/google/android/gms/internal/ads/zzot;

    invoke-direct {v4, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzot;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/zzop;)V

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_1b2

    .line 87
    new-instance v0, Lcom/google/android/gms/internal/ads/zzom;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzom;-><init>(I)V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzot;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 88
    :cond_1b2
    throw v4

    :catch_1b3
    move-exception v0

    move-object v4, v0

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zziq()V

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/ads/zzoq;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzop;->uri:Landroid/net/Uri;

    .line 81
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1cf

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1d5

    :cond_1cf
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_1d5
    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzop;I)V

    throw v0

    :cond_1da
    :goto_1da
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_1de
    const-string v8, "Location"

    .line 57
    invoke-virtual {v14, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v8, :cond_227

    .line 62
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v0, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v8, "https"

    .line 64
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21e

    const-string v8, "http"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21e

    .line 65
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Unsupported protocol redirect: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_215

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21a

    :cond_215
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_21a
    invoke-direct {v4, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_21e
    move-object v7, v4

    move-wide v4, v5

    move-object v0, v9

    move v14, v15

    move-wide/from16 v8, v16

    const/4 v6, 0x1

    goto/16 :goto_25

    .line 61
    :cond_227
    new-instance v0, Ljava/net/ProtocolException;

    const-string v4, "Null location redirect"

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_22f
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v4, 0x1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Too many redirects: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_248
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_248} :catch_248

    :catch_248
    move-exception v0

    .line 74
    new-instance v4, Lcom/google/android/gms/internal/ads/zzoq;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzop;->uri:Landroid/net/Uri;

    .line 75
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_260

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_266

    :cond_260
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_266
    const/4 v5, 0x1

    invoke-direct {v4, v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzop;I)V

    goto :goto_26c

    :goto_26b
    throw v4

    :goto_26c
    goto :goto_26b
.end method
