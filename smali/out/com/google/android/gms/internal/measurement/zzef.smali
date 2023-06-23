.class final Lcom/google/android/gms/internal/measurement/zzef;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final zzd:Ljava/lang/Object;


# instance fields
.field transient zza:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field transient zzb:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field transient zzc:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient zze:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient zzf:I

.field private transient zzg:I

.field private transient zzh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient zzi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient zzj:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzef;->zzd:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x1

    const-string v1, "Expected size must be >= 0"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zza(ZLjava/lang/Object;)V

    const/4 v1, 0x3

    const v2, 0x3fffffff    # 1.9999999f

    .line 4
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzgb;->zza(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzf:I

    return-void
.end method

.method private final zza(IIII)I
    .registers 13

    .line 105
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzem;->zza(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_e

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 108
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Ljava/lang/Object;II)V

    .line 109
    :cond_e
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    .line 110
    iget-object p4, p0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    const/4 v1, 0x0

    :goto_13
    if-gt v1, p1, :cond_38

    .line 112
    invoke-static {p3, v1}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Ljava/lang/Object;I)I

    move-result v2

    :goto_19
    if-eqz v2, :cond_35

    add-int/lit8 v3, v2, -0x1

    .line 115
    aget v4, p4, v3

    xor-int/lit8 v5, p1, -0x1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 120
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Ljava/lang/Object;I)I

    move-result v7

    .line 121
    invoke-static {v0, v6, v2}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Ljava/lang/Object;II)V

    .line 122
    invoke-static {v5, v7, p2}, Lcom/google/android/gms/internal/measurement/zzem;->zza(III)I

    move-result v2

    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_19

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 128
    :cond_38
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    .line 129
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzef;->zzb(I)V

    return p2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzef;)I
    .registers 1

    .line 261
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzf:I

    return p0
.end method

.method private final zza(Ljava/lang/Object;)I
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zza()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    .line 133
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzeo;->zza(Ljava/lang/Object;)I

    move-result v0

    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzi()I

    move-result v2

    .line 135
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1b

    return v1

    :cond_1b
    xor-int/lit8 v4, v2, -0x1

    and-int/2addr v0, v4

    :cond_1e
    add-int/lit8 v3, v3, -0x1

    .line 142
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_33

    .line 145
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    aget-object v6, v6, v3

    .line 146
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/measurement/zzdo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    return v3

    :cond_33
    and-int v3, v5, v2

    if-nez v3, :cond_1e

    return v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzef;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static zzb(II)I
    .registers 2

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzef;)I
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzi()I

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzef;Ljava/lang/Object;)I
    .registers 2

    .line 264
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zza()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzef;->zzd:Ljava/lang/Object;

    return-object p1

    .line 169
    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzi()I

    move-result v7

    const/4 v1, 0x0

    .line 170
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v0, p1

    move v2, v7

    .line 171
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_21

    .line 173
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzef;->zzd:Ljava/lang/Object;

    return-object p1

    .line 174
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 175
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzef;->zza(II)V

    .line 176
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    .line 177
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzc()V

    return-object v0
.end method

.method private final zzb(I)V
    .registers 4

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzf:I

    const/16 v1, 0x1f

    .line 12
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzem;->zza(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzf:I

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzef;)Ljava/lang/Object;
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzef;)I
    .registers 3

    .line 267
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    return v0
.end method

.method static synthetic zzh()Ljava/lang/Object;
    .registers 1

    .line 263
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzef;->zzd:Ljava/lang/Object;

    return-object v0
.end method

.method private final zzi()I
    .registers 3

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzf:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final clear()V
    .registers 7

    .line 240
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zza()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 242
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzc()V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->zza(III)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzf:I

    .line 247
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 248
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    .line 249
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    return-void

    .line 250
    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    .line 253
    instance-of v1, v0, [B

    if-eqz v1, :cond_42

    .line 254
    check-cast v0, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_51

    .line 255
    :cond_42
    instance-of v1, v0, [S

    if-eqz v1, :cond_4c

    .line 256
    check-cast v0, [S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_51

    .line 257
    :cond_4c
    check-cast v0, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 258
    :goto_51
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 259
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 154
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 225
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 227
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 228
    :goto_d
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    if-ge v1, v2, :cond_20

    .line 229
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/measurement/zzdo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_20
    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzi:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 216
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzej;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzej;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    .line 217
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzi:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
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

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 157
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 158
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final isEmpty()Z
    .registers 2

    .line 224
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzh:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 209
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzel;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzel;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    .line 210
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzh:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzef;->zza()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_51

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzef;->zza()Z

    move-result v3

    const-string v5, "Arrays already allocated"

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzdq;->zzb(ZLjava/lang/Object;)V

    .line 20
    iget v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzf:I

    const/4 v5, 0x4

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x2

    .line 23
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v7

    .line 25
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    double-to-int v8, v10

    if-le v6, v8, :cond_36

    shl-int/lit8 v7, v7, 0x1

    if-gtz v7, :cond_36

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_37

    :cond_36
    move v6, v7

    .line 29
    :goto_37
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 31
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzem;->zza(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    sub-int/2addr v5, v4

    .line 32
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzef;->zzb(I)V

    .line 33
    new-array v5, v3, [I

    iput-object v5, v0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    .line 34
    new-array v5, v3, [Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    .line 35
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    .line 36
    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 38
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 39
    :cond_5c
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    .line 40
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    .line 41
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    .line 42
    iget v7, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    add-int/lit8 v8, v7, 0x1

    .line 44
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzeo;->zza(Ljava/lang/Object;)I

    move-result v9

    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzi()I

    move-result v10

    and-int v11, v9, v10

    .line 47
    iget-object v12, v0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    invoke-static {v12, v11}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Ljava/lang/Object;I)I

    move-result v12

    if-nez v12, :cond_8a

    if-le v8, v10, :cond_84

    .line 50
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzem;->zzb(I)I

    move-result v3

    invoke-direct {v0, v10, v3, v9, v7}, Lcom/google/android/gms/internal/measurement/zzef;->zza(IIII)I

    move-result v10

    goto/16 :goto_f4

    .line 51
    :cond_84
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    invoke-static {v3, v11, v8}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Ljava/lang/Object;II)V

    goto :goto_f4

    :cond_8a
    xor-int/lit8 v11, v10, -0x1

    and-int v15, v9, v11

    const/16 v16, 0x0

    :goto_90
    sub-int/2addr v12, v4

    .line 57
    aget v13, v3, v12

    and-int v14, v13, v11

    if-ne v14, v15, :cond_a4

    .line 60
    aget-object v14, v5, v12

    .line 61
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/measurement/zzdo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a4

    .line 62
    aget-object v1, v6, v12

    .line 63
    aput-object v2, v6, v12

    return-object v1

    :cond_a4
    and-int v14, v13, v10

    move-object/from16 v17, v5

    add-int/lit8 v5, v16, 0x1

    if-nez v14, :cond_13a

    const/16 v6, 0x9

    if-lt v5, v6, :cond_e3

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzi()I

    move-result v3

    add-int/2addr v3, v4

    .line 73
    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzd()I

    move-result v3

    :goto_c0
    if-ltz v3, :cond_d2

    .line 76
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    aget-object v5, v5, v3

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzef;->zza(I)I

    move-result v3

    goto :goto_c0

    .line 78
    :cond_d2
    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 79
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    .line 80
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    .line 81
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzc()V

    .line 84
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_e3
    if-le v8, v10, :cond_ee

    .line 86
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzem;->zzb(I)I

    move-result v3

    invoke-direct {v0, v10, v3, v9, v7}, Lcom/google/android/gms/internal/measurement/zzef;->zza(IIII)I

    move-result v10

    goto :goto_f4

    .line 87
    :cond_ee
    invoke-static {v13, v8, v10}, Lcom/google/android/gms/internal/measurement/zzem;->zza(III)I

    move-result v5

    aput v5, v3, v12

    .line 89
    :goto_f4
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    array-length v3, v3

    if-le v8, v3, :cond_122

    const v5, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v6, v3, 0x1

    .line 92
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v3

    or-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_122

    .line 95
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    .line 96
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    .line 97
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    .line 99
    :cond_122
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    const/4 v12, 0x0

    invoke-static {v9, v12, v10}, Lcom/google/android/gms/internal/measurement/zzem;->zza(III)I

    move-result v4

    aput v4, v3, v7

    .line 100
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    aput-object v1, v3, v7

    .line 101
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    aput-object v2, v1, v7

    .line 102
    iput v8, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzc()V

    const/4 v13, 0x0

    return-object v13

    :cond_13a
    move/from16 v16, v5

    move v12, v14

    move-object/from16 v5, v17

    goto/16 :goto_90
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
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

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 164
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 165
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 166
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzef;->zzd:Ljava/lang/Object;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    :cond_14
    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 222
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 223
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzj:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 234
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzen;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzen;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    .line 235
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzj:Ljava/util/Collection;

    :cond_b
    return-object v0
.end method

.method final zza(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 206
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzg:I

    if-ge p1, v0, :cond_7

    return p1

    :cond_7
    const/4 p1, -0x1

    return p1
.end method

.method final zza(II)V
    .registers 10

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ge p1, v0, :cond_4e

    .line 181
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    aget-object v4, v3, v0

    .line 182
    aput-object v4, v3, p1

    .line 183
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    .line 184
    aput-object v2, v3, v0

    .line 185
    aput-object v2, v5, v0

    .line 186
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    aget v3, v2, v0

    aput v3, v2, p1

    .line 187
    aput v1, v2, v0

    .line 188
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeo;->zza(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    .line 189
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Ljava/lang/Object;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-ne v2, v0, :cond_39

    .line 192
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, v1, p1}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Ljava/lang/Object;II)V

    return-void

    :cond_39
    :goto_39
    add-int/lit8 v2, v2, -0x1

    .line 194
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    aget v3, v1, v2

    and-int v4, v3, p2

    if-ne v4, v0, :cond_4c

    add-int/lit8 p1, p1, 0x1

    .line 199
    invoke-static {v3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzem;->zza(III)I

    move-result p1

    aput p1, v1, v2

    return-void

    :cond_4c
    move v2, v4

    goto :goto_39

    .line 201
    :cond_4e
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    aput-object v2, p2, p1

    .line 202
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzc:[Ljava/lang/Object;

    aput-object v2, p2, p1

    .line 203
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzef;->zza:[I

    aput v1, p2, p1

    return-void
.end method

.method final zza()Z
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method final zzb()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zze:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 8
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method final zzc()V
    .registers 2

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzf:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzef;->zzf:I

    return-void
.end method

.method final zzd()I
    .registers 2

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method final zze()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 214
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzee;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzee;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    return-object v0
.end method

.method final zzf()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 220
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 221
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzeh;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    return-object v0
.end method

.method final zzg()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 238
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 239
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzeg;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    return-object v0
.end method
