.class final Lcom/google/android/gms/internal/ads/zznd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzmy;
.implements Lcom/google/android/gms/internal/ads/zzmz;


# instance fields
.field private zzaex:Lcom/google/android/gms/internal/ads/zznr;

.field private zzbdq:Lcom/google/android/gms/internal/ads/zzmy;

.field public final zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

.field private final zzbey:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/gms/internal/ads/zznk;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzbez:I

.field private zzbfa:[Lcom/google/android/gms/internal/ads/zzmz;

.field private zzbfb:Lcom/google/android/gms/internal/ads/zznn;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzmz;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    .line 3
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbey:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final zza([Lcom/google/android/gms/internal/ads/zzod;[Z[Lcom/google/android/gms/internal/ads/zznk;[ZJ)J
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 16
    array-length v3, v1

    new-array v3, v3, [I

    .line 17
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 18
    :goto_d
    array-length v7, v1

    if-ge v6, v7, :cond_4e

    .line 19
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_17

    const/4 v7, -0x1

    goto :goto_25

    .line 20
    :cond_17
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbey:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_25
    aput v7, v3, v6

    .line 21
    aput v8, v4, v6

    .line 22
    aget-object v7, v1, v6

    if-eqz v7, :cond_4b

    .line 23
    aget-object v7, v1, v6

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzod;->zzik()Lcom/google/android/gms/internal/ads/zzno;

    move-result-object v7

    const/4 v9, 0x0

    .line 24
    :goto_34
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v11, v10

    if-ge v9, v11, :cond_4b

    .line 25
    aget-object v10, v10, v9

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzmz;->zzho()Lcom/google/android/gms/internal/ads/zznr;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zznr;->zza(Lcom/google/android/gms/internal/ads/zzno;)I

    move-result v10

    if-eq v10, v8, :cond_48

    .line 26
    aput v9, v4, v6

    goto :goto_4b

    :cond_48
    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    :cond_4b
    :goto_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 30
    :cond_4e
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbey:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 31
    array-length v6, v1

    new-array v7, v6, [Lcom/google/android/gms/internal/ads/zznk;

    .line 32
    array-length v8, v1

    new-array v8, v8, [Lcom/google/android/gms/internal/ads/zznk;

    .line 33
    array-length v9, v1

    new-array v14, v9, [Lcom/google/android/gms/internal/ads/zzod;

    .line 34
    new-instance v15, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v9, v9

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v16, p5

    const/4 v13, 0x0

    .line 35
    :goto_67
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v9, v9

    if-ge v13, v9, :cond_f2

    const/4 v9, 0x0

    .line 36
    :goto_6d
    array-length v10, v1

    if-ge v9, v10, :cond_86

    .line 37
    aget v10, v3, v9

    const/4 v11, 0x0

    if-ne v10, v13, :cond_78

    aget-object v10, v2, v9

    goto :goto_79

    :cond_78
    move-object v10, v11

    :goto_79
    aput-object v10, v8, v9

    .line 38
    aget v10, v4, v9

    if-ne v10, v13, :cond_81

    aget-object v11, v1, v9

    :cond_81
    aput-object v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    .line 40
    :cond_86
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    aget-object v9, v9, v13

    move-object v10, v14

    move-object/from16 v11, p2

    move-object v12, v8

    move v5, v13

    move-object/from16 v13, p4

    move-object/from16 v18, v14

    move-object v2, v15

    move-wide/from16 v14, v16

    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzmz;->zza([Lcom/google/android/gms/internal/ads/zzod;[Z[Lcom/google/android/gms/internal/ads/zznk;[ZJ)J

    move-result-wide v9

    if-nez v5, :cond_9f

    move-wide/from16 v16, v9

    goto :goto_a3

    :cond_9f
    cmp-long v11, v9, v16

    if-nez v11, :cond_ea

    :goto_a3
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 46
    :goto_a5
    array-length v11, v1

    if-ge v9, v11, :cond_d8

    .line 47
    aget v11, v4, v9

    const/4 v12, 0x1

    if-ne v11, v5, :cond_c8

    .line 48
    aget-object v10, v8, v9

    if-eqz v10, :cond_b3

    const/4 v10, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v10, 0x0

    :goto_b4
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 49
    aget-object v10, v8, v9

    aput-object v10, v7, v9

    .line 51
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbey:Ljava/util/IdentityHashMap;

    aget-object v11, v8, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_d5

    .line 52
    :cond_c8
    aget v11, v3, v9

    if-ne v11, v5, :cond_d5

    .line 53
    aget-object v11, v8, v9

    if-nez v11, :cond_d1

    goto :goto_d2

    :cond_d1
    const/4 v12, 0x0

    :goto_d2
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    :cond_d5
    :goto_d5
    add-int/lit8 v9, v9, 0x1

    goto :goto_a5

    :cond_d8
    if-eqz v10, :cond_e1

    .line 56
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    aget-object v9, v9, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    add-int/lit8 v13, v5, 0x1

    move-object v15, v2

    move-object/from16 v14, v18

    move-object/from16 v2, p3

    goto/16 :goto_67

    .line 44
    :cond_ea
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f2
    move-object v1, v2

    move-object v2, v15

    const/4 v3, 0x0

    .line 58
    invoke-static {v7, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzmz;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbfa:[Lcom/google/android/gms/internal/ads/zzmz;

    .line 60
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 61
    new-instance v1, Lcom/google/android/gms/internal/ads/zzmm;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbfa:[Lcom/google/android/gms/internal/ads/zzmz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzmm;-><init>([Lcom/google/android/gms/internal/ads/zznn;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zznd;->zzbfb:Lcom/google/android/gms/internal/ads/zznn;

    return-wide v16
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzmy;J)V
    .registers 7

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbdq:Lcom/google/android/gms/internal/ads/zzmy;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbez:I

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    aget-object v2, p1, v1

    .line 8
    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzmz;->zza(Lcom/google/android/gms/internal/ads/zzmy;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzmz;)V
    .registers 12

    .line 94
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbez:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbez:I

    if-lez p1, :cond_9

    return-void

    .line 97
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v2, v0, :cond_1d

    aget-object v4, p1, v2

    .line 98
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzmz;->zzho()Lcom/google/android/gms/internal/ads/zznr;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/ads/zznr;->length:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 100
    :cond_1d
    new-array p1, v3, [Lcom/google/android/gms/internal/ads/zzno;

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_24
    if-ge v3, v2, :cond_40

    aget-object v5, v0, v3

    .line 103
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzmz;->zzho()Lcom/google/android/gms/internal/ads/zznr;

    move-result-object v5

    .line 104
    iget v6, v5, Lcom/google/android/gms/internal/ads/zznr;->length:I

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v6, :cond_3d

    add-int/lit8 v8, v4, 0x1

    .line 106
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zznr;->zzbd(I)Lcom/google/android/gms/internal/ads/zzno;

    move-result-object v9

    aput-object v9, p1, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_2f

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 109
    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/ads/zznr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zznr;-><init>([Lcom/google/android/gms/internal/ads/zzno;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzaex:Lcom/google/android/gms/internal/ads/zznr;

    .line 110
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbdq:Lcom/google/android/gms/internal/ads/zzmy;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzmy;->zza(Lcom/google/android/gms/internal/ads/zzmz;)V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zznn;)V
    .registers 2

    .line 113
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzaex:Lcom/google/android/gms/internal/ads/zznr;

    if-eqz p1, :cond_9

    .line 114
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbdq:Lcom/google/android/gms/internal/ads/zzmy;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzmy;->zza(Lcom/google/android/gms/internal/ads/zznn;)V

    :cond_9
    return-void
.end method

.method public final zzee(J)Z
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfb:Lcom/google/android/gms/internal/ads/zznn;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zznn;->zzee(J)Z

    move-result p1

    return p1
.end method

.method public final zzef(J)V
    .registers 7

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfa:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 64
    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzmz;->zzef(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final zzeg(J)J
    .registers 7

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfa:[Lcom/google/android/gms/internal/ads/zzmz;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmz;->zzeg(J)J

    move-result-wide p1

    const/4 v0, 0x1

    .line 89
    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfa:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 90
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzmz;->zzeg(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 91
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Children seeked to different positions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    return-wide p1
.end method

.method public final zzhm()J
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfb:Lcom/google/android/gms/internal/ads/zznn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznn;->zzhm()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzhn()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 12
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzmz;->zzhn()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final zzho()Lcom/google/android/gms/internal/ads/zznr;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzaex:Lcom/google/android/gms/internal/ads/zznr;

    return-object v0
.end method

.method public final zzhp()J
    .registers 10

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmz;->zzhp()J

    move-result-wide v2

    const/4 v0, 0x1

    .line 70
    :goto_a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v5, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v5, :cond_29

    .line 71
    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzmz;->zzhp()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 72
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child reported discontinuity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    cmp-long v0, v2, v6

    if-eqz v0, :cond_4f

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfa:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v4, :cond_4f

    aget-object v6, v0, v5

    .line 76
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    aget-object v7, v7, v1

    if-eq v6, v7, :cond_4c

    .line 77
    invoke-interface {v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzmz;->zzeg(J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_44

    goto :goto_4c

    .line 78
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Children seeked to different positions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_4f
    return-wide v2
.end method

.method public final zzhq()J
    .registers 13

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfa:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_a
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1f

    aget-object v9, v0, v4

    .line 83
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzmz;->zzhq()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1c

    .line 85
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    cmp-long v0, v5, v2

    if-nez v0, :cond_24

    return-wide v7

    :cond_24
    return-wide v5
.end method
