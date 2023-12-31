.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_DIGIT:I = 0x2

.field static final MODE_LOWER:I = 0x1

.field static final MODE_MIXED:I = 0x3

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final MODE_PUNCT:I = 0x4

.field static final MODE_UPPER:I

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 43
    const-class v0, I

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "UPPER"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "LOWER"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "DIGIT"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "MIXED"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "PUNCT"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sput-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    new-array v2, v1, [[I

    new-array v3, v1, [I

    .line 56
    fill-array-data v3, :array_114

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_122

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_130

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_13e

    aput-object v3, v2, v7

    new-array v1, v1, [I

    fill-array-data v1, :array_14c

    aput-object v1, v2, v8

    sput-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    new-array v1, v6, [I

    .line 97
    fill-array-data v1, :array_15a

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 99
    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x20

    aput v5, v1, v2

    const/16 v1, 0x41

    :goto_5c
    const/16 v3, 0x5a

    if-gt v1, v3, :cond_6c

    .line 101
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v3, v3, v4

    add-int/lit8 v9, v1, -0x41

    add-int/2addr v9, v6

    aput v9, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 103
    :cond_6c
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v5

    aput v5, v1, v2

    const/16 v1, 0x61

    :goto_74
    const/16 v3, 0x7a

    if-gt v1, v3, :cond_84

    .line 105
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v3, v3, v5

    add-int/lit8 v9, v1, -0x61

    add-int/2addr v9, v6

    aput v9, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 107
    :cond_84
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v6

    aput v5, v1, v2

    const/16 v1, 0x30

    :goto_8c
    const/16 v2, 0x39

    if-gt v1, v2, :cond_9c

    .line 109
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v2, v2, v6

    add-int/lit8 v3, v1, -0x30

    add-int/2addr v3, v6

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 111
    :cond_9c
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v2, v1, v6

    const/16 v3, 0x2c

    const/16 v9, 0xc

    aput v9, v2, v3

    .line 112
    aget-object v1, v1, v6

    const/16 v2, 0x2e

    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v1, 0x1c

    new-array v2, v1, [I

    .line 113
    fill-array-data v2, :array_162

    const/4 v3, 0x0

    :goto_b6
    if-ge v3, v1, :cond_c3

    .line 119
    sget-object v9, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v9, v9, v7

    aget v10, v2, v3

    aput v3, v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    :cond_c3
    const/16 v2, 0x1f

    new-array v3, v2, [I

    .line 121
    fill-array-data v3, :array_19e

    const/4 v9, 0x0

    :goto_cb
    if-ge v9, v2, :cond_dc

    .line 127
    aget v10, v3, v9

    if-lez v10, :cond_d9

    .line 128
    sget-object v10, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v10, v10, v8

    aget v11, v3, v9

    aput v9, v10, v11

    :cond_d9
    add-int/lit8 v9, v9, 0x1

    goto :goto_cb

    :cond_dc
    new-array v2, v6, [I

    .line 135
    fill-array-data v2, :array_1e0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 137
    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_eb
    if-ge v3, v2, :cond_f6

    aget-object v9, v0, v3

    const/4 v10, -0x1

    .line 138
    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_eb

    .line 140
    :cond_f6
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v2, v0, v4

    aput v4, v2, v8

    .line 142
    aget-object v2, v0, v5

    aput v4, v2, v8

    .line 143
    aget-object v2, v0, v5

    aput v1, v2, v4

    .line 145
    aget-object v1, v0, v7

    aput v4, v1, v8

    .line 147
    aget-object v1, v0, v6

    aput v4, v1, v8

    .line 148
    aget-object v0, v0, v6

    const/16 v1, 0xf

    aput v1, v0, v4

    return-void

    nop

    :array_114
    .array-data 4
        0x0
        0x5001c
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_122
    .array-data 4
        0x901ee
        0x0
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_130
    .array-data 4
        0x4000e
        0x901dc
        0x0
        0x901dd
        0xe3bbe
    .end array-data

    :array_13e
    .array-data 4
        0x5001d
        0x5001c
        0xa03be
        0x0
        0x5001e
    .end array-data

    :array_14c
    .array-data 4
        0x5001f
        0xa03fc
        0xa03fe
        0xa03fd
        0x0
    .end array-data

    :array_15a
    .array-data 4
        0x5
        0x100
    .end array-data

    :array_162
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_19e
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data

    :array_1e0
    .array-data 4
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    return-void
.end method

.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    const/4 v2, 0x1

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 291
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/aztec/encoder/State;

    .line 292
    invoke-virtual {v4, v1}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v2, 0x0

    goto :goto_38

    .line 296
    :cond_2e
    invoke-virtual {v1, v4}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 297
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1a

    :cond_38
    :goto_38
    if-eqz v2, :cond_9

    .line 301
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_3e
    return-object v0
.end method

.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "I",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 218
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    aget-object v1, v1, v2

    aget v1, v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    const/4 v3, 0x0

    :goto_18
    const/4 v4, 0x4

    if-gt v2, v4, :cond_53

    .line 221
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v2

    aget v4, v4, v0

    if-lez v4, :cond_50

    if-nez v3, :cond_29

    .line 225
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    :cond_29
    if-eqz v1, :cond_34

    .line 228
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v5

    if-eq v2, v5, :cond_34

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3b

    .line 233
    :cond_34
    invoke-virtual {v3, v2, v4}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    .line 234
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3b
    if-nez v1, :cond_50

    .line 237
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v6

    aget-object v5, v5, v6

    aget v5, v5, v2

    if-ltz v5, :cond_50

    .line 240
    invoke-virtual {v3, v2, v4}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    .line 241
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 245
    :cond_53
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v1

    if-gtz v1, :cond_65

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    aget-object v1, v1, v2

    aget v0, v1, v0

    if-nez v0, :cond_6c

    .line 249
    :cond_65
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p1

    .line 250
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6c
    return-void
.end method

.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "II",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    const/4 v1, 0x4

    .line 265
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_19

    .line 269
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_19
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p2, v2, :cond_1f

    if-ne p2, v1, :cond_2d

    :cond_1f
    rsub-int/lit8 p2, p2, 0x10

    const/4 v1, 0x2

    .line 274
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p2

    .line 275
    invoke-virtual {p2, v1, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p2

    .line 276
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_2d
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result p2

    if-lez p2, :cond_3f

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p0

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p0

    .line 282
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3f
    return-void
.end method

.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 207
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 208
    invoke-direct {p0, v1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V

    goto :goto_9

    .line 210
    :cond_19
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;II)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 256
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 257
    invoke-static {v1, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V

    goto :goto_9

    .line 259
    :cond_19
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode()Lcom/google/zxing/common/BitArray;
    .registers 9

    .line 161
    sget-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 162
    :goto_8
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v4, v3

    if-ge v2, v4, :cond_4e

    add-int/lit8 v4, v2, 0x1

    .line 164
    array-length v5, v3

    if-ge v4, v5, :cond_15

    aget-byte v3, v3, v4

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    .line 165
    :goto_16
    iget-object v5, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v5, v5, v2

    const/16 v6, 0xd

    if-eq v5, v6, :cond_3a

    const/16 v6, 0x2c

    const/16 v7, 0x20

    if-eq v5, v6, :cond_36

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_32

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_2e

    :cond_2c
    const/4 v3, 0x0

    goto :goto_3f

    :cond_2e
    if-ne v3, v7, :cond_2c

    const/4 v3, 0x5

    goto :goto_3f

    :cond_32
    if-ne v3, v7, :cond_2c

    const/4 v3, 0x3

    goto :goto_3f

    :cond_36
    if-ne v3, v7, :cond_2c

    const/4 v3, 0x4

    goto :goto_3f

    :cond_3a
    const/16 v5, 0xa

    if-ne v3, v5, :cond_2c

    const/4 v3, 0x2

    :goto_3f
    if-lez v3, :cond_47

    .line 184
    invoke-static {v0, v2, v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v0

    move v2, v4

    goto :goto_4b

    .line 188
    :cond_47
    invoke-direct {p0, v0, v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v0

    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 192
    :cond_4e
    new-instance v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v1, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/aztec/encoder/State;

    .line 199
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    invoke-virtual {v0, v1}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method
