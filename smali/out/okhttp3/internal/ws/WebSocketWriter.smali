.class final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field activeWriter:Z

.field final buffer:Lokio/Buffer;

.field final frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lokio/BufferedSink;

.field writerClosed:Z


# direct methods
.method constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    .line 54
    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lokhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    if-eqz p2, :cond_36

    if-eqz p3, :cond_2e

    .line 64
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 65
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    .line 66
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    const/4 p2, 0x0

    if-eqz p1, :cond_22

    const/4 p3, 0x4

    new-array p3, p3, [B

    goto :goto_23

    :cond_22
    move-object p3, p2

    .line 69
    :goto_23
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-eqz p1, :cond_2b

    const/16 p1, 0x2000

    new-array p2, p1, [B

    .line 70
    :cond_2b
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    return-void

    .line 63
    :cond_2e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "random == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_36
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeControlFrame(ILokio/ByteString;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_5b

    .line 114
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v5, v1, v3

    if-gtz v5, :cond_53

    or-int/lit16 p1, p1, 0x80

    .line 121
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v1, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 124
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_43

    or-int/lit16 p1, v0, 0x80

    .line 126
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 128
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 129
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 131
    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    .line 132
    array-length p2, p1

    int-to-long v2, p2

    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 133
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p2, p1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    goto :goto_4d

    .line 135
    :cond_43
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 136
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 139
    :goto_4d
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void

    .line 116
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload size must be less than or equal to 125"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_5b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method newMessageSink(IJ)Lokio/Sink;
    .registers 6

    .line 147
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 153
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 154
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-wide p2, p1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 155
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-boolean v0, p1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 156
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 158
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    return-object p1

    .line 148
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Another message writer is active. Did you call close()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writeClose(ILokio/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-nez p1, :cond_6

    if-eqz p2, :cond_1c

    :cond_6
    if-eqz p1, :cond_b

    .line 94
    invoke-static {p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 96
    :cond_b
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 97
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    if-eqz p2, :cond_18

    .line 99
    invoke-virtual {v0, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 101
    :cond_18
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    :cond_1c
    const/16 p1, 0x8

    const/4 p2, 0x1

    .line 105
    :try_start_1f
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_25

    .line 107
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    return-void

    :catchall_25
    move-exception p1

    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw p1
.end method

.method writeMessageFrame(IJZZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_9b

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    if-eqz p5, :cond_d

    or-int/lit16 p1, p1, 0x80

    .line 169
    :cond_d
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p4, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 172
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_19

    const/16 p1, 0x80

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    const-wide/16 p4, 0x7d

    cmp-long v1, p2, p4

    if-gtz v1, :cond_28

    long-to-int p4, p2

    or-int/2addr p1, p4

    .line 177
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p4, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_49

    :cond_28
    const-wide/32 p4, 0xffff

    cmp-long v1, p2, p4

    if-gtz v1, :cond_3d

    or-int/lit8 p1, p1, 0x7e

    .line 180
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p4, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 181
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    long-to-int p4, p2

    invoke-interface {p1, p4}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    goto :goto_49

    :cond_3d
    or-int/lit8 p1, p1, 0x7f

    .line 184
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p4, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 185
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p1, p2, p3}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    .line 188
    :goto_49
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_8e

    .line 189
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextBytes([B)V

    .line 190
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {p1, p4}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    const-wide/16 p4, 0x0

    :goto_5d
    cmp-long p1, p4, p2

    if-gez p1, :cond_95

    .line 193
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p1, v1

    .line 194
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-virtual {v1, v2, v0, p1}, Lokio/Buffer;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_88

    .line 196
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    int-to-long v7, p1

    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    move-wide v2, v7

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 197
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {v1, v2, v0, p1}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    add-long/2addr p4, v7

    goto :goto_5d

    .line 195
    :cond_88
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 201
    :cond_8e
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-interface {p1, p4, p2, p3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 204
    :cond_95
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    return-void

    .line 163
    :cond_9b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_a4

    :goto_a3
    throw p1

    :goto_a4
    goto :goto_a3
.end method

.method writePing(Lokio/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 75
    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    return-void
.end method

.method writePong(Lokio/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 80
    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    return-void
.end method
