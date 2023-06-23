.class final Lcom/google/android/gms/internal/ads/zzejm;
.super Lcom/google/android/gms/internal/ads/zzejj;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejj;-><init>()V

    return-void
.end method


# virtual methods
.method final zzb(I[BII)I
    .registers 16

    const/16 v0, -0x13

    const/16 v1, -0x3e

    const/16 v2, -0x10

    const/4 v3, 0x0

    const/16 v4, -0x60

    const/16 v5, -0x20

    const/4 v6, -0x1

    const/16 v7, -0x41

    if-eqz p1, :cond_85

    if-lt p3, p4, :cond_13

    return p1

    :cond_13
    int-to-byte v8, p1

    if-ge v8, v5, :cond_23

    if-lt v8, v1, :cond_22

    add-int/lit8 p1, p3, 0x1

    .line 7
    aget-byte p3, p2, p3

    if-le p3, v7, :cond_1f

    goto :goto_22

    :cond_1f
    move p3, p1

    goto/16 :goto_85

    :cond_22
    :goto_22
    return v6

    :cond_23
    if-ge v8, v2, :cond_4a

    shr-int/lit8 p1, p1, 0x8

    xor-int/2addr p1, v6

    int-to-byte p1, p1

    if-nez p1, :cond_39

    add-int/lit8 p1, p3, 0x1

    .line 12
    aget-byte p3, p2, p3

    if-lt p1, p4, :cond_36

    .line 14
    invoke-static {v8, p3}, Lcom/google/android/gms/internal/ads/zzeji;->zzaq(II)I

    move-result p1

    return p1

    :cond_36
    move v10, p3

    move p3, p1

    move p1, v10

    :cond_39
    if-gt p1, v7, :cond_49

    if-ne v8, v5, :cond_3f

    if-lt p1, v4, :cond_49

    :cond_3f
    if-ne v8, v0, :cond_43

    if-ge p1, v4, :cond_49

    :cond_43
    add-int/lit8 p1, p3, 0x1

    .line 15
    aget-byte p3, p2, p3

    if-le p3, v7, :cond_1f

    :cond_49
    return v6

    :cond_4a
    shr-int/lit8 v9, p1, 0x8

    xor-int/2addr v9, v6

    int-to-byte v9, v9

    if-nez v9, :cond_5e

    add-int/lit8 p1, p3, 0x1

    .line 21
    aget-byte v9, p2, p3

    if-lt p1, p4, :cond_5b

    .line 23
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzeji;->zzaq(II)I

    move-result p1

    return p1

    :cond_5b
    move p3, p1

    const/4 p1, 0x0

    goto :goto_61

    :cond_5e
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    :goto_61
    if-nez p1, :cond_71

    add-int/lit8 p1, p3, 0x1

    .line 26
    aget-byte p3, p2, p3

    if-lt p1, p4, :cond_6e

    .line 28
    invoke-static {v8, v9, p3}, Lcom/google/android/gms/internal/ads/zzeji;->zzk(III)I

    move-result p1

    return p1

    :cond_6e
    move v10, p3

    move p3, p1

    move p1, v10

    :cond_71
    if-gt v9, v7, :cond_84

    shl-int/lit8 v8, v8, 0x1c

    add-int/lit8 v9, v9, 0x70

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1e

    if-nez v8, :cond_84

    if-gt p1, v7, :cond_84

    add-int/lit8 p1, p3, 0x1

    .line 29
    aget-byte p3, p2, p3

    if-le p3, v7, :cond_1f

    :cond_84
    return v6

    :cond_85
    :goto_85
    if-ge p3, p4, :cond_8e

    .line 32
    aget-byte p1, p2, p3

    if-ltz p1, :cond_8e

    add-int/lit8 p3, p3, 0x1

    goto :goto_85

    :cond_8e
    if-lt p3, p4, :cond_91

    return v3

    :cond_91
    :goto_91
    if-lt p3, p4, :cond_94

    return v3

    :cond_94
    add-int/lit8 p1, p3, 0x1

    .line 37
    aget-byte p3, p2, p3

    if-gez p3, :cond_ed

    if-ge p3, v5, :cond_a8

    if-lt p1, p4, :cond_9f

    return p3

    :cond_9f
    if-lt p3, v1, :cond_a7

    add-int/lit8 p3, p1, 0x1

    .line 41
    aget-byte p1, p2, p1

    if-le p1, v7, :cond_91

    :cond_a7
    return v6

    :cond_a8
    if-ge p3, v2, :cond_c8

    add-int/lit8 v8, p4, -0x1

    if-lt p1, v8, :cond_b3

    .line 45
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzeji;->zzp([BII)I

    move-result p1

    return p1

    :cond_b3
    add-int/lit8 v8, p1, 0x1

    .line 46
    aget-byte p1, p2, p1

    if-gt p1, v7, :cond_c7

    if-ne p3, v5, :cond_bd

    if-lt p1, v4, :cond_c7

    :cond_bd
    if-ne p3, v0, :cond_c1

    if-ge p1, v4, :cond_c7

    :cond_c1
    add-int/lit8 p1, v8, 0x1

    aget-byte p3, p2, v8

    if-le p3, v7, :cond_ed

    :cond_c7
    return v6

    :cond_c8
    add-int/lit8 v8, p4, -0x2

    if-lt p1, v8, :cond_d1

    .line 49
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzeji;->zzp([BII)I

    move-result p1

    return p1

    :cond_d1
    add-int/lit8 v8, p1, 0x1

    .line 50
    aget-byte p1, p2, p1

    if-gt p1, v7, :cond_ec

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p3, p1

    shr-int/lit8 p1, p3, 0x1e

    if-nez p1, :cond_ec

    add-int/lit8 p1, v8, 0x1

    aget-byte p3, p2, v8

    if-gt p3, v7, :cond_ec

    add-int/lit8 p3, p1, 0x1

    aget-byte p1, p2, p1

    if-le p1, v7, :cond_91

    :cond_ec
    return v6

    :cond_ed
    move p3, p1

    goto :goto_91
.end method

.method final zzb(Ljava/lang/CharSequence;[BII)I
    .registers 12

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p4, p3

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1a

    add-int v3, v1, p3

    if-ge v3, p4, :cond_1a

    .line 94
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1a

    int-to-byte v2, v4

    .line 95
    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    if-ne v1, v0, :cond_1e

    add-int/2addr p3, v0

    return p3

    :cond_1e
    add-int/2addr p3, v1

    :goto_1f
    if-ge v1, v0, :cond_ff

    .line 101
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_31

    if-ge p3, p4, :cond_31

    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    .line 103
    aput-byte v3, p2, p3

    :goto_2e
    move p3, v4

    goto/16 :goto_b5

    :cond_31
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4b

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_4b

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 105
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 106
    aput-byte v3, p2, v4

    goto :goto_b5

    :cond_4b
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_55

    if-ge v4, v3, :cond_75

    :cond_55
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_75

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 108
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 109
    aput-byte v5, p2, v4

    add-int/lit8 v4, p3, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 110
    aput-byte v3, p2, p3

    goto :goto_2e

    :cond_75
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_c2

    add-int/lit8 v4, v1, 0x1

    .line 112
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_ba

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 114
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 115
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 116
    aput-byte v5, p2, v3

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 117
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 118
    aput-byte v1, p2, v3

    move v1, v4

    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    :cond_b9
    move v1, v4

    .line 113
    :cond_ba
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejl;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzejl;-><init>(II)V

    throw p1

    :cond_c2
    if-gt v5, v3, :cond_de

    if-gt v3, v4, :cond_de

    add-int/lit8 p2, v1, 0x1

    .line 121
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_d8

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_de

    .line 122
    :cond_d8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejl;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzejl;-><init>(II)V

    throw p1

    .line 123
    :cond_de
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p2, 0x25

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed writing "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " at index "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ff
    return p3
.end method

.method final zzo([BII)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    or-int v0, p2, p3

    .line 53
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_ab

    add-int v0, p2, p3

    .line 58
    new-array p3, p3, [C

    const/4 v3, 0x0

    :goto_f
    if-ge p2, v0, :cond_22

    .line 61
    aget-byte v4, p1, p2

    .line 62
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzejk;->zzi(B)Z

    move-result v5

    if-eqz v5, :cond_22

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 64
    invoke-static {v4, p3, v3}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(B[CI)V

    move v3, v5

    goto :goto_f

    :cond_22
    move v8, v3

    :goto_23
    if-ge p2, v0, :cond_a5

    add-int/lit8 v3, p2, 0x1

    .line 67
    aget-byte p2, p1, p2

    .line 68
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzejk;->zzi(B)Z

    move-result v4

    if-eqz v4, :cond_4a

    add-int/lit8 v4, v8, 0x1

    .line 69
    invoke-static {p2, p3, v8}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(B[CI)V

    :goto_34
    if-ge v3, v0, :cond_47

    .line 71
    aget-byte p2, p1, v3

    .line 72
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzejk;->zzi(B)Z

    move-result v5

    if-eqz v5, :cond_47

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    .line 74
    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(B[CI)V

    move v4, v5

    goto :goto_34

    :cond_47
    move p2, v3

    move v8, v4

    goto :goto_23

    .line 76
    :cond_4a
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzejk;->zzj(B)Z

    move-result v4

    if-eqz v4, :cond_63

    if-ge v3, v0, :cond_5e

    add-int/lit8 v4, v3, 0x1

    .line 79
    aget-byte v3, p1, v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p2, v3, p3, v8}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_23

    .line 78
    :cond_5e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgc()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    .line 80
    :cond_63
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzejk;->zzk(B)Z

    move-result v4

    if-eqz v4, :cond_82

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7d

    add-int/lit8 v4, v3, 0x1

    .line 83
    aget-byte v3, p1, v3

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_23

    .line 82
    :cond_7d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgc()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    :cond_82
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_a0

    add-int/lit8 v4, v3, 0x1

    .line 86
    aget-byte v5, p1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, p1, v4

    add-int/lit8 v9, v3, 0x1

    aget-byte v7, p1, v3

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto :goto_23

    .line 85
    :cond_a0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgc()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    .line 89
    :cond_a5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 54
    :cond_ab
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_cf

    :goto_ce
    throw v0

    :goto_cf
    goto :goto_ce
.end method
