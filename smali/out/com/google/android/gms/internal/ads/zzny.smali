.class public abstract Lcom/google/android/gms/internal/ads/zzny;
.super Lcom/google/android/gms/internal/ads/zzoe;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private zzahx:I

.field private final zzbhf:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zznr;",
            "Lcom/google/android/gms/internal/ads/zzoa;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbhg:Landroid/util/SparseBooleanArray;

.field private zzbhh:Lcom/google/android/gms/internal/ads/zzob;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoe;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhf:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhg:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzahx:I

    return-void
.end method


# virtual methods
.method public final zza([Lcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zznr;)Lcom/google/android/gms/internal/ads/zzog;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhb;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 11
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    .line 12
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v5, v4, [[Lcom/google/android/gms/internal/ads/zzno;

    .line 13
    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    new-array v11, v6, [[[I

    const/4 v7, 0x0

    :goto_16
    if-ge v7, v4, :cond_27

    .line 15
    iget v8, v2, Lcom/google/android/gms/internal/ads/zznr;->length:I

    new-array v8, v8, [Lcom/google/android/gms/internal/ads/zzno;

    aput-object v8, v5, v7

    .line 16
    iget v8, v2, Lcom/google/android/gms/internal/ads/zznr;->length:I

    new-array v8, v8, [[I

    aput-object v8, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 19
    :cond_27
    array-length v4, v1

    new-array v10, v4, [I

    const/4 v7, 0x0

    :goto_2b
    if-ge v7, v4, :cond_38

    .line 21
    aget-object v8, v1, v7

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzhy;->zzef()I

    move-result v8

    aput v8, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_38
    const/4 v4, 0x0

    .line 25
    :goto_39
    iget v7, v2, Lcom/google/android/gms/internal/ads/zznr;->length:I

    if-ge v4, v7, :cond_98

    .line 26
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zznr;->zzbd(I)Lcom/google/android/gms/internal/ads/zzno;

    move-result-object v7

    .line 28
    array-length v8, v1

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 30
    :goto_44
    array-length v13, v1

    if-ge v9, v13, :cond_64

    .line 31
    aget-object v13, v1, v9

    const/4 v14, 0x0

    .line 32
    :goto_4a
    iget v15, v7, Lcom/google/android/gms/internal/ads/zzno;->length:I

    if-ge v14, v15, :cond_61

    .line 33
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzno;->zzbc(I)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v15

    invoke-interface {v13, v15}, Lcom/google/android/gms/internal/ads/zzhy;->zza(Lcom/google/android/gms/internal/ads/zzhq;)I

    move-result v15

    const/4 v6, 0x3

    and-int/2addr v15, v6

    if-le v15, v12, :cond_5e

    move v8, v9

    if-eq v15, v6, :cond_64

    move v12, v15

    :cond_5e
    add-int/lit8 v14, v14, 0x1

    goto :goto_4a

    :cond_61
    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    .line 42
    :cond_64
    array-length v6, v1

    if-ne v8, v6, :cond_6c

    .line 43
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzno;->length:I

    new-array v6, v6, [I

    goto :goto_85

    :cond_6c
    aget-object v6, v1, v8

    .line 44
    iget v9, v7, Lcom/google/android/gms/internal/ads/zzno;->length:I

    new-array v9, v9, [I

    const/4 v12, 0x0

    .line 45
    :goto_73
    iget v13, v7, Lcom/google/android/gms/internal/ads/zzno;->length:I

    if-ge v12, v13, :cond_84

    .line 46
    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/zzno;->zzbc(I)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v13

    invoke-interface {v6, v13}, Lcom/google/android/gms/internal/ads/zzhy;->zza(Lcom/google/android/gms/internal/ads/zzhq;)I

    move-result v13

    aput v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_73

    :cond_84
    move-object v6, v9

    .line 50
    :goto_85
    aget v9, v3, v8

    .line 51
    aget-object v12, v5, v8

    aput-object v7, v12, v9

    .line 52
    aget-object v7, v11, v8

    aput-object v6, v7, v9

    .line 53
    aget v6, v3, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 55
    :cond_98
    array-length v4, v1

    new-array v9, v4, [Lcom/google/android/gms/internal/ads/zznr;

    .line 56
    array-length v4, v1

    new-array v8, v4, [I

    const/4 v4, 0x0

    .line 57
    :goto_9f
    array-length v6, v1

    if-ge v4, v6, :cond_c8

    .line 58
    aget v6, v3, v4

    .line 59
    new-instance v7, Lcom/google/android/gms/internal/ads/zznr;

    aget-object v12, v5, v4

    .line 60
    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/android/gms/internal/ads/zzno;

    invoke-direct {v7, v12}, Lcom/google/android/gms/internal/ads/zznr;-><init>([Lcom/google/android/gms/internal/ads/zzno;)V

    aput-object v7, v9, v4

    .line 61
    aget-object v7, v11, v4

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    aput-object v6, v11, v4

    .line 62
    aget-object v6, v1, v4

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzhy;->getTrackType()I

    move-result v6

    aput v6, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9f

    .line 64
    :cond_c8
    array-length v4, v1

    aget v3, v3, v4

    .line 65
    new-instance v12, Lcom/google/android/gms/internal/ads/zznr;

    array-length v4, v1

    aget-object v4, v5, v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/ads/zzno;

    invoke-direct {v12, v3}, Lcom/google/android/gms/internal/ads/zznr;-><init>([Lcom/google/android/gms/internal/ads/zzno;)V

    .line 66
    invoke-virtual {v0, v1, v9, v11}, Lcom/google/android/gms/internal/ads/zzny;->zza([Lcom/google/android/gms/internal/ads/zzhy;[Lcom/google/android/gms/internal/ads/zznr;[[[I)[Lcom/google/android/gms/internal/ads/zzod;

    move-result-object v3

    const/4 v4, 0x0

    .line 67
    :goto_de
    array-length v5, v1

    const/4 v6, 0x0

    if-ge v4, v5, :cond_10c

    .line 68
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzny;->zzbhg:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 69
    aput-object v6, v3, v4

    goto :goto_103

    .line 70
    :cond_ed
    aget-object v5, v9, v4

    .line 71
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzny;->zzbhf:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_fa

    goto :goto_101

    .line 72
    :cond_fa
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzoa;

    :goto_101
    if-nez v6, :cond_106

    :goto_103
    add-int/lit8 v4, v4, 0x1

    goto :goto_de

    .line 74
    :cond_106
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v1

    .line 76
    :cond_10c
    new-instance v4, Lcom/google/android/gms/internal/ads/zzob;

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzob;-><init>([I[Lcom/google/android/gms/internal/ads/zznr;[I[[[ILcom/google/android/gms/internal/ads/zznr;)V

    .line 77
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzhx;

    const/4 v7, 0x0

    .line 78
    :goto_116
    array-length v8, v1

    if-ge v7, v8, :cond_126

    .line 79
    aget-object v8, v3, v7

    if-eqz v8, :cond_120

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhx;->zzahw:Lcom/google/android/gms/internal/ads/zzhx;

    goto :goto_121

    :cond_120
    move-object v8, v6

    :goto_121
    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_116

    .line 81
    :cond_126
    new-instance v1, Lcom/google/android/gms/internal/ads/zzog;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzof;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzof;-><init>([Lcom/google/android/gms/internal/ads/zzod;)V

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzog;-><init>(Lcom/google/android/gms/internal/ads/zznr;Lcom/google/android/gms/internal/ads/zzof;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzhx;)V

    return-object v1
.end method

.method protected abstract zza([Lcom/google/android/gms/internal/ads/zzhy;[Lcom/google/android/gms/internal/ads/zznr;[[[I)[Lcom/google/android/gms/internal/ads/zzod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhb;
        }
    .end annotation
.end method

.method public final zzd(Ljava/lang/Object;)V
    .registers 2

    .line 82
    check-cast p1, Lcom/google/android/gms/internal/ads/zzob;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhh:Lcom/google/android/gms/internal/ads/zzob;

    return-void
.end method

.method public final zzf(IZ)V
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhg:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_9

    return-void

    .line 8
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhg:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoe;->invalidate()V

    return-void
.end method
