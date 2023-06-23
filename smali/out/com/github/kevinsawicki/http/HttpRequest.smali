.class public Lcom/github/kevinsawicki/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;,
        Lcom/github/kevinsawicki/http/HttpRequest$FlushOperation;,
        Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;,
        Lcom/github/kevinsawicki/http/HttpRequest$Operation;,
        Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;,
        Lcom/github/kevinsawicki/http/HttpRequest$Base64;,
        Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;,
        Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "00content0boundary00"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static CONNECTION_FACTORY:Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory; = null

.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final HEADER_REFERER:Ljava/lang/String; = "Referer"

.field public static final HEADER_SERVER:Ljava/lang/String; = "Server"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private bufferSize:I

.field private connection:Ljava/net/HttpURLConnection;

.field private form:Z

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPort:I

.field private ignoreCloseExceptions:Z

.field private multipart:Z

.field private output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

.field private progress:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

.field private final requestMethod:Ljava/lang/String;

.field private totalSize:J

.field private totalWritten:J

.field private uncompress:Z

.field private final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 257
    sput-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 398
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;

    sput-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->CONNECTION_FACTORY:Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1435
    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 1447
    iput-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->ignoreCloseExceptions:Z

    const/4 v0, 0x0

    .line 1449
    iput-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->uncompress:Z

    const/16 v0, 0x2000

    .line 1451
    iput v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->bufferSize:I

    const-wide/16 v0, -0x1

    .line 1453
    iput-wide v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalSize:J

    const-wide/16 v0, 0x0

    .line 1455
    iput-wide v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalWritten:J

    .line 1461
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;->DEFAULT:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->progress:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

    .line 1473
    :try_start_1c
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->url:Ljava/net/URL;
    :try_end_27
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_27} :catch_2a

    .line 1477
    iput-object p2, p0, Lcom/github/kevinsawicki/http/HttpRequest;->requestMethod:Ljava/lang/String;

    return-void

    :catch_2a
    move-exception p1

    .line 1475
    new-instance p2, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {p2, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1435
    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 1447
    iput-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->ignoreCloseExceptions:Z

    const/4 v0, 0x0

    .line 1449
    iput-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->uncompress:Z

    const/16 v0, 0x2000

    .line 1451
    iput v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->bufferSize:I

    const-wide/16 v0, -0x1

    .line 1453
    iput-wide v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalSize:J

    const-wide/16 v0, 0x0

    .line 1455
    iput-wide v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalWritten:J

    .line 1461
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;->DEFAULT:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->progress:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

    .line 1489
    iput-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->url:Ljava/net/URL;

    .line 1490
    iput-object p2, p0, Lcom/github/kevinsawicki/http/HttpRequest;->requestMethod:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 98
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/kevinsawicki/http/HttpRequest;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->bufferSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/github/kevinsawicki/http/HttpRequest;)J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalWritten:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/github/kevinsawicki/http/HttpRequest;J)J
    .registers 3

    .line 98
    iput-wide p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalWritten:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/github/kevinsawicki/http/HttpRequest;)J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->progress:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

    return-object p0
.end method

.method private static addParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    if-eqz p1, :cond_10

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 340
    invoke-static {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->arrayToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 342
    :cond_10
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_3d

    .line 343
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 344
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 345
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "[]="

    .line 346
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 349
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    :cond_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "&"

    .line 351
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 354
    :cond_3d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "="

    .line 355
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4a

    .line 357
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4a
    return-object p2
.end method

.method private static addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6

    const/16 v0, 0x3f

    .line 328
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 329
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_13
    if-ge v1, v2, :cond_20

    .line 332
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_20

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    :goto_20
    return-object p1
.end method

.method private static addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const/16 v0, 0x3a

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ne v0, p0, :cond_13

    .line 321
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 913
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_5a

    .line 914
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5a

    .line 917
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 919
    invoke-static {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 920
    invoke-static {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 923
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 924
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 925
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->addParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 927
    :goto_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_56

    const/16 p1, 0x26

    .line 928
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 929
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 930
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->addParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 933
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5a
    :goto_5a
    return-object p0
.end method

.method public static varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 948
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_44

    .line 949
    array-length v0, p1

    if-nez v0, :cond_a

    goto :goto_44

    .line 952
    :cond_a
    array-length v0, p1

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_3c

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 958
    invoke-static {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 959
    invoke-static {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 961
    aget-object p0, p1, p0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {p0, v2, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->addParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 963
    :goto_23
    array-length p0, p1

    if-ge v1, p0, :cond_37

    const/16 p0, 0x26

    .line 964
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 965
    aget-object p0, p1, v1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p1, v2

    invoke-static {p0, v2, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->addParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_23

    .line 968
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 953
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an even number of parameter names/values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    :goto_44
    return-object p0
.end method

.method private static arrayToList(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 836
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 837
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 839
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 841
    instance-of v1, p0, [I

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 842
    check-cast p0, [I

    check-cast p0, [I

    array-length v1, p0

    :goto_1c
    if-ge v2, v1, :cond_cb

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 843
    :cond_2a
    instance-of v1, p0, [Z

    if-eqz v1, :cond_41

    .line 844
    check-cast p0, [Z

    check-cast p0, [Z

    array-length v1, p0

    :goto_33
    if-ge v2, v1, :cond_cb

    aget-boolean v3, p0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 845
    :cond_41
    instance-of v1, p0, [J

    if-eqz v1, :cond_58

    .line 846
    check-cast p0, [J

    check-cast p0, [J

    array-length v1, p0

    :goto_4a
    if-ge v2, v1, :cond_cb

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 847
    :cond_58
    instance-of v1, p0, [F

    if-eqz v1, :cond_6f

    .line 848
    check-cast p0, [F

    check-cast p0, [F

    array-length v1, p0

    :goto_61
    if-ge v2, v1, :cond_cb

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 849
    :cond_6f
    instance-of v1, p0, [D

    if-eqz v1, :cond_86

    .line 850
    check-cast p0, [D

    check-cast p0, [D

    array-length v1, p0

    :goto_78
    if-ge v2, v1, :cond_cb

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 851
    :cond_86
    instance-of v1, p0, [S

    if-eqz v1, :cond_9d

    .line 852
    check-cast p0, [S

    check-cast p0, [S

    array-length v1, p0

    :goto_8f
    if-ge v2, v1, :cond_cb

    aget-short v3, p0, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 853
    :cond_9d
    instance-of v1, p0, [B

    if-eqz v1, :cond_b4

    .line 854
    check-cast p0, [B

    check-cast p0, [B

    array-length v1, p0

    :goto_a6
    if-ge v2, v1, :cond_cb

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 855
    :cond_b4
    instance-of v1, p0, [C

    if-eqz v1, :cond_cb

    .line 856
    check-cast p0, [C

    check-cast p0, [C

    array-length v1, p0

    :goto_bd
    if-ge v2, v1, :cond_cb

    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    :cond_cb
    return-object v0
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .registers 4

    .line 1500
    :try_start_0
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->httpProxyHost:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1501
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->CONNECTION_FACTORY:Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;

    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->url:Ljava/net/URL;

    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->createProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_19

    .line 1503
    :cond_11
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->CONNECTION_FACTORY:Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;

    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->url:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1504
    :goto_19
    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    .line 1507
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private createProxy()Ljava/net/Proxy;
    .registers 6

    .line 1494
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/github/kevinsawicki/http/HttpRequest;->httpProxyHost:Ljava/lang/String;

    iget v4, p0, Lcom/github/kevinsawicki/http/HttpRequest;->httpProxyPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1172
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .line 1202
    invoke-static {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 1203
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static varargs delete(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 1223
    invoke-static {p0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 1224
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1183
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 877
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_86

    .line 882
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 883
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2c
    move-object v3, p0

    .line 888
    :try_start_2d
    new-instance p0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 889
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    .line 890
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_74

    add-int/lit8 v0, v0, 0x1

    .line 891
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "+"

    const-string v2, "%2B"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_74
    .catch Ljava/net/URISyntaxException; {:try_start_2d .. :try_end_74} :catch_75

    :cond_74
    return-object p0

    :catch_75
    move-exception p0

    .line 896
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parsing URI failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 898
    new-instance p0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p0

    :catch_86
    move-exception p0

    .line 879
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 980
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .line 1010
    invoke-static {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 1011
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 1031
    invoke-static {p0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 1032
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 991
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_36

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    .line 273
    new-instance v2, Lcom/github/kevinsawicki/http/HttpRequest$1;

    invoke-direct {v2}, Lcom/github/kevinsawicki/http/HttpRequest$1;-><init>()V

    aput-object v2, v0, v1

    :try_start_f
    const-string v1, "TLS"

    .line 288
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 289
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 290
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_24
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_24} :catch_25

    goto :goto_36

    :catch_25
    move-exception v0

    .line 292
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Security exception configuring SSL context"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 295
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 299
    :cond_36
    :goto_36
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method private static getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    .line 303
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_b

    .line 304
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$2;

    invoke-direct {v0}, Lcom/github/kevinsawicki/http/HttpRequest$2;-><init>()V

    sput-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 311
    :cond_b
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    return-object p0

    :cond_9
    const-string p0, "UTF-8"

    return-object p0
.end method

.method public static head(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1236
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .line 1266
    invoke-static {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 1267
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->head(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static varargs head(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 1287
    invoke-static {p0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 1288
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->head(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static head(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1247
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private incrementTotalSize(J)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 8

    .line 2670
    iget-wide v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const-wide/16 v0, 0x0

    .line 2671
    iput-wide v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalSize:J

    .line 2672
    :cond_c
    iget-wide v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->totalSize:J

    return-object p0
.end method

.method public static keepAlive(Z)V
    .registers 2

    .line 1345
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.keepAlive"

    invoke-static {v0, p0}, Lcom/github/kevinsawicki/http/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static maxConnections(I)V
    .registers 2

    .line 1356
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.maxConnections"

    invoke-static {v0, p0}, Lcom/github/kevinsawicki/http/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static varargs nonProxyHosts([Ljava/lang/String;)V
    .registers 6

    const-string v0, "http.nonProxyHosts"

    if-eqz p0, :cond_2c

    .line 1396
    array-length v1, p0

    if-lez v1, :cond_2c

    .line 1397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1398
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1f

    .line 1400
    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1401
    :cond_1f
    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/github/kevinsawicki/http/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_30

    :cond_2c
    const/4 p0, 0x0

    .line 1404
    invoke-static {v0, p0}, Lcom/github/kevinsawicki/http/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_30
    return-void
.end method

.method public static options(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1300
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1311
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1044
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .line 1074
    invoke-static {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 1075
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static varargs post(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 1095
    invoke-static {p0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 1096
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1055
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static proxyHost(Ljava/lang/String;)V
    .registers 2

    const-string v0, "http.proxyHost"

    .line 1368
    invoke-static {v0, p0}, Lcom/github/kevinsawicki/http/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https.proxyHost"

    .line 1369
    invoke-static {v0, p0}, Lcom/github/kevinsawicki/http/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static proxyPort(I)V
    .registers 2

    .line 1381
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.proxyPort"

    .line 1382
    invoke-static {v0, p0}, Lcom/github/kevinsawicki/http/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https.proxyPort"

    .line 1383
    invoke-static {v0, p0}, Lcom/github/kevinsawicki/http/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static put(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1108
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .line 1138
    invoke-static {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 1139
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static varargs put(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 1159
    invoke-static {p0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 1160
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static put(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1119
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setConnectionFactory(Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;)V
    .registers 1

    if-nez p0, :cond_7

    .line 405
    sget-object p0, Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;

    sput-object p0, Lcom/github/kevinsawicki/http/HttpRequest;->CONNECTION_FACTORY:Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;

    goto :goto_9

    .line 407
    :cond_7
    sput-object p0, Lcom/github/kevinsawicki/http/HttpRequest;->CONNECTION_FACTORY:Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;

    :goto_9
    return-void
.end method

.method private static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_8

    .line 1419
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$3;

    invoke-direct {v0, p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1426
    :cond_8
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$4;

    invoke-direct {v0, p0}, Lcom/github/kevinsawicki/http/HttpRequest$4;-><init>(Ljava/lang/String;)V

    .line 1432
    :goto_d
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static trace(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1323
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URL;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1334
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    const-string v0, "Accept"

    .line 2591
    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public acceptCharset(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    const-string v0, "Accept-Charset"

    .line 2380
    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public acceptEncoding(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    const-string v0, "Accept-Encoding"

    .line 2360
    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public acceptGzipEncoding()Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 2

    const-string v0, "gzip"

    .line 2370
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->acceptEncoding(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptJson()Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 2

    const-string v0, "application/json"

    .line 2600
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->accept(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public authorization(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    const-string v0, "Authorization"

    .line 2462
    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public badRequest()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1627
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x190

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public basic(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 5

    .line 2484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/kevinsawicki/http/HttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->authorization(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1791
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1805
    invoke-virtual {p0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public body()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1779
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1762
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1764
    :try_start_4
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1765
    invoke-static {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p1

    .line 1767
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public buffer()Ljava/io/BufferedInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1844
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/github/kevinsawicki/http/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public bufferSize()I
    .registers 2

    .line 1712
    iget v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->bufferSize:I

    return v0
.end method

.method public bufferSize(I)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 1700
    iput p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->bufferSize:I

    return-object p0

    .line 1699
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Size must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bufferedReader()Ljava/io/BufferedReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1938
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1926
    new-instance v0, Ljava/io/BufferedReader;

    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object p1

    iget v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->bufferSize:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method protected byteStream()Ljava/io/ByteArrayOutputStream;
    .registers 3

    .line 1744
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->contentLength()I

    move-result v0

    if-lez v0, :cond_c

    .line 1746
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-object v1

    .line 1748
    :cond_c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0
.end method

.method public bytes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1827
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1829
    :try_start_4
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_10

    .line 1833
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_10
    move-exception v0

    .line 1831
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public cacheControl()Ljava/lang/String;
    .registers 2

    const-string v0, "Cache-Control"

    .line 2416
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .registers 3

    const-string v0, "Content-Type"

    const-string v1, "charset"

    .line 2319
    invoke-virtual {p0, v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chunk(I)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 1682
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object p0
.end method

.method protected closeOutput()Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2684
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->progress(Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2685
    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    if-nez v1, :cond_9

    return-object p0

    .line 2687
    :cond_9
    iget-boolean v2, p0, Lcom/github/kevinsawicki/http/HttpRequest;->multipart:Z

    if-eqz v2, :cond_12

    const-string v2, "\r\n--00content0boundary00--\r\n"

    .line 2688
    invoke-virtual {v1, v2}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    .line 2689
    :cond_12
    iget-boolean v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->ignoreCloseExceptions:Z

    if-eqz v1, :cond_1c

    .line 2691
    :try_start_16
    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    invoke-virtual {v1}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_21

    goto :goto_21

    .line 2696
    :cond_1c
    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    invoke-virtual {v1}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->close()V

    .line 2697
    :catch_21
    :goto_21
    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    return-object p0
.end method

.method protected closeOutputQuietly()Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2710
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->closeOutput()Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 2712
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1559
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->closeOutput()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1560
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    .line 1562
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code(Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1576
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object p0
.end method

.method public connectTimeout(I)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 2054
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object p0
.end method

.method public contentEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "Content-Encoding"

    .line 2389
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()I
    .registers 2

    const-string v0, "Content-Length"

    .line 2560
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->intHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public contentLength(I)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 2580
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-object p0
.end method

.method public contentLength(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 2

    .line 2570
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->contentLength(I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public contentType(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    const/4 v0, 0x0

    .line 2527
    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 5

    const-string v0, "Content-Type"

    if-eqz p2, :cond_23

    .line 2538
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 2540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; charset="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1

    .line 2542
    :cond_23
    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public contentType()Ljava/lang/String;
    .registers 2

    const-string v0, "Content-Type"

    .line 2551
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2613
    new-instance v6, Lcom/github/kevinsawicki/http/HttpRequest$8;

    iget-boolean v3, p0, Lcom/github/kevinsawicki/http/HttpRequest;->ignoreCloseExceptions:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/kevinsawicki/http/HttpRequest$8;-><init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2626
    invoke-virtual {v6}, Lcom/github/kevinsawicki/http/HttpRequest$8;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/kevinsawicki/http/HttpRequest;

    return-object p1
.end method

.method protected copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2639
    new-instance v6, Lcom/github/kevinsawicki/http/HttpRequest$9;

    iget-boolean v3, p0, Lcom/github/kevinsawicki/http/HttpRequest;->ignoreCloseExceptions:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/kevinsawicki/http/HttpRequest$9;-><init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V

    .line 2652
    invoke-virtual {v6}, Lcom/github/kevinsawicki/http/HttpRequest$9;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/kevinsawicki/http/HttpRequest;

    return-object p1
.end method

.method public created()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1597
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public date()J
    .registers 3

    const-string v0, "Date"

    .line 2407
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 2137
    invoke-virtual {p0, p1, v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->dateHeader(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2151
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->closeOutputQuietly()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2152
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public disconnect()Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 2

    .line 1671
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0
.end method

.method public eTag()Ljava/lang/String;
    .registers 2

    const-string v0, "ETag"

    .line 2425
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expires()J
    .registers 3

    const-string v0, "Expires"

    .line 2434
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public followRedirects(Z)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 3256
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 3127
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 3144
    iget-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->form:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_d

    const-string v2, "application/x-www-form-urlencoded"

    .line 3146
    invoke-virtual {p0, v2, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3147
    iput-boolean v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->form:Z

    .line 3149
    :cond_d
    invoke-static {p3}, Lcom/github/kevinsawicki/http/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3151
    :try_start_11
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->openOutput()Lcom/github/kevinsawicki/http/HttpRequest;

    if-nez v0, :cond_1d

    .line 3153
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->write(I)V

    .line 3154
    :cond_1d
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    .line 3155
    iget-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->write(I)V

    if-eqz p2, :cond_40

    .line 3157
    iget-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_40} :catch_41

    :cond_40
    return-object p0

    :catch_41
    move-exception p1

    .line 3159
    new-instance p2, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {p2, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public form(Ljava/util/Map$Entry;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 3095
    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 3111
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 3081
    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->form(Ljava/util/Map;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/util/Map;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 3174
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3175
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3176
    invoke-virtual {p0, v0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    goto :goto_e

    :cond_1e
    return-object p0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    .line 1522
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_a

    .line 1523
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1524
    :cond_a
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_6f

    .line 2278
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6f

    .line 2281
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3b

    .line 2282
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-eqz v3, :cond_6f

    if-ne v3, v1, :cond_1b

    goto :goto_6f

    .line 2286
    :cond_1b
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_23

    :goto_22
    move v5, v1

    :cond_23
    if-ge v3, v5, :cond_6f

    const/16 v7, 0x3d

    .line 2291
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v6, :cond_66

    if-ge v7, v5, :cond_66

    .line 2293
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    add-int/lit8 v7, v7, 0x1

    .line 2294
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2295
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_66

    const/4 p1, 0x2

    if-le v7, p1, :cond_65

    const/4 p1, 0x0

    .line 2297
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x22

    if-ne p2, p1, :cond_65

    sub-int/2addr v7, v4

    .line 2298
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p2, p1, :cond_65

    .line 2299
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_65
    return-object v3

    :cond_66
    add-int/lit8 v3, v5, 0x1

    .line 2305
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v6, :cond_23

    goto :goto_22

    :cond_6f
    :goto_6f
    return-object v0
.end method

.method protected getParams(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_81

    .line 2232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_81

    .line 2235
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3b

    .line 2236
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-eqz v2, :cond_7c

    if-ne v2, v0, :cond_1b

    goto :goto_7c

    .line 2240
    :cond_1b
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_23

    move v4, v0

    .line 2244
    :cond_23
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_28
    :goto_28
    if-ge v2, v4, :cond_7b

    const/16 v7, 0x3d

    .line 2246
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v5, :cond_71

    if-ge v7, v4, :cond_71

    .line 2248
    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2249
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_71

    add-int/lit8 v7, v7, 0x1

    .line 2250
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2251
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_71

    const/4 v9, 0x2

    if-le v8, v9, :cond_6e

    const/4 v9, 0x0

    .line 2253
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x22

    if-ne v10, v9, :cond_6e

    add-int/lit8 v8, v8, -0x1

    .line 2254
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v10, v9, :cond_6e

    .line 2255
    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 2257
    :cond_6e
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    :goto_71
    add-int/lit8 v2, v4, 0x1

    .line 2262
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v5, :cond_28

    move v4, v0

    goto :goto_28

    :cond_7b
    return-object v6

    .line 2238
    :cond_7c
    :goto_7c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 2233
    :cond_81
    :goto_81
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    if-eqz p2, :cond_7

    .line 2078
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    invoke-virtual {p0, p1, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4

    .line 2066
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public header(Ljava/util/Map$Entry;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .line 2102
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2113
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->closeOutputQuietly()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2114
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public headers(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .line 2089
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2090
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2091
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/util/Map$Entry;)Lcom/github/kevinsawicki/http/HttpRequest;

    goto :goto_e

    :cond_1e
    return-object p0
.end method

.method public headers()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2124
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->closeOutputQuietly()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2125
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 2190
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->headers()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2191
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2b

    .line 2194
    :cond_d
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_28

    .line 2195
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 2198
    :cond_28
    sget-object p1, Lcom/github/kevinsawicki/http/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object p1

    .line 2192
    :cond_2b
    :goto_2b
    sget-object p1, Lcom/github/kevinsawicki/http/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object p1
.end method

.method public ifModifiedSince(J)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4

    .line 2506
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-object p0
.end method

.method public ifNoneMatch(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    const-string v0, "If-None-Match"

    .line 2517
    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public ignoreCloseExceptions(Z)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 2

    .line 1537
    iput-boolean p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->ignoreCloseExceptions:Z

    return-object p0
.end method

.method public ignoreCloseExceptions()Z
    .registers 2

    .line 1548
    iget-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->ignoreCloseExceptions:Z

    return v0
.end method

.method public intHeader(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 2164
    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->intHeader(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public intHeader(Ljava/lang/String;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2179
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->closeOutputQuietly()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2180
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isBodyEmpty()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1817
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->contentLength()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public lastModified()J
    .registers 3

    const-string v0, "Last-Modified"

    .line 2443
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public location()Ljava/lang/String;
    .registers 2

    const-string v0, "Location"

    .line 2452
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1658
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->closeOutput()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1659
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 1661
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public method()Ljava/lang/String;
    .registers 2

    .line 3228
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public noContent()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1607
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public notFound()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1637
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x194

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public notModified()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1647
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x130

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public ok()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1587
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected openOutput()Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2723
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    if-eqz v0, :cond_5

    return-object p0

    .line 2725
    :cond_5
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2727
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    .line 2726
    invoke-virtual {p0, v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2728
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/github/kevinsawicki/http/HttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v0, v3}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    return-object p0
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2209
    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parameters(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2222
    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2869
    invoke-virtual {p0, p1, v0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2919
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2842
    invoke-virtual {p0, p1, v0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4

    const/4 v0, 0x0

    .line 2792
    invoke-virtual {p0, p1, v0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2883
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 2856
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2806
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2901
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2902
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/github/kevinsawicki/http/HttpRequest;->incrementTotalSize(J)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_16

    .line 2906
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1

    :catch_16
    move-exception p1

    .line 2904
    new-instance p2, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {p2, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2937
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->startPart()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2938
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2939
    iget-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p4, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    .line 2941
    new-instance p2, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {p2, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2823
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->startPart()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2824
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2825
    iget-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    invoke-virtual {p1, p4}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    .line 2827
    new-instance p2, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {p2, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2956
    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public progress(Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 2

    if-nez p1, :cond_7

    .line 2663
    sget-object p1, Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;->DEFAULT:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

    iput-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->progress:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

    goto :goto_9

    .line 2665
    :cond_7
    iput-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->progress:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

    :goto_9
    return-object p0
.end method

.method public proxyAuthorization(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    const-string v0, "Proxy-Authorization"

    .line 2472
    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public proxyBasic(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 5

    .line 2496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/kevinsawicki/http/HttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->proxyAuthorization(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public readTimeout(I)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 2043
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method public reader()Ljava/io/InputStreamReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1911
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1897
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception p1

    .line 1899
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public receive(Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1951
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_1a

    .line 1955
    new-instance p1, Lcom/github/kevinsawicki/http/HttpRequest$5;

    iget-boolean v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->ignoreCloseExceptions:Z

    invoke-direct {p1, p0, v0, v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$5;-><init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V

    .line 1961
    invoke-virtual {p1}, Lcom/github/kevinsawicki/http/HttpRequest$5;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/kevinsawicki/http/HttpRequest;

    return-object p1

    :catch_1a
    move-exception p1

    .line 1953
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public receive(Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1974
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 1976
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public receive(Ljava/io/PrintStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1989
    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public receive(Ljava/io/Writer;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2026
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v4

    .line 2027
    new-instance v6, Lcom/github/kevinsawicki/http/HttpRequest$7;

    iget-boolean v3, p0, Lcom/github/kevinsawicki/http/HttpRequest;->ignoreCloseExceptions:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/github/kevinsawicki/http/HttpRequest$7;-><init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V

    .line 2033
    invoke-virtual {v6}, Lcom/github/kevinsawicki/http/HttpRequest$7;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/kevinsawicki/http/HttpRequest;

    return-object p1
.end method

.method public receive(Ljava/lang/Appendable;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2001
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v4

    .line 2002
    new-instance v6, Lcom/github/kevinsawicki/http/HttpRequest$6;

    iget-boolean v3, p0, Lcom/github/kevinsawicki/http/HttpRequest;->ignoreCloseExceptions:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/github/kevinsawicki/http/HttpRequest$6;-><init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V

    .line 2015
    invoke-virtual {v6}, Lcom/github/kevinsawicki/http/HttpRequest$6;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/kevinsawicki/http/HttpRequest;

    return-object p1
.end method

.method public referer(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    const-string v0, "Referer"

    .line 2339
    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public send(Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2969
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2970
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/github/kevinsawicki/http/HttpRequest;->incrementTotalSize(J)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_11} :catch_16

    .line 2974
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->send(Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1

    :catch_16
    move-exception p1

    .line 2972
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public send(Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 3001
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->openOutput()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3002
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p1

    .line 3004
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public send(Ljava/io/Reader;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 3020
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->openOutput()Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_1e

    .line 3024
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    .line 3025
    invoke-static {v1}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->access$500(Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 3026
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$10;

    invoke-direct {v1, p0, v0, p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$10;-><init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V

    .line 3032
    invoke-virtual {v1}, Lcom/github/kevinsawicki/http/HttpRequest$10;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/kevinsawicki/http/HttpRequest;

    return-object p1

    :catch_1e
    move-exception p1

    .line 3022
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 3047
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->openOutput()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3048
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    .line 3050
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public send([B)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 2986
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->incrementTotalSize(J)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2987
    :cond_7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->send(Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public server()Ljava/lang/String;
    .registers 2

    const-string v0, "Server"

    .line 2398
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serverError()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1617
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected startPart()Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2740
    iget-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->multipart:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 2741
    iput-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->multipart:Z

    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    .line 2742
    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->contentType(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->openOutput()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2743
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    goto :goto_1f

    .line 2745
    :cond_18
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    :goto_1f
    return-object p0
.end method

.method public stream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1855
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_18

    .line 1857
    :try_start_8
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_41

    :catch_11
    move-exception v0

    .line 1859
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1862
    :cond_18
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_41

    .line 1865
    :try_start_22
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2b

    goto :goto_41

    :catch_2b
    move-exception v0

    .line 1867
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->contentLength()I

    move-result v1

    if-gtz v1, :cond_3b

    .line 1870
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_41

    .line 1868
    :cond_3b
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1874
    :cond_41
    :goto_41
    iget-boolean v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->uncompress:Z

    if-eqz v1, :cond_5f

    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->contentEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_5f

    .line 1878
    :cond_52
    :try_start_52
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_57} :catch_58

    return-object v1

    :catch_58
    move-exception v0

    .line 1880
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trustAllCerts()Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 3189
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3190
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_11

    .line 3191
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 3192
    invoke-static {}, Lcom/github/kevinsawicki/http/HttpRequest;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_11
    return-object p0
.end method

.method public trustAllHosts()Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 3206
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3207
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_11

    .line 3208
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 3209
    invoke-static {}, Lcom/github/kevinsawicki/http/HttpRequest;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_11
    return-object p0
.end method

.method public uncompress(Z)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 2

    .line 1734
    iput-boolean p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->uncompress:Z

    return-object p0
.end method

.method public url()Ljava/net/URL;
    .registers 2

    .line 3219
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public useCaches(Z)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    .line 2349
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-object p0
.end method

.method public useProxy(Ljava/lang/String;I)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4

    .line 3240
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_9

    .line 3243
    iput-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->httpProxyHost:Ljava/lang/String;

    .line 3244
    iput p2, p0, Lcom/github/kevinsawicki/http/HttpRequest;->httpProxyPort:I

    return-object p0

    .line 3241
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The connection has already been created. This method must be called before reading or writing to the request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public userAgent(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 3

    const-string v0, "User-Agent"

    .line 2329
    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2759
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    .line 2774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_17

    const-string p1, "\"; filename=\""

    .line 2776
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const/16 p1, 0x22

    .line 2777
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Content-Disposition"

    invoke-virtual {p0, p2, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    if-eqz p3, :cond_2c

    const-string p1, "Content-Type"

    .line 2780
    invoke-virtual {p0, p1, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    :cond_2c
    const-string p1, "\r\n"

    .line 2781
    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public writer()Ljava/io/OutputStreamWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 3063
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->openOutput()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3064
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    iget-object v2, p0, Lcom/github/kevinsawicki/http/HttpRequest;->output:Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;

    invoke-static {v2}, Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;->access$500(Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    .line 3066
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
