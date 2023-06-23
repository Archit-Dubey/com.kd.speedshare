.class public final Lcom/google/android/gms/internal/ads/zzpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private data:[B

.field private zzbjz:I

.field private zzbka:I

.field private zzbkb:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 2
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzpj;-><init>([BI)V

    return-void
.end method

.method private constructor <init>([BI)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbkb:I

    return-void
.end method


# virtual methods
.method public final zzbn(I)I
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 11
    :cond_4
    div-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x1

    const/16 v5, 0xff

    if-ge v2, v1, :cond_36

    .line 13
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbka:I

    if-eqz v6, :cond_23

    .line 14
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    aget-byte v9, v7, v8

    and-int/2addr v9, v5

    shl-int/2addr v9, v6

    add-int/2addr v8, v4

    aget-byte v7, v7, v8

    and-int/2addr v7, v5

    rsub-int/lit8 v6, v6, 0x8

    ushr-int v6, v7, v6

    or-int/2addr v6, v9

    goto :goto_29

    .line 15
    :cond_23
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    aget-byte v6, v6, v7

    :goto_29
    add-int/lit8 p1, p1, -0x8

    and-int/2addr v5, v6

    shl-int/2addr v5, p1

    or-int/2addr v3, v5

    .line 18
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_36
    const/16 v1, 0x8

    if-lez p1, :cond_72

    .line 21
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbka:I

    add-int/2addr v2, p1

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, v5, p1

    int-to-byte p1, p1

    if-le v2, v1, :cond_5d

    .line 24
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    aget-byte v8, v6, v7

    and-int/2addr v8, v5

    add-int/lit8 v9, v2, -0x8

    shl-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x1

    aget-byte v6, v6, v9

    and-int/2addr v5, v6

    rsub-int/lit8 v6, v2, 0x10

    shr-int/2addr v5, v6

    or-int/2addr v5, v8

    and-int/2addr p1, v5

    or-int/2addr p1, v3

    add-int/2addr v7, v4

    .line 25
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    goto :goto_6e

    .line 26
    :cond_5d
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    aget-byte v6, v6, v7

    and-int/2addr v5, v6

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v5, v6

    and-int/2addr p1, v5

    or-int/2addr p1, v3

    if-ne v2, v1, :cond_6e

    add-int/2addr v7, v4

    .line 28
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    :cond_6e
    :goto_6e
    move v3, p1

    .line 29
    rem-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbka:I

    .line 31
    :cond_72
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    if-ltz p1, :cond_85

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbka:I

    if-ltz v2, :cond_85

    if-ge v2, v1, :cond_85

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbkb:I

    if-lt p1, v1, :cond_84

    if-ne p1, v1, :cond_85

    if-nez v2, :cond_85

    :cond_84
    const/4 v0, 0x1

    :cond_85
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    return v3
.end method
