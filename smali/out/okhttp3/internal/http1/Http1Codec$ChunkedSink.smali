.class final Lokhttp3/internal/http1/Http1Codec$ChunkedSink;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field private final timeout:Lokio/ForwardingTimeout;


# direct methods
.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;)V
    .registers 3

    .line 318
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance p1, Lokio/ForwardingTimeout;

    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-direct {p1, v0}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokio/ForwardingTimeout;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 342
    :try_start_8
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    .line 343
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 344
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http1/Http1Codec;->detachTimeout(Lokio/ForwardingTimeout;)V

    .line 345
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    iput v1, v0, Lokhttp3/internal/http1/Http1Codec;->state:I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    .line 346
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 336
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 337
    :cond_7
    :try_start_7
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    .line 338
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 322
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    if-nez v0, :cond_2a

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-void

    .line 329
    :cond_b
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2, p3}, Lokio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;

    .line 330
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 331
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p1, p2, p3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 332
    iget-object p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object p1, p1, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    return-void

    .line 326
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
