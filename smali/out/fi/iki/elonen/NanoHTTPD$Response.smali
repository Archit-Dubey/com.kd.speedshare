.class public Lfi/iki/elonen/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;,
        Lfi/iki/elonen/NanoHTTPD$Response$Status;,
        Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    }
.end annotation


# instance fields
.field private chunkedTransfer:Z

.field private contentLength:J

.field private data:Ljava/io/InputStream;

.field private encodeAsGzip:Z

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keepAlive:Z

.field private mimeType:Ljava/lang/String;

.field private requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

.field private status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;


# direct methods
.method protected constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 8

    .line 1309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 1310
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 1311
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_1f

    .line 1313
    new-instance p3, Ljava/io/ByteArrayInputStream;

    new-array p4, v0, [B

    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1314
    iput-wide p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    goto :goto_23

    .line 1316
    :cond_1f
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1317
    iput-wide p4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    .line 1319
    :goto_23
    iget-wide p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    const/4 p5, 0x1

    cmp-long v1, p3, p1

    if-gez v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 1320
    iput-boolean p5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    return-void
.end method

.method private static headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1372
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1373
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_9

    :cond_1b
    return v0
.end method

.method private sendBody(Ljava/io/OutputStream;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4000

    long-to-int v2, v0

    .line 1472
    new-array v2, v2, [B

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, p2, v4

    if-nez v6, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :cond_f
    :goto_f
    const-wide/16 v5, 0x0

    cmp-long v7, p2, v5

    if-gtz v7, :cond_17

    if-eqz v4, :cond_28

    :cond_17
    if-eqz v4, :cond_1b

    move-wide v5, v0

    goto :goto_1f

    .line 1475
    :cond_1b
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 1476
    :goto_1f
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    long-to-int v6, v5

    invoke-virtual {v7, v2, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_29

    :cond_28
    return-void

    .line 1480
    :cond_29
    invoke-virtual {p1, v2, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    if-nez v4, :cond_f

    int-to-long v5, v5

    sub-long/2addr p2, v5

    goto :goto_f
.end method

.method private sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1448
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v0, :cond_12

    .line 1449
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, -0x1

    .line 1450
    invoke-direct {p0, p2, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    .line 1451
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    goto :goto_15

    .line 1453
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    :goto_15
    return-void
.end method

.method private sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1438
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v0, v1, :cond_18

    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v0, :cond_18

    .line 1439
    new-instance p2, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;

    invoke-direct {p2, p1}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, -0x1

    .line 1440
    invoke-direct {p0, p2, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    .line 1441
    invoke-virtual {p2}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->finish()V

    goto :goto_1b

    .line 1443
    :cond_18
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    :goto_1b
    return-void
.end method

.method protected static sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;Ljava/util/Map;J)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)J"
        }
    .end annotation

    .line 1488
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "content-length"

    .line 1489
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1491
    :try_start_1c
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_26} :catch_27

    return-wide p0

    :catch_27
    return-wide p2

    .line 1498
    :cond_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Content-Length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-wide p2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1334
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 1326
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    return-void
.end method

.method public getData()Ljava/io/InputStream;
    .registers 2

    .line 1338
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1342
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1343
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1344
    iget-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 1351
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 2

    .line 1355
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public getStatus()Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .registers 2

    .line 1359
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    return-object v0
.end method

.method protected send(Ljava/io/OutputStream;)V
    .registers 9

    .line 1382
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 1383
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    .line 1384
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1387
    :try_start_14
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    if-eqz v2, :cond_147

    .line 1390
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP/1.1 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    invoke-interface {v5}, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_49} :catch_14f

    const-string v3, "\r\n"

    if-eqz v0, :cond_64

    .line 1394
    :try_start_4d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1397
    :cond_64
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v5, "Date"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_92

    .line 1398
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Date: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    :cond_92
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v0, :cond_cf

    .line 1402
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1403
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a0

    .line 1408
    :cond_cf
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v1, "connection"

    invoke-static {v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    if-eqz v1, :cond_ea

    const-string v1, "keep-alive"

    goto :goto_ec

    :cond_ea
    const-string v1, "close"

    :goto_ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1412
    :cond_f9
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-static {v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1413
    iput-boolean v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 1416
    :cond_105
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v0, :cond_112

    const-string v0, "Content-Encoding: gzip\r\n"

    .line 1417
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1418
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->setChunkedTransfer(Z)V

    .line 1421
    :cond_112
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v0, :cond_119

    iget-wide v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    goto :goto_11b

    :cond_119
    const-wide/16 v0, 0x0

    .line 1422
    :goto_11b
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v5, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v4, v5, :cond_12b

    iget-boolean v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v4, :cond_12b

    const-string v4, "Transfer-Encoding: chunked\r\n"

    .line 1423
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_135

    .line 1424
    :cond_12b
    iget-boolean v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-nez v4, :cond_135

    .line 1425
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-static {v2, v4, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;Ljava/util/Map;J)J

    move-result-wide v0

    .line 1427
    :cond_135
    :goto_135
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1429
    invoke-direct {p0, p1, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V

    .line 1430
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1431
    iget-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto :goto_15b

    .line 1388
    :cond_147
    new-instance p1, Ljava/lang/Error;

    const-string v0, "sendResponse(): Status can\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_14f} :catch_14f

    :catch_14f
    move-exception p1

    .line 1433
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Could not send response to the client"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15b
    return-void
.end method

.method public setChunkedTransfer(Z)V
    .registers 2

    .line 1503
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    return-void
.end method

.method public setData(Ljava/io/InputStream;)V
    .registers 2

    .line 1507
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-void
.end method

.method public setGzipEncoding(Z)V
    .registers 2

    .line 1363
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 2

    .line 1367
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    .line 1511
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V
    .registers 2

    .line 1515
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    return-void
.end method

.method public setStatus(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;)V
    .registers 2

    .line 1519
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    return-void
.end method
