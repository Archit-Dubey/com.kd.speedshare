.class public Landroidx/collection/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 58
    invoke-direct {p0, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-nez p1, :cond_11

    .line 70
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object p1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 71
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_1d

    .line 73
    :cond_11
    invoke-static {p1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result p1

    .line 74
    new-array v1, p1, [J

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 75
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 77
    :goto_1d
    iput v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    return-void
.end method

.method private gc()V
    .registers 10

    .line 213
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    .line 215
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 216
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v4, v0, :cond_21

    .line 219
    aget-object v6, v2, v4

    .line 221
    sget-object v7, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    if-eq v4, v5, :cond_1c

    .line 223
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 224
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 225
    aput-object v6, v2, v4

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 232
    :cond_21
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    .line 233
    iput v5, p0, Landroidx/collection/LongSparseArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 441
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_12

    .line 442
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void

    .line 446
    :cond_12
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_20

    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_20

    .line 447
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 450
    :cond_20
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    .line 451
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_42

    add-int/lit8 v1, v0, 0x1

    .line 452
    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 454
    new-array v2, v1, [J

    .line 455
    new-array v1, v1, [Ljava/lang/Object;

    .line 458
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iput-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 462
    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 465
    :cond_42
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 466
    iget-object p1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 467
    iput v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 6

    .line 425
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    .line 426
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_e

    const/4 v4, 0x0

    .line 429
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 432
    :cond_e
    iput v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    .line 433
    iput-boolean v2, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    return-void
.end method

.method public clone()Landroidx/collection/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 86
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 87
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(J)Z
    .registers 3

    .line 413
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public delete(J)V
    .registers 5

    .line 128
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    if-ltz p1, :cond_17

    .line 131
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, p2, p1

    sget-object v1, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_17

    .line 132
    aput-object v1, p2, p1

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    :cond_17
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, p1, p2, v0}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    if-ltz p1, :cond_16

    .line 117
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, p2, p1

    sget-object v1, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    goto :goto_16

    .line 120
    :cond_13
    aget-object p1, p2, p1

    return-object p1

    :cond_16
    :goto_16
    return-object p3
.end method

.method public indexOfKey(J)I
    .registers 5

    .line 384
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 385
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 388
    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    return p1
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 400
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 401
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_7
    const/4 v0, 0x0

    .line 404
    :goto_8
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    .line 405
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 335
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public keyAt(I)J
    .registers 5

    .line 344
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 345
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 348
    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public put(JLjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_f

    .line 247
    iget-object p1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, p1, v0

    goto :goto_82

    :cond_f
    xor-int/lit8 v0, v0, -0x1

    .line 251
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v2, v3, :cond_24

    .line 252
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aput-wide p1, v2, v0

    .line 253
    aput-object p3, v1, v0

    return-void

    .line 257
    :cond_24
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3c

    .line 258
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 261
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 264
    :cond_3c
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_5e

    add-int/lit8 v1, v1, 0x1

    .line 265
    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 267
    new-array v2, v1, [J

    .line 268
    new-array v1, v1, [Ljava/lang/Object;

    .line 271
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iput-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 275
    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 278
    :cond_5e
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_74

    .line 280
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    :cond_74
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 285
    iget-object p1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, p1, v0

    .line 286
    iget p1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    :goto_82
    return-void
.end method

.method public putAll(Landroidx/collection/LongSparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "+TE;>;)V"
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 297
    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method

.method public putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 313
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_9
    return-object v0
.end method

.method public remove(J)V
    .registers 3

    .line 142
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->delete(J)V

    return-void
.end method

.method public remove(JLjava/lang/Object;)Z
    .registers 4

    .line 152
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_19

    .line 154
    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p3, p2, :cond_14

    if-eqz p3, :cond_19

    .line 155
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 156
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public removeAt(I)V
    .registers 5

    .line 167
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_d

    .line 168
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    :cond_d
    return-void
.end method

.method public replace(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_d

    .line 183
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, p2, p1

    .line 184
    aput-object p3, p2, p1

    return-object v0

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public replace(JLjava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;TE;)Z"
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_1a

    .line 201
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p2, p2, p1

    if-eq p2, p3, :cond_14

    if-eqz p3, :cond_1a

    .line 202
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 203
    :cond_14
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p4, p2, p1

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 371
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 372
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 375
    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    .line 323
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 324
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 327
    :cond_7
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 479
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    .line 483
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 485
    :goto_18
    iget v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v1, v2, :cond_41

    if-lez v1, :cond_23

    const-string v2, ", "

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 490
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 491
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_39

    .line 494
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_39
    const-string v2, "(this Map)"

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_41
    const/16 v1, 0x7d

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 358
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 359
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 362
    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
