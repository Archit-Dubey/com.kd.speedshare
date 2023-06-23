.class public Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;
.super Lfi/iki/elonen/NanoHTTPD$Response;
.source "WebShareServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/WebShareServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ZipBundleResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse$ChunkedOutputStream;
    }
.end annotation


# instance fields
.field private mData:Ljava/io/InputStream;

.field private mEncodeAsGzip:Z

.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/TransferObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAlive:Z

.field private mMimeType:Ljava/lang/String;

.field private mRequestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

.field private mStatus:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/WebShareServer;


# direct methods
.method protected constructor <init>(Lcom/genonbeta/TrebleShot/service/WebShareServer;Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Response$IStatus;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/TransferObject;",
            ">;)V"
        }
    .end annotation

    .line 675
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->this$0:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    .line 676
    new-instance v3, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse$1;

    invoke-direct {v3, p1}, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse$1;-><init>(Lcom/genonbeta/TrebleShot/service/WebShareServer;)V

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    .line 666
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mHeader:Ljava/util/Map;

    .line 685
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mStatus:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 686
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mMimeType:Ljava/lang/String;

    .line 687
    iput-object p4, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mFiles:Ljava/util/List;

    const/4 p1, 0x1

    .line 688
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mKeepAlive:Z

    return-void
.end method

.method private sendBody(Ljava/io/OutputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v1, v0, [B

    .line 789
    new-instance v2, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse$ChunkedOutputStream;

    invoke-direct {v2, p0, p1}, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse$ChunkedOutputStream;-><init>(Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;Ljava/io/OutputStream;)V

    .line 790
    new-instance p1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    .line 791
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 794
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 796
    :try_start_24
    iget-object v6, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->this$0:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    invoke-static {v6}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->access$100(Lcom/genonbeta/TrebleShot/service/WebShareServer;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v5, Lcom/genonbeta/TrebleShot/object/TransferObject;->file:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/genonbeta/android/framework/io/StreamInfo;->getStreamInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/StreamInfo;

    move-result-object v6

    .line 797
    invoke-virtual {v6}, Lcom/genonbeta/android/framework/io/StreamInfo;->openInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 799
    new-instance v7, Ljava/util/zip/ZipEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    if-eqz v9, :cond_57

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_59

    :cond_57
    const-string v9, ""

    :goto_59
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/object/TransferObject;->getComparableDate()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 804
    invoke-virtual {p1, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 807
    :cond_72
    :goto_72
    invoke-virtual {v6, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_82

    if-lez v5, :cond_72

    .line 809
    invoke-virtual {p1, v1, v3, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 810
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    goto :goto_72

    .line 814
    :cond_82
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 815
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_88} :catch_89

    goto :goto_18

    :catch_89
    move-exception v5

    .line 817
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 821
    :cond_8e
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 822
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 823
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse$ChunkedOutputStream;->finish()V

    .line 824
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 693
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mHeader:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 699
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 2

    .line 705
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mRequestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public getStatus()Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mStatus:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    return-object v0
.end method

.method protected send(Ljava/io/OutputStream;)V
    .registers 8

    .line 747
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 748
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    .line 749
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 752
    :try_start_16
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    move-result-object v2

    if-eqz v2, :cond_10d

    .line 755
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    move-result-object v4

    invoke-interface {v4}, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4f} :catch_115

    const-string v3, "\r\n"

    if-eqz v0, :cond_6a

    .line 759
    :try_start_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6a
    const-string v0, "Date"

    .line 761
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_92

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    :cond_92
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 765
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mHeader:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 766
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9c

    .line 769
    :cond_cb
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mHeader:Ljava/util/Map;

    const-string v1, "connection"

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->access$000(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mKeepAlive:Z

    if-eqz v1, :cond_e6

    const-string v1, "keep-alive"

    goto :goto_e8

    :cond_e6
    const-string v1, "close"

    :goto_e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    :cond_f5
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mRequestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v0, v1, :cond_100

    const-string v0, "Transfer-Encoding: chunked\r\n"

    .line 773
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    :cond_100
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 777
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->sendBody(Ljava/io/OutputStream;)V

    .line 778
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_121

    .line 753
    :cond_10d
    new-instance p1, Ljava/lang/Error;

    const-string v0, "sendResponse(): Status can\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_115} :catch_115

    :catch_115
    move-exception p1

    .line 780
    const-class v0, Lcom/genonbeta/TrebleShot/service/WebShareServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not send response to the client"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_121
    return-void
.end method

.method public setGzipEncoding(Z)V
    .registers 2

    .line 717
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mEncodeAsGzip:Z

    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 2

    .line 723
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mKeepAlive:Z

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    .line 729
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V
    .registers 2

    .line 735
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mRequestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    return-void
.end method

.method public setStatus(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;)V
    .registers 2

    .line 741
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;->mStatus:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    return-void
.end method
