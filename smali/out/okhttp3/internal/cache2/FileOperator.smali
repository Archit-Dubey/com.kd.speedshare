.class final Lokhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;
.source "FileOperator.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final byteArray:[B

.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 40
    iput-object v0, p0, Lokhttp3/internal/cache2/FileOperator;->byteArray:[B

    .line 41
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 45
    iput-object p1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public read(JLokio/Buffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_44

    :goto_6
    cmp-long v2, p4, v0

    if-lez v2, :cond_43

    .line 83
    :try_start_a
    iget-object v2, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x2000

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 84
    iget-object v2, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_36

    .line 85
    iget-object v2, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 88
    iget-object v3, p0, Lokhttp3/internal/cache2/FileOperator;->byteArray:[B

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_3c

    int-to-long v2, v2

    add-long/2addr p1, v2

    sub-long/2addr p4, v2

    .line 92
    iget-object v2, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_6

    .line 84
    :cond_36
    :try_start_36
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p1

    .line 92
    iget-object p2, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw p1

    :cond_43
    return-void

    .line 78
    :cond_44
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_4b

    :goto_4a
    throw p1

    :goto_4b
    goto :goto_4a
.end method

.method public write(JLokio/Buffer;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_46

    .line 50
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, p4, v2

    if-gtz v4, :cond_46

    :goto_e
    cmp-long v2, p4, v0

    if-lez v2, :cond_45

    const-wide/16 v2, 0x2000

    .line 55
    :try_start_14
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 56
    iget-object v2, p0, Lokhttp3/internal/cache2/FileOperator;->byteArray:[B

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v4, v3}, Lokio/Buffer;->read([BII)I

    .line 57
    iget-object v2, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 61
    :cond_24
    iget-object v2, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4, p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v2

    int-to-long v4, v2

    add-long/2addr p1, v4

    .line 63
    iget-object v2, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_3e

    if-nez v2, :cond_24

    int-to-long v2, v3

    sub-long/2addr p4, v2

    .line 67
    iget-object v2, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_e

    :catchall_3e
    move-exception p1

    iget-object p2, p0, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw p1

    :cond_45
    return-void

    .line 50
    :cond_46
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_4d

    :goto_4c
    throw p1

    :goto_4d
    goto :goto_4c
.end method
