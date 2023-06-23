.class public abstract Lfi/iki/elonen/NanoHTTPD;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$TempFile;,
        Lfi/iki/elonen/NanoHTTPD$ServerRunnable;,
        Lfi/iki/elonen/NanoHTTPD$ResponseException;,
        Lfi/iki/elonen/NanoHTTPD$Response;,
        Lfi/iki/elonen/NanoHTTPD$Method;,
        Lfi/iki/elonen/NanoHTTPD$IHTTPSession;,
        Lfi/iki/elonen/NanoHTTPD$HTTPSession;,
        Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;,
        Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;,
        Lfi/iki/elonen/NanoHTTPD$CookieHandler;,
        Lfi/iki/elonen/NanoHTTPD$Cookie;,
        Lfi/iki/elonen/NanoHTTPD$ClientHandler;,
        Lfi/iki/elonen/NanoHTTPD$AsyncRunner;
    }
.end annotation


# static fields
.field private static final BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

.field private static final BOUNDARY_REGEX:Ljava/lang/String; = "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final CHARSET_REGEX:Ljava/lang/String; = "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

.field private static final CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_ATTRIBUTE_REGEX:Ljava/lang/String; = "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_REGEX:Ljava/lang/String; = "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_TYPE_REGEX:Ljava/lang/String; = "([ |\t]*content-type[ |\t]*:)(.*)"

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field protected static MIME_TYPES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_STRING_PARAMETER:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"

.field public static final SOCKET_READ_TIMEOUT:I = 0x1388


# instance fields
.field protected asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

.field private final hostname:Ljava/lang/String;

.field private final myPort:I

.field private volatile myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;

.field private serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

.field private tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

    const/4 v1, 0x2

    .line 472
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

    .line 476
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    .line 523
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "([ |\t]*content-type[ |\t]*:)(.*)"

    .line 527
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    .line 531
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    .line 1658
    const-class v0, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1806
    invoke-direct {p0, v0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 1820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1788
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    .line 1821
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    .line 1822
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    .line 1823
    new-instance p1, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$1;)V

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V

    .line 1824
    new-instance p1, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;

    invoke-direct {p1}, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;-><init>()V

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .registers 1

    .line 148
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
    .registers 1

    .line 148
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    return-object p0
.end method

.method static synthetic access$1000(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;
    .registers 1

    .line 148
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .registers 1

    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .registers 1

    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .registers 1

    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .registers 1

    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .registers 1

    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/regex/Pattern;
    .registers 1

    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$800(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;
    .registers 1

    .line 148
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lfi/iki/elonen/NanoHTTPD;)I
    .registers 1

    .line 148
    iget p0, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    return p0
.end method

.method protected static decodeParameters(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1889
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_5a

    .line 1891
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "&"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    :cond_e
    :goto_e
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 1893
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x3d

    .line 1894
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2a

    const/4 v3, 0x0

    .line 1895
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2e

    :cond_2a
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1896
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 1897
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    if-ltz v2, :cond_4d

    add-int/lit8 v2, v2, 0x1

    .line 1899
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4e

    :cond_4d
    const/4 p0, 0x0

    :goto_4e
    if-eqz p0, :cond_e

    .line 1901
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_5a
    return-object v0
.end method

.method protected static decodeParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "NanoHttpd.QUERY_STRING"

    .line 1872
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->decodeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected static decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "UTF8"

    .line 1919
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_12

    :catch_7
    move-exception p0

    .line 1921
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Encoding not supported, ignored"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2e

    .line 1756
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1d

    .line 1759
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->mimeTypes()Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    if-nez p0, :cond_22

    const-string p0, "application/octet-stream"

    :cond_22
    return-object p0
.end method

.method private static loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1679
    :try_start_0
    const-class v0, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 1680
    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1681
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 1682
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_4f

    const/4 v3, 0x0

    .line 1685
    :try_start_1c
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1686
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_2d
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 1690
    :goto_27
    :try_start_27
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_4f

    goto :goto_47

    :catchall_2b
    move-exception p0

    goto :goto_4b

    :catch_2d
    move-exception v4

    .line 1688
    :try_start_2e
    sget-object v5, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not load mimetypes from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_2b

    goto :goto_27

    .line 1692
    :goto_47
    :try_start_47
    invoke-interface {p0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_a

    .line 1690
    :goto_4b
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    throw p0
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4f} :catch_4f

    .line 1695
    :catch_4f
    sget-object p0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no mime types available at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_67
    return-void
.end method

.method public static makeSSLSocketFactory(Ljava/lang/String;[C)Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1737
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 1738
    const-class v1, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 1739
    invoke-virtual {v0, p0, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1740
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    .line 1741
    invoke-virtual {p0, v0, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1742
    invoke-static {v0, p0}, Lfi/iki/elonen/NanoHTTPD;->makeSSLSocketFactory(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p0

    .line 1744
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static makeSSLSocketFactory(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1725
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    invoke-static {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->makeSSLSocketFactory(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1727
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static makeSSLSocketFactory(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1707
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 1708
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string p0, "TLS"

    .line 1709
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    .line 1710
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1711
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    .line 1713
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static mimeTypes()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1666
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    if-nez v0, :cond_28

    .line 1667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string v1, "META-INF/nanohttpd/default-mimetypes.properties"

    .line 1668
    invoke-static {v0, v1}, Lfi/iki/elonen/NanoHTTPD;->loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V

    .line 1669
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string v1, "META-INF/nanohttpd/mimetypes.properties"

    invoke-static {v0, v1}, Lfi/iki/elonen/NanoHTTPD;->loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V

    .line 1670
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1671
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "no mime types found in the classpath! please provide mimetypes.properties"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1674
    :cond_28
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    return-object v0
.end method

.method public static newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 10

    .line 1970
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Response;

    const-wide/16 v4, -0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v6
.end method

.method public static newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 12

    .line 1977
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Response;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v6
.end method

.method public static newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_11

    .line 1985
    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-array v0, v0, [B

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    return-object p0

    :cond_11
    :try_start_11
    const-string v1, "UTF-8"

    .line 1989
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_24

    :catch_18
    move-exception p2

    .line 1991
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "encoding problem, responding nothing"

    invoke-virtual {v1, v2, v3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p2, v0, [B

    .line 1994
    :goto_24
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p2, p2

    int-to-long v1, p2

    invoke-static {p0, p1, v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    return-object p0
.end method

.method public static newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 3

    .line 2002
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/html"

    invoke-static {v0, v1, p0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    return-object p0
.end method

.method private static final safeClose(Ljava/lang/Object;)V
    .registers 4

    if-eqz p0, :cond_32

    .line 1767
    :try_start_2
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_c

    .line 1768
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_32

    .line 1769
    :cond_c
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_16

    .line 1770
    check-cast p0, Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    goto :goto_32

    .line 1771
    :cond_16
    instance-of v0, p0, Ljava/net/ServerSocket;

    if-eqz v0, :cond_20

    .line 1772
    check-cast p0, Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_32

    .line 1774
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown object to close"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_28} :catch_28

    :catch_28
    move-exception p0

    .line 1778
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Could not close"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method public declared-synchronized closeAllConnections()V
    .registers 2

    monitor-enter p0

    .line 1831
    :try_start_1
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->stop()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1832
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$ClientHandler;
    .registers 5

    .line 1845
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;Lfi/iki/elonen/NanoHTTPD$1;)V

    return-object v0
.end method

.method protected createServerRunnable(I)Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
    .registers 4

    .line 1857
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;-><init>(Lfi/iki/elonen/NanoHTTPD;ILfi/iki/elonen/NanoHTTPD$1;)V

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .registers 2

    .line 1952
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public final getListeningPort()I
    .registers 2

    .line 1936
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    :goto_c
    return v0
.end method

.method public getServerSocketFactory()Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;
    .registers 2

    .line 1944
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    return-object v0
.end method

.method public getTempFileManagerFactory()Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
    .registers 2

    .line 1956
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method public final isAlive()Z
    .registers 2

    .line 1940
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->wasStarted()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public makeSecure(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    .registers 4

    .line 1963
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;

    invoke-direct {v0, p1, p2}, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;-><init>(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    return-void
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 9

    const-string v0, "text/plain"

    .line 2016
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2017
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v3

    .line 2018
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v1, v3}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v1, v3}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2020
    :cond_1b
    :try_start_1b
    invoke-interface {p1, v6}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_47
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_1b .. :try_end_1e} :catch_39

    .line 2028
    :cond_1e
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v5

    .line 2029
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NanoHttpd.QUERY_STRING"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lfi/iki/elonen/NanoHTTPD;->serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_39
    move-exception p1

    .line 2024
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v1

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_47
    move-exception p1

    .line 2022
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2053
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "text/plain"

    const-string p3, "Not Found"

    invoke-static {p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V
    .registers 2

    .line 2063
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    return-void
.end method

.method public setServerSocketFactory(Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;)V
    .registers 2

    .line 1948
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    return-void
.end method

.method public setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V
    .registers 2

    .line 2073
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    return-void
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 2083
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->start(I)V

    return-void
.end method

.method public start(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2090
    invoke-virtual {p0, p1, v0}, Lfi/iki/elonen/NanoHTTPD;->start(IZ)V

    return-void
.end method

.method public start(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2104
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->getServerSocketFactory()Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    move-result-object v0

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;->create()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    .line 2105
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 2107
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->createServerRunnable(I)Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    move-result-object p1

    .line 2108
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    .line 2109
    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2110
    iget-object p2, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const-string v0, "NanoHttpd Main Listener"

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2111
    iget-object p2, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 2112
    :goto_2a
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Z

    move-result p2

    if-nez p2, :cond_3e

    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1500(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object p2

    if-nez p2, :cond_3e

    const-wide/16 v0, 0xa

    .line 2114
    :try_start_38
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_2a

    :catchall_3c
    nop

    goto :goto_2a

    .line 2121
    :cond_3e
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1500(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object p2

    if-nez p2, :cond_45

    return-void

    .line 2122
    :cond_45
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1500(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_4b

    :goto_4a
    throw p1

    :goto_4b
    goto :goto_4a
.end method

.method public stop()V
    .registers 5

    .line 2131
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 2132
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closeAll()V

    .line 2133
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1e

    .line 2134
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1e

    :catch_14
    move-exception v0

    .line 2137
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not stop all connections"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method protected useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z
    .registers 3

    .line 1932
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "text/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public final wasStarted()Z
    .registers 2

    .line 2142
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
