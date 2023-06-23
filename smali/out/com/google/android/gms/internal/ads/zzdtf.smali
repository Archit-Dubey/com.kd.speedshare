.class final Lcom/google/android/gms/internal/ads/zzdtf;
.super Lcom/google/android/gms/internal/ads/zzdsw;
.source "com.google.android.gms:play-services-gass@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdsw<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zzhmk:Lcom/google/android/gms/internal/ads/zzdsw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdsw<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient size:I

.field private final transient zzhmi:[Ljava/lang/Object;

.field private final transient zzhml:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 124
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtf;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhmk:Lcom/google/android/gms/internal/ads/zzdsw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 4

    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsw;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhml:Ljava/lang/Object;

    .line 74
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhmi:[Ljava/lang/Object;

    .line 75
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdtf;->size:I

    return-void
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .registers 7

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x27

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Multiple entries with same key: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzc(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdtf;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdtf<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhmk:Lcom/google/android/gms/internal/ads/zzdsw;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdtf;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_19

    .line 4
    aget-object p0, p1, v1

    aget-object v1, p1, v2

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzdsm;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdtf;

    invoke-direct {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 6
    :cond_19
    array-length v3, p1

    shr-int/2addr v3, v2

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/zzdsh;->zzt(II)I

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdsz;->zzem(I)I

    move-result v3

    if-ne p0, v2, :cond_2d

    .line 10
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdsm;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e1

    :cond_2d
    add-int/lit8 v0, v3, -0x1

    const/16 v2, 0x80

    const/4 v4, -0x1

    if-gt v3, v2, :cond_6f

    .line 14
    new-array v2, v3, [B

    .line 15
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    :goto_39
    if-ge v1, p0, :cond_6c

    mul-int/lit8 v3, v1, 0x2

    .line 18
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 19
    aget-object v5, p1, v5

    .line 20
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdsm;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdso;->zzek(I)I

    move-result v6

    :goto_4e
    and-int/2addr v6, v0

    .line 23
    aget-byte v7, v2, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_5c

    int-to-byte v3, v3

    .line 25
    aput-byte v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 27
    :cond_5c
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_67

    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 28
    :cond_67
    invoke-static {v4, v5, p1, v7}, Lcom/google/android/gms/internal/ads/zzdtf;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_6c
    move-object v0, v2

    goto/16 :goto_e1

    :cond_6f
    const v2, 0x8000

    if-gt v3, v2, :cond_ad

    .line 33
    new-array v2, v3, [S

    .line 34
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([SS)V

    :goto_79
    if-ge v1, p0, :cond_6c

    mul-int/lit8 v3, v1, 0x2

    .line 37
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 38
    aget-object v5, p1, v5

    .line 39
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdsm;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdso;->zzek(I)I

    move-result v6

    :goto_8e
    and-int/2addr v6, v0

    .line 42
    aget-short v7, v2, v6

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_9d

    int-to-short v3, v3

    .line 44
    aput-short v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 46
    :cond_9d
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8e

    .line 47
    :cond_a8
    invoke-static {v4, v5, p1, v7}, Lcom/google/android/gms/internal/ads/zzdtf;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 51
    :cond_ad
    new-array v2, v3, [I

    .line 52
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    :goto_b2
    if-ge v1, p0, :cond_6c

    mul-int/lit8 v3, v1, 0x2

    .line 55
    aget-object v5, p1, v3

    xor-int/lit8 v6, v3, 0x1

    .line 56
    aget-object v6, p1, v6

    .line 57
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzdsm;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdso;->zzek(I)I

    move-result v7

    :goto_c7
    and-int/2addr v7, v0

    .line 60
    aget v8, v2, v7

    if-ne v8, v4, :cond_d1

    .line 62
    aput v3, v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 64
    :cond_d1
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_dc

    add-int/lit8 v7, v7, 0x1

    goto :goto_c7

    .line 65
    :cond_dc
    invoke-static {v5, v6, p1, v8}, Lcom/google/android/gms/internal/ads/zzdtf;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 70
    :goto_e1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdtf;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhml:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhmi:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtf;->size:I

    const/4 v3, 0x0

    if-nez p1, :cond_a

    return-object v3

    :cond_a
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    const/4 v0, 0x0

    .line 82
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 83
    aget-object p1, v1, v4

    return-object p1

    :cond_19
    return-object v3

    :cond_1a
    if-nez v0, :cond_1d

    return-object v3

    .line 88
    :cond_1d
    instance-of v2, v0, [B

    if-eqz v2, :cond_48

    .line 89
    move-object v2, v0

    check-cast v2, [B

    .line 90
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdso;->zzek(I)I

    move-result v0

    :goto_2f
    and-int/2addr v0, v5

    .line 93
    aget-byte v6, v2, v0

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_38

    return-object v3

    .line 96
    :cond_38
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    xor-int/lit8 p1, v6, 0x1

    .line 97
    aget-object p1, v1, p1

    return-object p1

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 99
    :cond_48
    instance-of v2, v0, [S

    if-eqz v2, :cond_74

    .line 100
    move-object v2, v0

    check-cast v2, [S

    .line 101
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdso;->zzek(I)I

    move-result v0

    :goto_5a
    and-int/2addr v0, v5

    .line 104
    aget-short v6, v2, v0

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_64

    return-object v3

    .line 107
    :cond_64
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    xor-int/lit8 p1, v6, 0x1

    .line 108
    aget-object p1, v1, p1

    return-object p1

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 110
    :cond_74
    check-cast v0, [I

    .line 111
    array-length v2, v0

    sub-int/2addr v2, v4

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdso;->zzek(I)I

    move-result v5

    :goto_80
    and-int/2addr v5, v2

    .line 114
    aget v6, v0, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_87

    return-object v3

    .line 117
    :cond_87
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_94

    xor-int/lit8 p1, v6, 0x1

    .line 118
    aget-object p1, v1, p1

    return-object p1

    :cond_94
    add-int/lit8 v5, v5, 0x1

    goto :goto_80
.end method

.method public final size()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtf;->size:I

    return v0
.end method

.method final zzawn()Lcom/google/android/gms/internal/ads/zzdsz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdsz<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdte;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhmi:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtf;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdte;-><init>(Lcom/google/android/gms/internal/ads/zzdsw;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final zzawo()Lcom/google/android/gms/internal/ads/zzdsz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdsz<",
            "TK;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhmi:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtf;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdtj;-><init>([Ljava/lang/Object;II)V

    .line 122
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdtg;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdtg;-><init>(Lcom/google/android/gms/internal/ads/zzdsw;Lcom/google/android/gms/internal/ads/zzdss;)V

    return-object v1
.end method

.method final zzawp()Lcom/google/android/gms/internal/ads/zzdsr;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdsr<",
            "TV;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhmi:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtf;->size:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdtj;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method
