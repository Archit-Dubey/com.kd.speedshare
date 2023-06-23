.class public Lfi/iki/elonen/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$IHTTPSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000

.field public static final MAX_HEADER_SIZE:I = 0x400

.field private static final MEMORY_STORE_LIMIT:I = 0x400

.field private static final REQUEST_BUFFER_LEN:I = 0x200


# instance fields
.field private cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inputStream:Ljava/io/BufferedInputStream;

.field private method:Lfi/iki/elonen/NanoHTTPD$Method;

.field private final outputStream:Ljava/io/OutputStream;

.field private parms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private protocolVersion:Ljava/lang/String;

.field private queryParameterString:Ljava/lang/String;

.field private remoteIp:Ljava/lang/String;

.field private rlen:I

.field private splitbyte:I

.field private final tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    .line 569
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 571
    new-instance p1, Ljava/io/BufferedInputStream;

    const/16 p2, 0x2000

    invoke-direct {p1, p3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 572
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .registers 6

    .line 575
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 577
    new-instance p1, Ljava/io/BufferedInputStream;

    const/16 p2, 0x2000

    invoke-direct {p1, p3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 578
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 579
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_28

    :cond_1f
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_28
    :goto_28
    const-string p1, "127.0.0.1"

    :goto_2a
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    .line 580
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .line 589
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 594
    :cond_7
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_a8

    const-string v0, "method"

    .line 599
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 605
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    .line 608
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_40

    add-int/lit8 v4, v2, 0x1

    .line 610
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    .line 611
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_44

    .line 613
    :cond_40
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 620
    :goto_44
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 621
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    goto :goto_60

    :cond_51
    const-string v0, "HTTP/1.1"

    .line 623
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    .line 624
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "no protocol version specified, strange. Assuming HTTP/1.1."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 626
    :goto_60
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_64
    if-eqz v0, :cond_98

    .line 627
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_98

    const/16 v1, 0x3a

    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_93

    .line 630
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_93
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    :cond_98
    const-string p1, "uri"

    .line 635
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 602
    :cond_9e
    new-instance p1, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p3, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw p1

    .line 596
    :cond_a8
    new-instance p1, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p3, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw p1
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b2} :catch_b2

    :catch_b2
    move-exception p1

    .line 637
    new-instance p2, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object p3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d1

    :goto_d0
    throw p2

    :goto_d1
    goto :goto_d0
.end method

.method private decodeMultipartFormData(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 646
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v4

    .line 647
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_15e

    const/16 v5, 0x400

    new-array v7, v5, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 652
    :goto_1a
    array-length v10, v4

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_15d

    .line 653
    aget v10, v4, v9

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 654
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-ge v10, v5, :cond_2f

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    goto :goto_31

    :cond_2f
    const/16 v10, 0x400

    .line 655
    :goto_31
    invoke-virtual {v0, v7, v8, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 656
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v7, v8, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static/range {p2 .. p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v12, v13, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 660
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p1

    .line 662
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_153

    .line 668
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    move-object v5, v15

    move-object v8, v5

    const/16 v16, 0x2

    :goto_5c
    if-eqz v13, :cond_d4

    .line 670
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_d4

    .line 671
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$300()Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 672
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_b1

    .line 673
    invoke-virtual {v11, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 674
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$400()Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 675
    :goto_82
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_af

    move-object/from16 v17, v5

    const/4 v11, 0x1

    .line 676
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v11, "name"

    .line 677
    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a0

    const/4 v11, 0x2

    .line 678
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    :cond_9d
    move-object/from16 v5, v17

    goto :goto_82

    :cond_a0
    const-string v11, "filename"

    .line 679
    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    const/4 v5, 0x2

    .line 680
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    goto :goto_82

    :cond_af
    move-object/from16 v17, v5

    .line 684
    :cond_b1
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$500()Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 685
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_ca

    const/4 v11, 0x2

    .line 686
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto :goto_cb

    :cond_ca
    const/4 v11, 0x2

    .line 688
    :goto_cb
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v16, v16, 0x1

    const/4 v6, 0x2

    const/4 v11, 0x1

    goto :goto_5c

    :cond_d4
    const/4 v11, 0x2

    const/4 v6, 0x0

    :goto_d6
    add-int/lit8 v12, v16, -0x1

    if-lez v16, :cond_e1

    .line 693
    invoke-direct {v1, v7, v6}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->scipOverNewLine([BI)I

    move-result v6

    move/from16 v16, v12

    goto :goto_d6

    :cond_e1
    add-int/lit8 v10, v10, -0x4

    if-ge v6, v10, :cond_149

    .line 699
    aget v10, v4, v9

    add-int/2addr v10, v6

    add-int/lit8 v9, v9, 0x1

    .line 700
    aget v6, v4, v9

    add-int/lit8 v6, v6, -0x4

    .line 702
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-nez v15, :cond_104

    sub-int/2addr v6, v10

    .line 705
    new-array v5, v6, [B

    .line 706
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 707
    new-instance v6, Ljava/lang/String;

    move-object/from16 v12, p2

    invoke-direct {v6, v5, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_143

    :cond_104
    move-object/from16 v12, p2

    sub-int/2addr v6, v10

    .line 710
    invoke-direct {v1, v0, v10, v6, v5}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 711
    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_115

    .line 712
    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_140

    :cond_115
    const/4 v10, 0x2

    .line 715
    :goto_116
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12e

    add-int/lit8 v10, v10, 0x1

    goto :goto_116

    .line 718
    :cond_12e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :goto_140
    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_143
    const/16 v5, 0x400

    const/4 v6, 0x2

    const/4 v8, 0x0

    goto/16 :goto_1a

    .line 697
    :cond_149
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "Multipart header size exceeds MAX_HEADER_SIZE."

    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_153
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary."

    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0

    :cond_15d
    return-void

    .line 648
    :cond_15e
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings."

    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0
    :try_end_168
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_8 .. :try_end_168} :catch_175
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_168} :catch_168

    :catch_168
    move-exception v0

    .line 726
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v2

    :catch_175
    move-exception v0

    .line 724
    goto :goto_178

    :goto_177
    throw v0

    :goto_178
    goto :goto_177
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_7

    .line 745
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    return-void

    .line 749
    :cond_7
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    .line 750
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "&"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :goto_10
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 752
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3d

    .line 753
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3d

    const/4 v3, 0x0

    .line 755
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 757
    :cond_3d
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_49
    return-void
.end method

.method private findHeaderEnd([BI)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p2, :cond_30

    .line 888
    aget-byte v3, p1, v1

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ne v3, v4, :cond_23

    aget-byte v3, p1, v2

    if-ne v3, v5, :cond_23

    add-int/lit8 v3, v1, 0x3

    if-ge v3, p2, :cond_23

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p1, v6

    if-ne v6, v4, :cond_23

    aget-byte v3, p1, v3

    if-ne v3, v5, :cond_23

    add-int/lit8 v1, v1, 0x4

    return v1

    .line 893
    :cond_23
    aget-byte v3, p1, v1

    if-ne v3, v5, :cond_2e

    aget-byte v3, p1, v2

    if-ne v3, v5, :cond_2e

    add-int/lit8 v1, v1, 0x2

    return v1

    :cond_2e
    move v1, v2

    goto :goto_2

    :cond_30
    return v0
.end method

.method private getAttributeFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1084
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1085
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    :cond_f
    return-object p3
.end method

.method private getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .registers 13

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 908
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, p2

    if-ge v2, v3, :cond_b

    return-object v1

    .line 913
    :cond_b
    array-length v2, p2

    add-int/lit16 v2, v2, 0x1000

    new-array v3, v2, [B

    .line 915
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v2, :cond_1b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    goto :goto_1c

    :cond_1b
    move v4, v2

    .line 916
    :goto_1c
    invoke-virtual {p1, v3, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 917
    array-length v5, p2

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    :cond_22
    const/4 v6, 0x0

    :goto_23
    if-ge v6, v4, :cond_4c

    const/4 v7, 0x0

    .line 922
    :goto_26
    array-length v8, p2

    if-ge v7, v8, :cond_49

    add-int v8, v6, v7

    .line 923
    aget-byte v8, v3, v8

    aget-byte v9, p2, v7

    if-eq v8, v9, :cond_32

    goto :goto_49

    .line 925
    :cond_32
    array-length v8, p2

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_46

    .line 927
    array-length v8, v1

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [I

    .line 928
    array-length v9, v1

    invoke-static {v1, v0, v8, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    array-length v1, v1

    add-int v9, v5, v6

    aput v9, v8, v1

    move-object v1, v8

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_49
    :goto_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_4c
    add-int/2addr v5, v4

    .line 937
    array-length v4, p2

    sub-int v4, v2, v4

    array-length v6, p2

    invoke-static {v3, v4, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    array-length v4, p2

    sub-int v4, v2, v4

    .line 941
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v6, v4, :cond_61

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 942
    :cond_61
    array-length v6, p2

    invoke-virtual {p1, v3, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-gtz v4, :cond_22

    return-object v1
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .registers 4

    .line 979
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object v0

    .line 980
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    move-exception v0

    .line 982
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;
    .registers 8

    if-lez p3, :cond_44

    const/4 v0, 0x0

    .line 1097
    :try_start_3
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v1, p4}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object p4

    .line 1098
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1099
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-interface {p4}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_39
    .catchall {:try_start_3 .. :try_end_16} :catchall_37

    .line 1100
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1101
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int/2addr p2, p3

    invoke-virtual {v2, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1103
    invoke-interface {p4}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2d} :catch_34
    .catchall {:try_start_16 .. :try_end_2d} :catchall_31

    .line 1107
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto :goto_46

    :catchall_31
    move-exception p1

    move-object v0, v1

    goto :goto_40

    :catch_34
    move-exception p1

    move-object v0, v1

    goto :goto_3a

    :catchall_37
    move-exception p1

    goto :goto_40

    :catch_39
    move-exception p1

    .line 1105
    :goto_3a
    :try_start_3a
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 1107
    :goto_40
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    throw p1

    :cond_44
    const-string p1, ""

    :goto_46
    return-object p1
.end method

.method private scipOverNewLine([BI)I
    .registers 5

    .line 731
    :goto_0
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_9
    add-int/lit8 p2, p2, 0x1

    return p2
.end method


# virtual methods
.method public execute()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "connection"

    const-string v1, "text/plain"

    const-string v2, "NanoHttpd Shutdown"

    const/16 v3, 0x2000

    const/4 v4, 0x0

    :try_start_9
    new-array v5, v3, [B

    const/4 v6, 0x0

    .line 772
    iput v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 773
    iput v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 776
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v7, v3}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_15
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_15} :catch_1ad
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_15} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_183
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_9 .. :try_end_15} :catch_163
    .catchall {:try_start_9 .. :try_end_15} :catchall_161

    .line 778
    :try_start_15
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v7, v5, v6, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_151
    .catch Ljava/net/SocketException; {:try_start_15 .. :try_end_1b} :catch_1ad
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_1b} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_183
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_15 .. :try_end_1b} :catch_163
    .catchall {:try_start_15 .. :try_end_1b} :catchall_161

    const/4 v8, -0x1

    if-eq v7, v8, :cond_141

    :goto_1e
    if-lez v7, :cond_3b

    .line 791
    :try_start_20
    iget v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    add-int/2addr v8, v7

    iput v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 792
    invoke-direct {p0, v5, v8}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v7

    iput v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    if-lez v7, :cond_2e

    goto :goto_3b

    .line 796
    :cond_2e
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    iget v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    iget v9, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    rsub-int v9, v9, 0x2000

    invoke-virtual {v7, v5, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    goto :goto_1e

    .line 799
    :cond_3b
    :goto_3b
    iget v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v3, v7, :cond_4e

    .line 800
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->reset()V

    .line 801
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    iget v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 804
    :cond_4e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    .line 805
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    if-nez v3, :cond_61

    .line 806
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    goto :goto_66

    .line 808
    :cond_61
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 812
    :goto_66
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget v9, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    invoke-direct {v8, v5, v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 815
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 816
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {p0, v3, v5, v7, v8}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 818
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    if-eqz v3, :cond_99

    .line 819
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v7, "remote-addr"

    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v7, "http-client-ip"

    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_99
    const-string v3, "method"

    .line 823
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v3

    iput-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eqz v3, :cond_137

    const-string v3, "uri"

    .line 828
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    .line 830
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {v3, v5, v7}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/util/Map;)V

    iput-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    .line 832
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 833
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    const-string v7, "HTTP/1.1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_dd

    if-eqz v3, :cond_db

    const-string v5, "(?i).*close.*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dd

    :cond_db
    const/4 v3, 0x1

    goto :goto_de

    :cond_dd
    const/4 v3, 0x0

    .line 840
    :goto_de
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v5, p0}, Lfi/iki/elonen/NanoHTTPD;->serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v4

    if-eqz v4, :cond_12d

    .line 847
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v8, "accept-encoding"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 848
    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    invoke-virtual {v8, v4}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->unloadQueue(Lfi/iki/elonen/NanoHTTPD$Response;)V

    .line 849
    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v4, v8}, Lfi/iki/elonen/NanoHTTPD$Response;->setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V

    .line 850
    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v8, v4}, Lfi/iki/elonen/NanoHTTPD;->useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z

    move-result v8

    if-eqz v8, :cond_10d

    if-eqz v5, :cond_10d

    const-string v8, "gzip"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10d

    const/4 v6, 0x1

    :cond_10d
    invoke-virtual {v4, v6}, Lfi/iki/elonen/NanoHTTPD$Response;->setGzipEncoding(Z)V

    .line 851
    invoke-virtual {v4, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->setKeepAlive(Z)V

    .line 852
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v4, v5}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    if-eqz v3, :cond_127

    const-string v3, "close"

    .line 854
    invoke-virtual {v4, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_127

    goto :goto_17a

    .line 855
    :cond_127
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_12d
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_137
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "BAD REQUEST: Syntax error."

    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_141
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 787
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 788
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :catch_151
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 781
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 782
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_161
    .catch Ljava/net/SocketException; {:try_start_20 .. :try_end_161} :catch_1ad
    .catch Ljava/net/SocketTimeoutException; {:try_start_20 .. :try_end_161} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_161} :catch_183
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_20 .. :try_end_161} :catch_163
    .catchall {:try_start_20 .. :try_end_161} :catchall_161

    :catchall_161
    move-exception v0

    goto :goto_1af

    :catch_163
    move-exception v0

    .line 870
    :try_start_164
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v2

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 872
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V
    :try_end_17a
    .catchall {:try_start_164 .. :try_end_17a} :catchall_161

    .line 874
    :goto_17a
    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 875
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    goto :goto_1aa

    :catch_183
    move-exception v0

    .line 866
    :try_start_184
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .line 867
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 868
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto :goto_17a

    :goto_1aa
    return-void

    :catch_1ab
    move-exception v0

    .line 864
    throw v0

    :catch_1ad
    move-exception v0

    .line 859
    throw v0
    :try_end_1af
    .catchall {:try_start_184 .. :try_end_1af} :catchall_161

    .line 874
    :goto_1af
    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 875
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    goto :goto_1b9

    :goto_1b8
    throw v0

    :goto_1b9
    goto :goto_1b8
.end method

.method public getBodySize()J
    .registers 3

    .line 996
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 997
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 998
    :cond_17
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v0, v1, :cond_20

    sub-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0

    :cond_20
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCookies()Lfi/iki/elonen/NanoHTTPD$CookieHandler;
    .registers 2

    .line 949
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 954
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 959
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public final getMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 2

    .line 964
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public final getParms()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryParameterString()Ljava/lang/String;
    .registers 2

    .line 974
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .registers 2

    .line 988
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public parseBody(Ljava/util/Map;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 1008
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getBodySize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    cmp-long v6, v2, v4

    if-gez v6, :cond_1b

    .line 1014
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1015
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v1

    goto :goto_21

    .line 1017
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v5
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_114

    move-object v4, v1

    move-object v8, v5

    :goto_21
    const/16 v6, 0x200

    :try_start_23
    new-array v6, v6, [B

    .line 1023
    :cond_25
    :goto_25
    iget v9, v7, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    if-ltz v9, :cond_47

    cmp-long v9, v2, v10

    if-lez v9, :cond_47

    .line 1024
    iget-object v9, v7, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    const-wide/16 v10, 0x200

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v9, v6, v12, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    iput v9, v7, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    int-to-long v10, v9

    sub-long/2addr v2, v10

    if-lez v9, :cond_25

    .line 1027
    invoke-interface {v5, v6, v12, v9}, Ljava/io/DataOutput;->write([BII)V

    goto :goto_25

    :cond_47
    if-eqz v4, :cond_57

    .line 1033
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v2, v12, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_55
    move-object v4, v2

    goto :goto_6b

    .line 1035
    :cond_57
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    sget-object v14, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v15, 0x0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v17

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 1036
    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_55

    .line 1041
    :goto_6b
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    iget-object v3, v7, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v2, v3}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    const-string v2, ""

    .line 1043
    iget-object v3, v7, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v5, "content-type"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_95

    .line 1047
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ",; "

    invoke-direct {v5, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 1049
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_96

    :cond_95
    move-object v5, v1

    :cond_96
    :goto_96
    const-string v6, "multipart/form-data"

    .line 1053
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 1055
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 1059
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$600()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-direct {v7, v3, v2, v1}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getAttributeFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$700()Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v5, "US-ASCII"

    invoke-direct {v7, v3, v1, v5}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getAttributeFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v7, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeMultipartFormData(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_10d

    .line 1056
    :cond_c0
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_ca
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 1063
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1064
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "application/x-www-form-urlencoded"

    .line 1066
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 1067
    iget-object v0, v7, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    invoke-direct {v7, v1, v0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_10d

    .line 1068
    :cond_ea
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10d

    const-string v2, "postData"

    .line 1072
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10d

    .line 1075
    :cond_f6
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    iget-object v3, v7, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v2, v3}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string v2, "content"

    .line 1076
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v7, v4, v12, v3, v1}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10d
    .catchall {:try_start_23 .. :try_end_10d} :catchall_111

    .line 1079
    :cond_10d
    :goto_10d
    invoke-static {v8}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    return-void

    :catchall_111
    move-exception v0

    move-object v1, v8

    goto :goto_115

    :catchall_114
    move-exception v0

    :goto_115
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto :goto_11a

    :goto_119
    throw v0

    :goto_11a
    goto :goto_119
.end method
