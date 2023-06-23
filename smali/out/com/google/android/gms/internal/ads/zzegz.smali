.class final Lcom/google/android/gms/internal/ads/zzegz;
.super Lcom/google/android/gms/internal/ads/zzeel;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegj;
.implements Lcom/google/android/gms/internal/ads/zzehx;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeel<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzegj;",
        "Lcom/google/android/gms/internal/ads/zzehx;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzigg:Lcom/google/android/gms/internal/ads/zzegz;


# instance fields
.field private size:I

.field private zzigh:[J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 130
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegz;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzegz;-><init>([JI)V

    .line 131
    sput-object v0, Lcom/google/android/gms/internal/ads/zzegz;->zzigg:Lcom/google/android/gms/internal/ads/zzegz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeel;->zzbcz()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzegz;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .registers 3

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeel;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    return-void
.end method

.method public static zzbgk()Lcom/google/android/gms/internal/ads/zzegz;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegz;->zzigg:Lcom/google/android/gms/internal/ads/zzegz;

    return-object v0
.end method

.method private final zzfq(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 83
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    if-ge p1, v0, :cond_7

    return-void

    .line 84
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegz;->zzfr(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzfr(I)Ljava/lang/String;
    .registers 5

    .line 86
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 8

    .line 106
    check-cast p2, Ljava/lang/Long;

    .line 107
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeel;->zzbda()V

    if-ltz p1, :cond_44

    .line 109
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    if-gt p1, p2, :cond_44

    .line 111
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    array-length v3, v2

    if-ge p2, v3, :cond_1b

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    .line 112
    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    :cond_1b
    mul-int/lit8 p2, p2, 0x3

    .line 113
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 114
    new-array p2, p2, [J

    const/4 v3, 0x0

    .line 115
    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    .line 118
    :goto_33
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    aput-wide v0, p2, p1

    .line 119
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    .line 120
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->modCount:I

    return-void

    .line 110
    :cond_44
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegz;->zzfr(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .registers 4

    .line 122
    check-cast p1, Ljava/lang/Long;

    .line 123
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzegz;->zzfs(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeel;->zzbda()V

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzegz;

    if-nez v0, :cond_f

    .line 60
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzeel;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 61
    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/zzegz;

    .line 62
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    :cond_17
    const v2, 0x7fffffff

    .line 64
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3f

    add-int/2addr v3, v0

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    array-length v2, v0

    if-le v3, v2, :cond_2b

    .line 69
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    .line 70
    :cond_2b
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    .line 72
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->modCount:I

    return v0

    .line 66
    :cond_3f
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzegz;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 17
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzegz;

    if-nez v1, :cond_d

    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzeel;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/ads/zzegz;

    .line 20
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 22
    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    const/4 v1, 0x0

    .line 23
    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    if-ge v1, v2, :cond_2c

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_29

    return v3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2c
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzegz;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getLong(I)J
    .registers 5

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegz;->zzfq(I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final hashCode()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    if-ge v1, v2, :cond_14

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 9

    .line 38
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 40
    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegz;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p1, :cond_1f

    .line 43
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    aget-wide v5, v4, v0

    cmp-long v4, v5, v2

    if-nez v4, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    return v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 7

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeel;->zzbda()V

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegz;->zzfq(I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    aget-wide v1, v0, p1

    .line 100
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_18

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 101
    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_18
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    .line 103
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->modCount:I

    .line 104
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 7

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeel;->zzbda()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    if-ge v1, v2, :cond_31

    .line 76
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    .line 79
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->modCount:I

    return v3

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_31
    return v0
.end method

.method protected final removeRange(II)V
    .registers 5

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeel;->zzbda()V

    if-lt p2, p1, :cond_1a

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    .line 13
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->modCount:I

    return-void

    .line 10
    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 87
    check-cast p2, Ljava/lang/Long;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeel;->zzbda()V

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegz;->zzfq(I)V

    .line 91
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    aget-wide v2, p2, p1

    .line 92
    aput-wide v0, p2, p1

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    return v0
.end method

.method public final synthetic zzfs(I)Lcom/google/android/gms/internal/ads/zzegm;
    .registers 2

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzegz;->zzhc(I)Lcom/google/android/gms/internal/ads/zzegj;

    move-result-object p1

    return-object p1
.end method

.method public final zzfs(J)V
    .registers 7

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeel;->zzbda()V

    .line 50
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    array-length v2, v1

    if-ne v0, v2, :cond_18

    mul-int/lit8 v2, v0, 0x3

    .line 51
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 52
    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 53
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    .line 55
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final zzhc(I)Lcom/google/android/gms/internal/ads/zzegj;
    .registers 4

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    if-lt p1, v0, :cond_12

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzigh:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzegz;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzegz;-><init>([JI)V

    return-object v0

    .line 34
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
