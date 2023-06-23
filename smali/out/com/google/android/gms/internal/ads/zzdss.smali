.class public abstract Lcom/google/android/gms/internal/ads/zzdss;
.super Lcom/google/android/gms/internal/ads/zzdsr;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdsr<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzhlu:Lcom/google/android/gms/internal/ads/zzdtm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtm<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 160
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdtc;->zzhmf:Lcom/google/android/gms/internal/ads/zzdss;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsu;-><init>(Lcom/google/android/gms/internal/ads/zzdss;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdss;->zzhlu:Lcom/google/android/gms/internal/ads/zzdtm;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsr;-><init>()V

    return-void
.end method

.method public static zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdss;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/ads/zzdss<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    :goto_7
    if-gtz p0, :cond_11

    .line 5
    aget-object v3, v1, v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdtd;->zzd(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    .line 8
    :cond_11
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdss;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdss;

    move-result-object p0

    return-object p0
.end method

.method public static zzawm()Lcom/google/android/gms/internal/ads/zzdss;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzdss<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtc;->zzhmf:Lcom/google/android/gms/internal/ads/zzdss;

    return-object v0
.end method

.method public static zzb([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdss;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/android/gms/internal/ads/zzdss<",
            "TE;>;"
        }
    .end annotation

    .line 39
    array-length v0, p0

    if-nez v0, :cond_6

    .line 40
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdtc;->zzhmf:Lcom/google/android/gms/internal/ads/zzdss;

    return-object p0

    .line 42
    :cond_6
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 44
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    .line 46
    aget-object v2, p0, v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdtd;->zzd(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 50
    :cond_18
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdss;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdss;

    move-result-object p0

    return-object p0
.end method

.method static zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdss;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdss<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_5

    .line 54
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdtc;->zzhmf:Lcom/google/android/gms/internal/ads/zzdss;

    return-object p0

    .line 56
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdtc;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method static zzc([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdss;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdss<",
            "TE;>;"
        }
    .end annotation

    .line 52
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdss;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdss;

    move-result-object p0

    return-object p0
.end method

.method public static zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdss;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzdss<",
            "TE;>;"
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdsh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_39

    .line 12
    check-cast p0, Ljava/util/Collection;

    .line 13
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdsr;

    if-eqz v0, :cond_23

    .line 14
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzawk()Lcom/google/android/gms/internal/ads/zzdss;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzawl()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsr;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 16
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdss;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdss;

    move-result-object p0

    :cond_22
    return-object p0

    .line 18
    :cond_23
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 20
    array-length v0, p0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_33

    .line 22
    aget-object v2, p0, v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdtd;->zzd(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 26
    :cond_33
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdss;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdss;

    move-result-object p0

    return-object p0

    .line 28
    :cond_39
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_46

    .line 30
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdtc;->zzhmf:Lcom/google/android/gms/internal/ads/zzdss;

    return-object p0

    .line 32
    :cond_46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_55

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdss;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdss;

    move-result-object p0

    return-object p0

    .line 35
    :cond_55
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdsv;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdst;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsv;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdst;->zza(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/zzdst;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdsv;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzhls:Z

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzhlr:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->size:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdss;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdss;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdss;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 122
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdsh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    return v1

    .line 124
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    .line 125
    check-cast p1, Ljava/util/List;

    .line 126
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_62

    .line 128
    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_36

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v0, :cond_35

    .line 130
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdse;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_35
    return v1

    .line 133
    :cond_36
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdss;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdss;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v3, :cond_5b

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 136
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzdss;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 137
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 138
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzdse;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    goto :goto_42

    .line 140
    :cond_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_62

    return v1

    :cond_62
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdss;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1a

    mul-int/lit8 v1, v1, 0x1f

    .line 145
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzdss;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 60
    :cond_4
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_2c

    .line 62
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_1b

    :goto_f
    if-ge v2, v1, :cond_2b

    .line 65
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_18

    return v2

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    :goto_1b
    if-ge v2, v1, :cond_2b

    .line 69
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    return v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2b
    return v0

    .line 74
    :cond_2c
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 75
    :cond_30
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 76
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzdse;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 77
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result p1

    return p1

    :cond_45
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzawg()Lcom/google/android/gms/internal/ads/zzdtn;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 81
    :cond_4
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_33

    if-nez p1, :cond_1c

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_10
    if-ltz p1, :cond_32

    .line 85
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    return p1

    :cond_19
    add-int/lit8 p1, p1, -0x1

    goto :goto_10

    .line 88
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_22
    if-ltz v1, :cond_32

    .line 89
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return v1

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_32
    return v0

    .line 94
    :cond_33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 95
    :cond_3b
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 96
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzdse;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 97
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    return p1

    :cond_50
    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdss;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtm;

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdss;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdsh;->zzt(II)I

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdss;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 154
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdss;->zzhlu:Lcom/google/android/gms/internal/ads/zzdtm;

    return-object p1

    .line 155
    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdsu;-><init>(Lcom/google/android/gms/internal/ads/zzdss;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdss;->zzu(II)Lcom/google/android/gms/internal/ads/zzdss;

    move-result-object p1

    return-object p1
.end method

.method zza([Ljava/lang/Object;I)I
    .registers 7

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdss;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    add-int v2, p2, v1

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdss;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    add-int/2addr p2, v0

    return p2
.end method

.method public final zzawg()Lcom/google/android/gms/internal/ads/zzdtn;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "TE;>;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdss;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtm;

    return-object v0
.end method

.method public final zzawk()Lcom/google/android/gms/internal/ads/zzdss;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdss<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public zzu(II)Lcom/google/android/gms/internal/ads/zzdss;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/zzdss<",
            "TE;>;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdss;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsh;->zzf(III)V

    sub-int/2addr p2, p1

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdss;->size()I

    move-result v0

    if-ne p2, v0, :cond_f

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    .line 106
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdtc;->zzhmf:Lcom/google/android/gms/internal/ads/zzdss;

    return-object p1

    .line 109
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsx;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsx;-><init>(Lcom/google/android/gms/internal/ads/zzdss;II)V

    return-object v0
.end method
