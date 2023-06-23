.class public Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
.super Ljava/lang/Object;
.source "CoolSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;
    }
.end annotation


# instance fields
.field private mId:I

.field private mSocket:Ljava/net/Socket;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 469
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    invoke-direct {p0, v0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;-><init>(Ljava/net/Socket;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 480
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;-><init>(Ljava/net/Socket;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .registers 3

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 460
    iput v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->mTimeout:I

    .line 461
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->mId:I

    .line 489
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->mSocket:Ljava/net/Socket;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;I)V
    .registers 3

    .line 500
    invoke-direct {p0, p1}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;-><init>(Ljava/net/Socket;)V

    .line 501
    invoke-virtual {p0, p2}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->setTimeout(I)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getTimeout()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 513
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 515
    :cond_12
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 516
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 597
    instance-of v0, p1, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_15

    :cond_11
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_15
    return p1
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 535
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_32

    .line 536
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/genonbeta/CoolSocket/CoolSocket;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Connections should be closed before their references are being destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_32
    return-void
.end method

.method public getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 547
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getClientAddress()Ljava/lang/String;
    .registers 2

    .line 556
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 566
    iget v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->mId:I

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public getTimeout()I
    .registers 2

    .line 585
    iget v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->mTimeout:I

    return v0
.end method

.method public receive()Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x1fa0

    new-array v0, v0, [B

    .line 617
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getTimeout()I

    move-result v1

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getTimeout()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    goto :goto_19

    :cond_18
    move-wide v4, v2

    .line 619
    :goto_19
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 620
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 621
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 623
    new-instance v8, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;

    invoke-direct {v8, p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;-><init>(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V

    .line 624
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v9

    iput-object v9, v8, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->remoteAddress:Ljava/net/SocketAddress;

    .line 627
    :cond_3a
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_8e

    .line 628
    iget-wide v10, v8, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->totalLength:J

    const/4 v12, 0x0

    cmp-long v13, v10, v2

    if-eqz v13, :cond_4e

    .line 629
    invoke-virtual {v7, v0, v12, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 630
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_8e

    .line 632
    :cond_4e
    invoke-virtual {v6, v0, v12, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 633
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 635
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\nHEADER_END\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 636
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    .line 637
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 639
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v12, "length"

    .line 640
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v8, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->totalLength:J

    .line 641
    iput-object v11, v8, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->headerIndex:Lorg/json/JSONObject;

    .line 643
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    if-ge v10, v11, :cond_8e

    add-int/lit8 v10, v10, 0xc

    .line 647
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_8e
    :goto_8e
    cmp-long v9, v4, v2

    if-eqz v9, :cond_a3

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-gtz v11, :cond_9b

    goto :goto_a3

    .line 653
    :cond_9b
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Read timed out!"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_a3
    :goto_a3
    iget-wide v9, v8, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->totalLength:J

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    int-to-long v11, v11

    cmp-long v13, v9, v11

    if-eqz v13, :cond_b6

    iget-wide v9, v8, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->totalLength:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_3a

    .line 657
    :cond_b6
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->response:Ljava/lang/String;

    return-object v8
.end method

.method public reply(Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    new-array p1, v0, [B

    goto :goto_a

    .line 674
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 676
    :goto_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 677
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 679
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    array-length v4, p1

    const-string v5, "length"

    .line 680
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nHEADER_END\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    const/16 v2, 0x1fa0

    new-array v2, v2, [B

    .line 687
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getTimeout()I

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_53

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getTimeout()I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    goto :goto_54

    :cond_53
    move-wide v7, v4

    .line 689
    :goto_54
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 690
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->getSocket()Ljava/net/Socket;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {p1, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 692
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 693
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 696
    :cond_70
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_79

    .line 697
    invoke-virtual {p1, v2, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_79
    cmp-long v9, v7, v4

    if-eqz v9, :cond_8e

    .line 699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-gtz v11, :cond_86

    goto :goto_8e

    .line 700
    :cond_86
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string v0, "Read timed out!"

    invoke-direct {p1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8e
    :goto_8e
    if-ne v1, v6, :cond_70

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 711
    iput p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->mId:I

    return-void
.end method

.method public setTimeout(I)V
    .registers 2

    .line 721
    iput p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;->mTimeout:I

    return-void
.end method
