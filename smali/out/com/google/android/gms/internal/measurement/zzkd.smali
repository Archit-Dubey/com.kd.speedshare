.class Lcom/google/android/gms/internal/measurement/zzkd;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final zza:I

.field private zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzkm;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private zzd:Z

.field private volatile zze:Lcom/google/android/gms/internal/measurement/zzko;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzko;"
        }
    .end annotation
.end field

.field private zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile zzg:Lcom/google/android/gms/internal/measurement/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzki;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zza:I

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzf:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzkg;)V
    .registers 3

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>(I)V

    return-void
.end method

.method private final zza(Ljava/lang/Comparable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_25

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkm;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_22

    add-int/lit8 v0, v0, 0x2

    neg-int p1, v0

    return p1

    :cond_22
    if-nez v1, :cond_25

    return v0

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-gt v1, v0, :cond_49

    add-int v2, v1, v0

    .line 80
    div-int/lit8 v2, v2, 0x2

    .line 81
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzkm;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_43

    add-int/lit8 v0, v2, -0x1

    goto :goto_26

    :cond_43
    if-lez v3, :cond_48

    add-int/lit8 v1, v2, 0x1

    goto :goto_26

    :cond_48
    return v2

    :cond_49
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method static zza(I)Lcom/google/android/gms/internal/measurement/zzkd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "TFieldDescriptorType;>;>(I)",
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkg;-><init>(I)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzkd;I)Ljava/lang/Object;
    .registers 2

    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzkd;)V
    .registers 1

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzkd;)Ljava/util/List;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    return-object p0
.end method

.method private final zzc(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf()V

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkm;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_36
    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzkd;)Ljava/util/Map;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzkd;)Ljava/util/Map;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzf:Ljava/util/Map;

    return-object p0
.end method

.method private final zzf()V
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzd:Z

    if-nez v0, :cond_5

    return-void

    .line 95
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private final zzg()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf()V

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_20

    .line 99
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    .line 100
    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzf:Ljava/util/Map;

    .line 101
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf()V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1d
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 27
    check-cast p1, Ljava/lang/Comparable;

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zze:Lcom/google/android/gms/internal/measurement/zzko;

    if-nez v0, :cond_c

    .line 89
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzko;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;Lcom/google/android/gms/internal/measurement/zzkg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zze:Lcom/google/android/gms/internal/measurement/zzko;

    .line 90
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zze:Lcom/google/android/gms/internal/measurement/zzko;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 104
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzkd;

    if-nez v1, :cond_d

    .line 105
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 106
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkd;

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->size()I

    move-result v1

    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkd;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 110
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc()I

    move-result v2

    .line 111
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc()I

    move-result v4

    if-eq v2, v4, :cond_32

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkd;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_32
    const/4 v4, 0x0

    :goto_33
    if-ge v4, v2, :cond_47

    .line 114
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    return v3

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_47
    if-eq v2, v1, :cond_52

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_52
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 29
    check-cast p1, Ljava/lang/Comparable;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_15

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkm;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 33
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 5

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_18

    .line 123
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzkm;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 126
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_27
    return v2
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 130
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf()V

    .line 57
    check-cast p1, Ljava/lang/Comparable;

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_10

    .line 60
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 61
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf()V

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_16

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzkm;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf()V

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_30

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zza:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 43
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zza:I

    if-lt v0, v1, :cond_40

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zza:I

    if-ne v1, v2, :cond_65

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzkm;

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkm;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkm;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_65
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public zza()V
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzd:Z

    if-nez v0, :cond_31

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_17

    .line 12
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_17
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_2c

    .line 16
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2c
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzf:Ljava/util/Map;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzd:Z

    :cond_31
    return-void
.end method

.method public final zzb(I)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public final zzb()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzd:Z

    return v0
.end method

.method public final zzc()I
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkh;->zza()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    .line 24
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final zze()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzg:Lcom/google/android/gms/internal/measurement/zzki;

    if-nez v0, :cond_c

    .line 92
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzki;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzki;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;Lcom/google/android/gms/internal/measurement/zzkg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzg:Lcom/google/android/gms/internal/measurement/zzki;

    .line 93
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkd;->zzg:Lcom/google/android/gms/internal/measurement/zzki;

    return-object v0
.end method
