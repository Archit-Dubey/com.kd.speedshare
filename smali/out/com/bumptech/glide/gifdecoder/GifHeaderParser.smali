.class public Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# static fields
.field static final DEFAULT_FRAME_DELAY:I = 0xa

.field private static final DESCRIPTOR_MASK_INTERLACE_FLAG:I = 0x40

.field private static final DESCRIPTOR_MASK_LCT_FLAG:I = 0x80

.field private static final DESCRIPTOR_MASK_LCT_SIZE:I = 0x7

.field private static final EXTENSION_INTRODUCER:I = 0x21

.field private static final GCE_DISPOSAL_METHOD_SHIFT:I = 0x2

.field private static final GCE_MASK_DISPOSAL_METHOD:I = 0x1c

.field private static final GCE_MASK_TRANSPARENT_COLOR_FLAG:I = 0x1

.field private static final IMAGE_SEPARATOR:I = 0x2c

.field private static final LABEL_APPLICATION_EXTENSION:I = 0xff

.field private static final LABEL_COMMENT_EXTENSION:I = 0xfe

.field private static final LABEL_GRAPHIC_CONTROL_EXTENSION:I = 0xf9

.field private static final LABEL_PLAIN_TEXT_EXTENSION:I = 0x1

.field private static final LSD_MASK_GCT_FLAG:I = 0x80

.field private static final LSD_MASK_GCT_SIZE:I = 0x7

.field private static final MASK_INT_LOWEST_BYTE:I = 0xff

.field private static final MAX_BLOCK_SIZE:I = 0x100

.field static final MIN_FRAME_DELAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GifHeaderParser"

.field private static final TRAILER:I = 0x3b


# instance fields
.field private final block:[B

.field private blockSize:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private rawData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 121
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private err()Z
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private read()I
    .registers 3

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    and-int/lit16 v0, v0, 0xff

    goto :goto_f

    .line 499
    :catch_9
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private readBitmap()V
    .registers 9

    .line 303
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    .line 304
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 306
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    .line 320
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    .line 322
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 323
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_49

    const/4 v2, 0x1

    :cond_49
    iput-boolean v2, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    if-eqz v1, :cond_58

    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0, v4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    goto :goto_5f

    .line 328
    :cond_58
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    .line 332
    :goto_5f
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    .line 335
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skipImageData()V

    .line 337
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_75

    return-void

    .line 341
    :cond_75
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 343
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readBlock()V
    .registers 7

    .line 470
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-lez v0, :cond_4f

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 475
    :goto_a
    :try_start_a
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-ge v0, v2, :cond_4f

    .line 476
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    sub-int/2addr v1, v0

    .line 477
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    add-int/2addr v0, v1

    goto :goto_a

    :catch_1a
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "GifHeaderParser"

    .line 482
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Reading Block n: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " count: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blockSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    :cond_4a
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    :cond_4f
    return-void
.end method

.method private readColorTable(I)[I
    .registers 11

    mul-int/lit8 v0, p1, 0x3

    .line 418
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 421
    :try_start_5
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v2, p1, :cond_48

    add-int/lit8 v4, v3, 0x1

    .line 429
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 430
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 431
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 432
    aput v3, v1, v2
    :try_end_31
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_31} :catch_34

    move v3, v6

    move v2, v7

    goto :goto_10

    :catch_34
    move-exception p1

    const-string v0, "GifHeaderParser"

    const/4 v2, 0x3

    .line 435
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "Format Error Reading Color Table"

    .line 436
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    :cond_43
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v0, 0x1

    iput v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    :cond_48
    return-object v1
.end method

.method private readContents()V
    .registers 2

    const v0, 0x7fffffff

    .line 193
    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readContents(I)V

    return-void
.end method

.method private readContents(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_94

    .line 202
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v2

    if-nez v2, :cond_94

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-gt v2, p1, :cond_94

    .line 203
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_28

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_26

    .line 254
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput v4, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_2

    :cond_26
    const/4 v1, 0x1

    goto :goto_2

    .line 210
    :cond_28
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    if-nez v2, :cond_37

    .line 211
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    new-instance v3, Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifFrame;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 213
    :cond_37
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBitmap()V

    goto :goto_2

    .line 216
    :cond_3b
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    if-eq v2, v4, :cond_8f

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_81

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7d

    const/16 v3, 0xff

    if-eq v2, v3, :cond_51

    .line 244
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto :goto_2

    .line 224
    :cond_51
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBlock()V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_5a
    const/16 v4, 0xb

    if-ge v3, v4, :cond_69

    .line 227
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 229
    :cond_69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 230
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readNetscapeExt()V

    goto :goto_2

    .line 233
    :cond_79
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto :goto_2

    .line 237
    :cond_7d
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto :goto_2

    .line 220
    :cond_81
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    new-instance v3, Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifFrame;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 221
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readGraphicControlExt()V

    goto/16 :goto_2

    .line 240
    :cond_8f
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto/16 :goto_2

    :cond_94
    return-void
.end method

.method private readGraphicControlExt()V
    .registers 5

    .line 264
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    .line 276
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 280
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_20

    .line 282
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 284
    :cond_20
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    and-int/2addr v0, v2

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    iput-boolean v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    .line 286
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_35

    const/16 v0, 0xa

    .line 291
    :cond_35
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    .line 295
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    return-void
.end method

.method private readHeader()V
    .registers 4

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x6

    if-ge v1, v2, :cond_14

    .line 368
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 370
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 371
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    return-void

    .line 374
    :cond_26
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readLSD()V

    .line 375
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-boolean v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctFlag:Z

    if-eqz v0, :cond_4b

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 376
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctSize:I

    invoke-direct {p0, v1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    aget v1, v1, v2

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    :cond_4b
    return-void
.end method

.method private readLSD()V
    .registers 7

    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 399
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    iput-boolean v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctFlag:Z

    .line 401
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    int-to-double v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctSize:I

    .line 403
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    .line 405
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->pixelAspect:I

    return-void
.end method

.method private readNetscapeExt()V
    .registers 4

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBlock()V

    .line 352
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 354
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 355
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 356
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    .line 358
    :cond_1b
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-lez v0, :cond_25

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_25
    return-void
.end method

.method private readShort()I
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private reset()V
    .registers 3

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 152
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 153
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 154
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private skip()V
    .registers 4

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    .line 461
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 462
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private skipImageData()V
    .registers 1

    .line 449
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    .line 451
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 147
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    return-void
.end method

.method public isAnimated()Z
    .registers 3

    .line 182
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readHeader()V

    .line 183
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    .line 184
    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readContents(I)V

    .line 186
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_27

    .line 162
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    return-object v0

    .line 166
    :cond_d
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readHeader()V

    .line 167
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_24

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readContents()V

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-gez v0, :cond_24

    .line 170
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 174
    :cond_24
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    return-object v0

    .line 160
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .registers 3

    .line 128
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->reset()V

    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .registers 3

    if-eqz p1, :cond_a

    .line 137
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    goto :goto_12

    :cond_a
    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 140
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v0, 0x2

    iput v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    :goto_12
    return-object p0
.end method
