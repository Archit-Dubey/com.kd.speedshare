.class final Lcom/google/android/gms/internal/ads/zzejo;
.super Lcom/google/android/gms/internal/ads/zzejj;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejj;-><init>()V

    return-void
.end method

.method private static zza([BIJI)I
    .registers 7

    if-eqz p4, :cond_27

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p4, v0, :cond_18

    .line 166
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result p0

    .line 167
    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/ads/zzeji;->zzk(III)I

    move-result p0

    return p0

    .line 168
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 164
    :cond_1e
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzeji;->zzaq(II)I

    move-result p0

    return p0

    .line 163
    :cond_27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeji;->zzhr(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method final zzb(I[BII)I
    .registers 26

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    or-int v4, v2, v3

    .line 2
    array-length v5, v1

    sub-int/2addr v5, v3

    or-int/2addr v4, v5

    const/4 v7, 0x0

    if-ltz v4, :cond_154

    int-to-long v8, v2

    int-to-long v2, v3

    const/16 v4, -0x13

    const/16 v10, -0x3e

    const/16 v11, -0x10

    const/16 v12, 0x10

    const/16 v13, -0x60

    const/16 v14, -0x20

    const/4 v15, -0x1

    const/16 v6, -0x41

    const-wide/16 v16, 0x1

    if-eqz v0, :cond_b1

    cmp-long v18, v8, v2

    if-ltz v18, :cond_2a

    return v0

    :cond_2a
    int-to-byte v5, v0

    if-ge v5, v14, :cond_3d

    if-lt v5, v10, :cond_3c

    add-long v19, v8, v16

    .line 13
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v0

    if-le v0, v6, :cond_38

    goto :goto_3c

    :cond_38
    move-wide/from16 v8, v19

    goto/16 :goto_b1

    :cond_3c
    :goto_3c
    return v15

    :cond_3d
    if-ge v5, v11, :cond_69

    shr-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v15

    int-to-byte v0, v0

    if-nez v0, :cond_56

    add-long v19, v8, v16

    .line 18
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v0

    cmp-long v8, v19, v2

    if-ltz v8, :cond_54

    .line 20
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzeji;->zzaq(II)I

    move-result v0

    return v0

    :cond_54
    move-wide/from16 v8, v19

    :cond_56
    if-gt v0, v6, :cond_68

    if-ne v5, v14, :cond_5c

    if-lt v0, v13, :cond_68

    :cond_5c
    if-ne v5, v4, :cond_60

    if-ge v0, v13, :cond_68

    :cond_60
    add-long v19, v8, v16

    .line 22
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v0

    if-le v0, v6, :cond_38

    :cond_68
    return v15

    :cond_69
    shr-int/lit8 v19, v0, 0x8

    xor-int/lit8 v4, v19, -0x1

    int-to-byte v4, v4

    if-nez v4, :cond_83

    add-long v19, v8, v16

    .line 28
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v4

    cmp-long v0, v19, v2

    if-ltz v0, :cond_7f

    .line 30
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzeji;->zzaq(II)I

    move-result v0

    return v0

    :cond_7f
    move-wide/from16 v8, v19

    const/4 v0, 0x0

    goto :goto_85

    :cond_83
    shr-int/2addr v0, v12

    int-to-byte v0, v0

    :goto_85
    if-nez v0, :cond_98

    add-long v19, v8, v16

    .line 33
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v0

    cmp-long v8, v19, v2

    if-ltz v8, :cond_96

    .line 35
    invoke-static {v5, v4, v0}, Lcom/google/android/gms/internal/ads/zzeji;->zzk(III)I

    move-result v0

    return v0

    :cond_96
    move-wide/from16 v8, v19

    :cond_98
    if-gt v4, v6, :cond_b0

    shl-int/lit8 v5, v5, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v5, v4

    shr-int/lit8 v4, v5, 0x1e

    if-nez v4, :cond_b0

    if-gt v0, v6, :cond_b0

    add-long v4, v8, v16

    .line 37
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v0

    if-le v0, v6, :cond_ae

    goto :goto_b0

    :cond_ae
    move-wide v8, v4

    goto :goto_b1

    :cond_b0
    :goto_b0
    return v15

    :cond_b1
    :goto_b1
    sub-long/2addr v2, v8

    long-to-int v0, v2

    if-ge v0, v12, :cond_b7

    const/4 v2, 0x0

    goto :goto_ca

    :cond_b7
    move-wide v3, v8

    const/4 v2, 0x0

    :goto_b9
    if-ge v2, v0, :cond_c9

    add-long v19, v3, v16

    .line 44
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v3

    if-gez v3, :cond_c4

    goto :goto_ca

    :cond_c4
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v3, v19

    goto :goto_b9

    :cond_c9
    move v2, v0

    :goto_ca
    sub-int/2addr v0, v2

    int-to-long v2, v2

    add-long/2addr v8, v2

    :cond_cd
    :goto_cd
    const/4 v2, 0x0

    :goto_ce
    if-lez v0, :cond_df

    add-long v2, v8, v16

    .line 52
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v4

    if-ltz v4, :cond_dd

    add-int/lit8 v0, v0, -0x1

    move-wide v8, v2

    move v2, v4

    goto :goto_ce

    :cond_dd
    move-wide v8, v2

    move v2, v4

    :cond_df
    if-nez v0, :cond_e2

    return v7

    :cond_e2
    add-int/lit8 v0, v0, -0x1

    if-ge v2, v14, :cond_fb

    if-nez v0, :cond_e9

    return v2

    :cond_e9
    add-int/lit8 v0, v0, -0x1

    if-lt v2, v10, :cond_fa

    add-long v2, v8, v16

    .line 60
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v4

    if-le v4, v6, :cond_f6

    goto :goto_fa

    :cond_f6
    move-wide v8, v2

    const/16 v12, -0x13

    goto :goto_cd

    :cond_fa
    :goto_fa
    return v15

    :cond_fb
    if-ge v2, v11, :cond_122

    const/4 v3, 0x2

    if-ge v0, v3, :cond_105

    .line 64
    invoke-static {v1, v2, v8, v9, v0}, Lcom/google/android/gms/internal/ads/zzejo;->zza([BIJI)I

    move-result v0

    return v0

    :cond_105
    add-int/lit8 v0, v0, -0x2

    add-long v3, v8, v16

    .line 66
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v5

    if-gt v5, v6, :cond_121

    if-ne v2, v14, :cond_113

    if-lt v5, v13, :cond_121

    :cond_113
    const/16 v12, -0x13

    if-ne v2, v12, :cond_119

    if-ge v5, v13, :cond_121

    :cond_119
    add-long v8, v3, v16

    .line 67
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v2

    if-le v2, v6, :cond_cd

    :cond_121
    return v15

    :cond_122
    const/4 v3, 0x3

    const/16 v12, -0x13

    if-ge v0, v3, :cond_12c

    .line 71
    invoke-static {v1, v2, v8, v9, v0}, Lcom/google/android/gms/internal/ads/zzejo;->zza([BIJI)I

    move-result v0

    return v0

    :cond_12c
    add-int/lit8 v0, v0, -0x3

    add-long v3, v8, v16

    .line 73
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v5

    if-gt v5, v6, :cond_153

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v5, v5, 0x70

    add-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_153

    add-long v8, v3, v16

    .line 74
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v2

    if-gt v2, v6, :cond_153

    add-long v2, v8, v16

    .line 75
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v4

    if-le v4, v6, :cond_150

    goto :goto_153

    :cond_150
    move-wide v8, v2

    goto/16 :goto_cd

    :cond_153
    :goto_153
    return v15

    .line 3
    :cond_154
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    array-length v1, v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v1, "Array length=%d, index=%d, limit=%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_179

    :goto_178
    throw v0

    :goto_179
    goto :goto_178
.end method

.method final zzb(Ljava/lang/CharSequence;[BII)I
    .registers 27

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 126
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_146

    .line 127
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_146

    const/4 v2, 0x0

    :goto_1a
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_2f

    .line 131
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2f

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 132
    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_1a

    :cond_2f
    if-ne v2, v8, :cond_33

    long-to-int v0, v4

    return v0

    :cond_33
    :goto_33
    if-ge v2, v8, :cond_144

    .line 137
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_4b

    cmp-long v14, v4, v6

    if-gez v14, :cond_4b

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 139
    invoke-static {v1, v4, v5, v13}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    :goto_47
    const/16 v11, 0x80

    goto/16 :goto_fb

    :cond_4b
    const/16 v14, 0x800

    if-ge v13, v14, :cond_75

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_75

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 141
    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 142
    invoke-static {v1, v14, v15, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    move-wide/from16 v20, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v20

    goto/16 :goto_fb

    :cond_75
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_7f

    if-ge v3, v13, :cond_ae

    :cond_7f
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v17, v4, v15

    if-gtz v17, :cond_ae

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 144
    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 145
    invoke-static {v1, v14, v15, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    const-wide/16 v14, 0x1

    add-long v18, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 146
    invoke-static {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    move-wide/from16 v12, v18

    const-wide/16 v4, 0x1

    goto :goto_47

    :cond_ae
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v15, v4, v11

    if-gtz v15, :cond_10f

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_107

    .line 148
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_106

    .line 150
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    .line 151
    invoke-static {v1, v4, v5, v15}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    .line 152
    invoke-static {v1, v13, v14, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    .line 153
    invoke-static {v1, v4, v5, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    .line 154
    invoke-static {v1, v14, v15, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJB)V

    move v2, v3

    :goto_fb
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x80

    move-wide/from16 v20, v4

    move-wide v4, v12

    move-wide/from16 v11, v20

    goto/16 :goto_33

    :cond_106
    move v2, v3

    .line 149
    :cond_107
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejl;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/ads/zzejl;-><init>(II)V

    throw v0

    :cond_10f
    if-gt v14, v13, :cond_127

    if-gt v13, v3, :cond_127

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_121

    .line 157
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_127

    .line 158
    :cond_121
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejl;

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/ads/zzejl;-><init>(II)V

    throw v0

    .line 159
    :cond_127
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_144
    long-to-int v0, v4

    return v0

    .line 128
    :cond_146
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 129
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v2, v3

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_16b

    :goto_16a
    throw v1

    :goto_16b
    goto :goto_16a
.end method

.method final zzo([BII)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    or-int v0, p2, p3

    .line 78
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_c7

    add-int v0, p2, p3

    .line 83
    new-array p3, p3, [C

    const/4 v3, 0x0

    :goto_f
    if-ge p2, v0, :cond_25

    int-to-long v4, p2

    .line 86
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v4

    .line 87
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzejk;->zzi(B)Z

    move-result v5

    if-eqz v5, :cond_25

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 89
    invoke-static {v4, p3, v3}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(B[CI)V

    move v3, v5

    goto :goto_f

    :cond_25
    move v8, v3

    :goto_26
    if-ge p2, v0, :cond_c1

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    .line 92
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result p2

    .line 93
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzejk;->zzi(B)Z

    move-result v4

    if-eqz v4, :cond_53

    add-int/lit8 v4, v8, 0x1

    .line 94
    invoke-static {p2, p3, v8}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(B[CI)V

    :goto_3a
    if-ge v3, v0, :cond_50

    int-to-long v5, v3

    .line 96
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result p2

    .line 97
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzejk;->zzi(B)Z

    move-result v5

    if-eqz v5, :cond_50

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    .line 99
    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(B[CI)V

    move v4, v5

    goto :goto_3a

    :cond_50
    move p2, v3

    move v8, v4

    goto :goto_26

    .line 101
    :cond_53
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzejk;->zzj(B)Z

    move-result v4

    if-eqz v4, :cond_6f

    if-ge v3, v0, :cond_6a

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 105
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 106
    invoke-static {p2, v3, p3, v8}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_26

    .line 103
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgc()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    .line 107
    :cond_6f
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzejk;->zzk(B)Z

    move-result v4

    if-eqz v4, :cond_94

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_8f

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 111
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    int-to-long v6, v4

    .line 112
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 113
    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_26

    .line 109
    :cond_8f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgc()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    :cond_94
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_bc

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 117
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    int-to-long v6, v4

    .line 118
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    int-to-long v3, v3

    .line 119
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzejf;->zza([BJ)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    .line 120
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzejk;->zzb(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto/16 :goto_26

    .line 115
    :cond_bc
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgc()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    .line 123
    :cond_c1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 79
    :cond_c7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 80
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

    goto :goto_eb

    :goto_ea
    throw v0

    :goto_eb
    goto :goto_ea
.end method
