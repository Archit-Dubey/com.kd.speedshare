.class final Lcom/google/android/gms/internal/measurement/zzfs;
.super Lcom/google/android/gms/internal/measurement/zzfd;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzfd<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zzb:Lcom/google/android/gms/internal/measurement/zzfs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfs<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient zzc:Lcom/google/android/gms/internal/measurement/zzeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzeq<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 107
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 108
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeq;->zza()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v1

    .line 109
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfi;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    .line 110
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfs;-><init>(Lcom/google/android/gms/internal/measurement/zzeq;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfs;->zzb:Lcom/google/android/gms/internal/measurement/zzfs;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzeq;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzeq<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfd;-><init>(Ljava/util/Comparator;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    return-void
.end method

.method private final zza(II)Lcom/google/android/gms/internal/measurement/zzfs;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/measurement/zzfs<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_9

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->size()I

    move-result v0

    if-ne p2, v0, :cond_9

    return-object p0

    :cond_9
    if-ge p1, p2, :cond_1b

    .line 95
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    .line 96
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzeq;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzeq;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zza:Ljava/util/Comparator;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs;-><init>(Lcom/google/android/gms/internal/measurement/zzeq;Ljava/util/Comparator;)V

    return-object v0

    .line 98
    :cond_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zza:Ljava/util/Comparator;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfs;->zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object p1

    return-object p1
.end method

.method private final zzc(Ljava/lang/Object;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfd;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_15

    if-eqz p2, :cond_14

    add-int/lit8 p1, p1, 0x1

    :cond_14
    return p1

    :cond_15
    xor-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private final zzd(Ljava/lang/Object;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfd;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_16

    if-eqz p2, :cond_13

    return p1

    :cond_13
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_16
    xor-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd(Ljava/lang/Object;Z)I

    move-result p1

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->size()I

    move-result v0

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeq;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 11
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zza:Ljava/util/Comparator;

    .line 13
    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_f

    if-ltz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :catch_f
    :cond_f
    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 17
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfj;

    if-eqz v0, :cond_a

    .line 18
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zza()Ljava/util/Set;

    move-result-object p1

    .line 19
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfd;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfw;->zza(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1c

    goto :goto_59

    .line 21
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfz;

    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2e

    return v3

    .line 25
    :cond_2e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 27
    :cond_36
    :goto_36
    :try_start_36
    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/internal/measurement/zzfd;->zza(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_48

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_43

    return v3

    .line 31
    :cond_43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_36

    :cond_48
    if-nez v5, :cond_56

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_51

    return v1

    .line 35
    :cond_51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_55} :catch_58
    .catch Ljava/lang/ClassCastException; {:try_start_36 .. :try_end_55} :catch_58

    goto :goto_36

    :cond_56
    if-lez v5, :cond_36

    :catch_58
    return v3

    .line 20
    :cond_59
    :goto_59
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfd;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic descendingIterator()Ljava/util/Iterator;
    .registers 2

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfd;->zzj()Lcom/google/android/gms/internal/measurement/zzfz;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 45
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 47
    :cond_a
    check-cast p1, Ljava/util/Set;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 50
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    return v0

    .line 52
    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zza:Ljava/util/Comparator;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/zzfw;->zza(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 53
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 54
    :try_start_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfz;

    .line 55
    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 58
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfd;->zza(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_44
    .catch Ljava/lang/ClassCastException; {:try_start_2a .. :try_end_44} :catch_48
    .catch Ljava/util/NoSuchElementException; {:try_start_2a .. :try_end_44} :catch_48

    if-eqz v3, :cond_30

    :cond_46
    return v2

    :cond_47
    return v0

    :catch_48
    return v2

    .line 66
    :cond_49
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfs;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeq;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 68
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc(Ljava/lang/Object;Z)I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeq;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd(Ljava/lang/Object;Z)I

    move-result p1

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->size()I

    move-result v0

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeq;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzer;->zzb()Lcom/google/android/gms/internal/measurement/zzfz;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeq;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc(Ljava/lang/Object;Z)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeq;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeq;->size()I

    move-result v0

    return v0
.end method

.method final zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/measurement/zzfd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/android/gms/internal/measurement/zzfd<",
            "TE;>;"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfs;->zza(II)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object p1

    return-object p1
.end method

.method final zza(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/measurement/zzfd;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/android/gms/internal/measurement/zzfd<",
            "TE;>;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfd;->zzb(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/measurement/zzfd;->zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object p1

    return-object p1
.end method

.method final zzb([Ljava/lang/Object;I)I
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzer;->zzb([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final zzb(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/measurement/zzfd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/android/gms/internal/measurement/zzfd<",
            "TE;>;"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs;->zza(II)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzfz;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfz<",
            "TE;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfz;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzeq;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzeq<",
            "TE;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    return-object v0
.end method

.method final zze()[Ljava/lang/Object;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzer;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzf()I
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzer;->zzf()I

    move-result v0

    return v0
.end method

.method final zzg()I
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzer;->zzg()I

    move-result v0

    return v0
.end method

.method final zzh()Z
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzer;->zzh()Z

    move-result v0

    return v0
.end method

.method final zzi()Lcom/google/android/gms/internal/measurement/zzfd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfd<",
            "TE;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zza:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    return-object v0

    .line 103
    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfs;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeq;->zzd()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfs;-><init>(Lcom/google/android/gms/internal/measurement/zzeq;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public final zzj()Lcom/google/android/gms/internal/measurement/zzfz;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfz<",
            "TE;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeq;->zzd()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfz;

    return-object v0
.end method
