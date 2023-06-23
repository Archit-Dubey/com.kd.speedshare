.class public final Lcom/google/android/gms/internal/measurement/zzfa;
.super Lcom/google/android/gms/internal/measurement/zzez;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzez<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzez;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzfb;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfb<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfa;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzep;->zza:Lcom/google/android/gms/internal/measurement/zzep;

    return-object v0

    .line 8
    :cond_f
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzex;

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(I)V

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzey;->zza(Ljava/util/Collection;)Lcom/google/android/gms/internal/measurement/zzey;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzey;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 19
    iget v7, v1, Lcom/google/android/gms/internal/measurement/zzex;->zzb:I

    add-int/2addr v7, v5

    shl-int/2addr v7, v5

    .line 20
    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzex;->zza:[Ljava/lang/Object;

    array-length v8, v8

    if-le v7, v8, :cond_73

    .line 21
    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzex;->zza:[Ljava/lang/Object;

    iget-object v9, v1, Lcom/google/android/gms/internal/measurement/zzex;->zza:[Ljava/lang/Object;

    array-length v9, v9

    if-ltz v7, :cond_6b

    shr-int/lit8 v10, v9, 0x1

    add-int/2addr v9, v10

    add-int/2addr v9, v5

    if-ge v9, v7, :cond_5d

    add-int/lit8 v7, v7, -0x1

    .line 27
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v7

    shl-int/lit8 v9, v7, 0x1

    :cond_5d
    if-gez v9, :cond_62

    const v9, 0x7fffffff

    .line 31
    :cond_62
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/measurement/zzex;->zza:[Ljava/lang/Object;

    .line 32
    iput-boolean v2, v1, Lcom/google/android/gms/internal/measurement/zzex;->zzc:Z

    goto :goto_73

    .line 24
    :cond_6b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 33
    :cond_73
    :goto_73
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/measurement/zzec;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzex;->zza:[Ljava/lang/Object;

    iget v8, v1, Lcom/google/android/gms/internal/measurement/zzex;->zzb:I

    mul-int/lit8 v8, v8, 0x2

    aput-object v6, v7, v8

    .line 35
    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzex;->zza:[Ljava/lang/Object;

    iget v7, v1, Lcom/google/android/gms/internal/measurement/zzex;->zzb:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    aput-object v4, v6, v7

    .line 36
    iget v6, v1, Lcom/google/android/gms/internal/measurement/zzex;->zzb:I

    add-int/2addr v6, v5

    iput v6, v1, Lcom/google/android/gms/internal/measurement/zzex;->zzb:I

    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzey;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1e

    .line 39
    :cond_92
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfb;

    .line 41
    iput-boolean v5, v1, Lcom/google/android/gms/internal/measurement/zzex;->zzc:Z

    .line 42
    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzex;->zzb:I

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzex;->zza:[Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzfm;->zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzfb;-><init>(Lcom/google/android/gms/internal/measurement/zzeu;ILjava/util/Comparator;)V

    return-object v0
.end method
