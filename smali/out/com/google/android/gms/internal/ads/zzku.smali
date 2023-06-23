.class final Lcom/google/android/gms/internal/ads/zzku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field private static final zzavq:I

.field private static final zzawe:I

.field private static final zzawf:I

.field private static final zzawg:I

.field private static final zzawh:I

.field private static final zzawi:I

.field private static final zzawj:I

.field private static final zzawk:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "vide"

    .line 671
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzbk(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzku;->zzawe:I

    const-string v0, "soun"

    .line 672
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzbk(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzku;->zzawf:I

    const-string v0, "text"

    .line 673
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzbk(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzku;->zzawg:I

    const-string v0, "sbtl"

    .line 674
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzbk(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzku;->zzawh:I

    const-string v0, "subt"

    .line 675
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzbk(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzku;->zzawi:I

    const-string v0, "clcp"

    .line 676
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzbk(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzku;->zzawj:I

    const-string v0, "cenc"

    .line 677
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzbk(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzku;->zzawk:I

    const-string v0, "meta"

    .line 678
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzbk(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzku;->zzavq:I

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzpi;IILcom/google/android/gms/internal/ads/zzkz;I)I
    .registers 20

    move-object v0, p0

    .line 612
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v1

    :goto_5
    sub-int v2, v1, p1

    const/4 v3, 0x0

    move/from16 v4, p2

    if-ge v2, v4, :cond_cb

    .line 614
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 615
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v2

    const/4 v5, 0x1

    if-lez v2, :cond_18

    const/4 v6, 0x1

    goto :goto_19

    :cond_18
    const/4 v6, 0x0

    :goto_19
    const-string v7, "childAtomSize should be positive"

    .line 616
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(ZLjava/lang/Object;)V

    .line 617
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v6

    .line 618
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzauk:I

    if-ne v6, v7, :cond_c6

    add-int/lit8 v6, v1, 0x8

    const/4 v7, 0x0

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    :goto_2c
    sub-int v11, v6, v1

    if-ge v11, v2, :cond_99

    .line 625
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 626
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v11

    .line 627
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v12

    .line 628
    sget v13, Lcom/google/android/gms/internal/ads/zzkt;->zzauq:I

    if-ne v12, v13, :cond_48

    .line 629
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_97

    .line 630
    :cond_48
    sget v13, Lcom/google/android/gms/internal/ads/zzkt;->zzaul:I

    if-ne v12, v13, :cond_5c

    const/4 v8, 0x4

    .line 631
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 632
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v8

    sget v12, Lcom/google/android/gms/internal/ads/zzku;->zzawk:I

    if-ne v8, v12, :cond_5a

    const/4 v8, 0x1

    goto :goto_97

    :cond_5a
    const/4 v8, 0x0

    goto :goto_97

    .line 633
    :cond_5c
    sget v13, Lcom/google/android/gms/internal/ads/zzkt;->zzaum:I

    if-ne v12, v13, :cond_97

    add-int/lit8 v10, v6, 0x8

    :goto_62
    sub-int v12, v10, v6

    if-ge v12, v11, :cond_96

    .line 637
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 638
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v12

    .line 639
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v13

    .line 640
    sget v14, Lcom/google/android/gms/internal/ads/zzkt;->zzaun:I

    if-ne v13, v14, :cond_94

    const/4 v10, 0x6

    .line 641
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 642
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v10

    if-ne v10, v5, :cond_81

    const/4 v10, 0x1

    goto :goto_82

    :cond_81
    const/4 v10, 0x0

    .line 643
    :goto_82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v12

    const/16 v13, 0x10

    new-array v14, v13, [B

    .line 645
    invoke-virtual {p0, v14, v3, v13}, Lcom/google/android/gms/internal/ads/zzpi;->zze([BII)V

    .line 646
    new-instance v13, Lcom/google/android/gms/internal/ads/zzlo;

    invoke-direct {v13, v10, v12, v14}, Lcom/google/android/gms/internal/ads/zzlo;-><init>(ZI[B)V

    move-object v10, v13

    goto :goto_97

    :cond_94
    add-int/2addr v10, v12

    goto :goto_62

    :cond_96
    move-object v10, v7

    :cond_97
    :goto_97
    add-int/2addr v6, v11

    goto :goto_2c

    :cond_99
    if-eqz v8, :cond_b1

    if-eqz v9, :cond_9f

    const/4 v6, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v6, 0x0

    :goto_a0
    const-string v7, "frma atom is mandatory"

    .line 654
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v10, :cond_a8

    const/4 v3, 0x1

    :cond_a8
    const-string v5, "schi->tenc atom is mandatory"

    .line 655
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(ZLjava/lang/Object;)V

    .line 656
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    :cond_b1
    if-eqz v7, :cond_c6

    move-object/from16 v5, p3

    .line 660
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzkz;->zzawv:[Lcom/google/android/gms/internal/ads/zzlo;

    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlo;

    aput-object v1, v0, p4

    .line 661
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_c6
    move-object/from16 v5, p3

    add-int/2addr v1, v2

    goto/16 :goto_5

    :cond_cb
    return v3
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzks;Lcom/google/android/gms/internal/ads/zzkv;JLcom/google/android/gms/internal/ads/zzjl;Z)Lcom/google/android/gms/internal/ads/zzlp;
    .registers 55
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzht;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p4

    .line 1
    sget v1, Lcom/google/android/gms/internal/ads/zzkt;->zzatt:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzks;->zzar(I)Lcom/google/android/gms/internal/ads/zzks;

    move-result-object v1

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzauh:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v14, 0x10

    .line 3
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v2

    .line 5
    sget v3, Lcom/google/android/gms/internal/ads/zzku;->zzawf:I

    const/4 v4, 0x4

    const/4 v11, -0x1

    if-ne v2, v3, :cond_23

    const/4 v10, 0x1

    goto :goto_43

    .line 7
    :cond_23
    sget v3, Lcom/google/android/gms/internal/ads/zzku;->zzawe:I

    if-ne v2, v3, :cond_29

    const/4 v10, 0x2

    goto :goto_43

    .line 9
    :cond_29
    sget v3, Lcom/google/android/gms/internal/ads/zzku;->zzawg:I

    if-eq v2, v3, :cond_42

    sget v3, Lcom/google/android/gms/internal/ads/zzku;->zzawh:I

    if-eq v2, v3, :cond_42

    sget v3, Lcom/google/android/gms/internal/ads/zzku;->zzawi:I

    if-eq v2, v3, :cond_42

    sget v3, Lcom/google/android/gms/internal/ads/zzku;->zzawj:I

    if-ne v2, v3, :cond_3a

    goto :goto_42

    .line 11
    :cond_3a
    sget v3, Lcom/google/android/gms/internal/ads/zzku;->zzavq:I

    if-ne v2, v3, :cond_40

    const/4 v10, 0x4

    goto :goto_43

    :cond_40
    const/4 v10, -0x1

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v10, 0x3

    :goto_43
    const/4 v8, 0x0

    if-ne v10, v11, :cond_47

    return-object v8

    .line 17
    :cond_47
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzaud:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v7, 0x8

    .line 18
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v3

    if-nez v3, :cond_61

    const/16 v5, 0x8

    goto :goto_63

    :cond_61
    const/16 v5, 0x10

    .line 21
    :goto_63
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v5

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v6

    if-nez v3, :cond_75

    const/4 v12, 0x4

    goto :goto_77

    :cond_75
    const/16 v12, 0x8

    :goto_77
    const/4 v9, 0x0

    :goto_78
    if-ge v9, v12, :cond_88

    .line 28
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    add-int v20, v6, v9

    aget-byte v8, v8, v20

    if-eq v8, v11, :cond_84

    const/4 v6, 0x0

    goto :goto_89

    :cond_84
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_78

    :cond_88
    const/4 v6, 0x1

    :goto_89
    const-wide/16 v20, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_97

    .line 33
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    :goto_95
    move-wide v11, v8

    goto :goto_a9

    :cond_97
    if-nez v3, :cond_9e

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v22

    goto :goto_a2

    :cond_9e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzja()J

    move-result-wide v22

    :goto_a2
    cmp-long v3, v22, v20

    if-nez v3, :cond_a7

    goto :goto_95

    :cond_a7
    move-wide/from16 v11, v22

    .line 38
    :goto_a9
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v6

    .line 41
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v4

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v2

    const/high16 v14, 0x10000

    const/high16 v13, -0x10000

    if-nez v3, :cond_ce

    if-ne v6, v14, :cond_ce

    if-ne v4, v13, :cond_ce

    if-nez v2, :cond_ce

    const/16 v2, 0x5a

    goto :goto_e5

    :cond_ce
    if-nez v3, :cond_d9

    if-ne v6, v13, :cond_d9

    if-ne v4, v14, :cond_d9

    if-nez v2, :cond_d9

    const/16 v2, 0x10e

    goto :goto_e5

    :cond_d9
    if-ne v3, v13, :cond_e4

    if-nez v6, :cond_e4

    if-nez v4, :cond_e4

    if-ne v2, v13, :cond_e4

    const/16 v2, 0xb4

    goto :goto_e5

    :cond_e4
    const/4 v2, 0x0

    .line 51
    :goto_e5
    new-instance v14, Lcom/google/android/gms/internal/ads/zzla;

    invoke-direct {v14, v5, v11, v12, v2}, Lcom/google/android/gms/internal/ads/zzla;-><init>(IJI)V

    cmp-long v2, p2, v8

    if-nez v2, :cond_f7

    .line 54
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzla;->zza(Lcom/google/android/gms/internal/ads/zzla;)J

    move-result-wide v2

    move-wide/from16 v26, v2

    move-object/from16 v2, p1

    goto :goto_fb

    :cond_f7
    move-object/from16 v2, p1

    move-wide/from16 v26, p2

    .line 55
    :goto_fb
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 56
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v3

    if-nez v3, :cond_10d

    const/16 v3, 0x8

    goto :goto_10f

    :cond_10d
    const/16 v3, 0x10

    .line 59
    :goto_10f
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v32

    cmp-long v2, v26, v8

    if-nez v2, :cond_11d

    move-wide/from16 v26, v8

    goto :goto_128

    :cond_11d
    const-wide/32 v28, 0xf4240

    move-wide/from16 v30, v32

    .line 64
    invoke-static/range {v26 .. v31}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v2

    move-wide/from16 v26, v2

    .line 65
    :goto_128
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzatu:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zzar(I)Lcom/google/android/gms/internal/ads/zzks;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzatv:I

    .line 66
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzks;->zzar(I)Lcom/google/android/gms/internal/ads/zzks;

    move-result-object v2

    .line 67
    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaug:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 68
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    .line 70
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v3

    if-nez v3, :cond_14c

    const/16 v4, 0x8

    goto :goto_14e

    :cond_14c
    const/16 v4, 0x10

    .line 71
    :goto_14e
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v4

    if-nez v3, :cond_159

    const/4 v3, 0x4

    goto :goto_15b

    :cond_159
    const/16 v3, 0x8

    .line 73
    :goto_15b
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedShort()I

    move-result v1

    shr-int/lit8 v3, v1, 0xa

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    shr-int/lit8 v6, v1, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    .line 78
    sget v1, Lcom/google/android/gms/internal/ads/zzkt;->zzaui:I

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v1

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzla;->zzb(Lcom/google/android/gms/internal/ads/zzla;)I

    move-result v22

    .line 79
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzla;->zzc(Lcom/google/android/gms/internal/ads/zzla;)I

    move-result v28

    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    const/16 v1, 0xc

    .line 81
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 82
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v9

    .line 83
    new-instance v8, Lcom/google/android/gms/internal/ads/zzkz;

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzkz;-><init>(I)V

    const/4 v6, 0x0

    :goto_1b4
    if-ge v6, v9, :cond_7a9

    .line 85
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v5

    .line 86
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v4

    if-lez v4, :cond_1c2

    const/4 v1, 0x1

    goto :goto_1c3

    :cond_1c2
    const/4 v1, 0x0

    :goto_1c3
    const-string v3, "childAtomSize should be positive"

    .line 87
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(ZLjava/lang/Object;)V

    .line 88
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v1

    .line 89
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzasq:I

    if-eq v1, v2, :cond_5a2

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzasr:I

    if-eq v1, v2, :cond_5a2

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzauo:I

    if-eq v1, v2, :cond_5a2

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzava:I

    if-eq v1, v2, :cond_5a2

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzass:I

    if-eq v1, v2, :cond_5a2

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzast:I

    if-eq v1, v2, :cond_5a2

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzasu:I

    if-eq v1, v2, :cond_5a2

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavz:I

    if-eq v1, v2, :cond_5a2

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzawa:I

    if-ne v1, v2, :cond_1f2

    goto/16 :goto_5a2

    .line 180
    :cond_1f2
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzasx:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzaup:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzatc:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzate:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzatg:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzatj:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzath:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzati:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavn:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavo:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzata:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzatb:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzasy:I

    if-eq v1, v2, :cond_30c

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzawd:I

    if-ne v1, v2, :cond_22c

    goto/16 :goto_30c

    .line 278
    :cond_22c
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzauy:I

    if-eq v1, v2, :cond_26a

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavj:I

    if-eq v1, v2, :cond_26a

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavk:I

    if-eq v1, v2, :cond_26a

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavl:I

    if-eq v1, v2, :cond_26a

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavm:I

    if-ne v1, v2, :cond_241

    goto :goto_26a

    .line 302
    :cond_241
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzawc:I

    if-ne v1, v2, :cond_254

    .line 303
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-camera-motion"

    const/4 v3, -0x1

    const/4 v7, 0x0

    invoke-static {v1, v2, v7, v3, v15}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzjl;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzkz;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    goto :goto_255

    :cond_254
    const/4 v7, 0x0

    :goto_255
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v37, v6

    move-object v0, v8

    move/from16 v31, v9

    move/from16 v19, v10

    move-object/from16 v36, v11

    move-object/from16 v16, v12

    move-object/from16 v48, v13

    move-object/from16 v18, v14

    goto/16 :goto_365

    :cond_26a
    :goto_26a
    const/4 v3, -0x1

    const/4 v7, 0x0

    add-int/lit8 v2, v5, 0x8

    const/16 v19, 0x8

    add-int/lit8 v2, v2, 0x8

    .line 280
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    const-wide v29, 0x7fffffffffffffffL

    .line 283
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzauy:I

    const-string v24, "application/ttml+xml"

    if-ne v1, v2, :cond_285

    move-object/from16 v17, v7

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto :goto_2bf

    .line 285
    :cond_285
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavj:I

    if-ne v1, v2, :cond_29f

    add-int/lit8 v1, v4, -0x8

    add-int/lit8 v1, v1, -0x8

    .line 288
    new-array v2, v1, [B

    const/4 v7, 0x0

    .line 289
    invoke-virtual {v12, v2, v7, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zze([BII)V

    .line 290
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "application/x-quicktime-tx3g"

    move-object/from16 v17, v1

    move-object/from16 v24, v2

    const/4 v2, 0x1

    goto :goto_2bf

    :cond_29f
    const/4 v7, 0x0

    .line 291
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavk:I

    if-ne v1, v2, :cond_2ac

    const-string v1, "application/x-mp4-vtt"

    move-object/from16 v24, v1

    :goto_2a8
    const/4 v2, 0x1

    :goto_2a9
    const/16 v17, 0x0

    goto :goto_2bf

    .line 293
    :cond_2ac
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavl:I

    if-ne v1, v2, :cond_2b3

    move-wide/from16 v29, v20

    goto :goto_2a8

    .line 296
    :cond_2b3
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzavm:I

    if-ne v1, v2, :cond_306

    const/4 v2, 0x1

    .line 298
    iput v2, v8, Lcom/google/android/gms/internal/ads/zzkz;->zzaww:I

    const-string v1, "application/x-mp4-cea-608"

    move-object/from16 v24, v1

    goto :goto_2a9

    .line 300
    :goto_2bf
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x0

    const/16 v34, -0x1

    const/16 v35, 0x0

    const/16 v36, -0x1

    const/16 v37, 0x1

    move-object/from16 v2, v24

    const/16 v24, -0x1

    move-object/from16 v3, v18

    move-object/from16 v18, v14

    move v14, v4

    move/from16 v4, v34

    move/from16 v38, v5

    move/from16 v5, v35

    move/from16 v39, v6

    move-object v6, v11

    const/16 v19, 0x0

    const/16 v31, 0x0

    move/from16 v7, v36

    move-object/from16 v40, v8

    move-object/from16 v8, p4

    move/from16 v31, v9

    move/from16 v19, v10

    move-wide/from16 v9, v29

    move-object v0, v11

    move-object/from16 v11, v17

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzjl;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v1

    move-object/from16 v11, v40

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkz;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    move-object/from16 v36, v0

    move-object v0, v11

    move-object/from16 v16, v12

    move-object/from16 v48, v13

    move/from16 v23, v14

    move/from16 v24, v38

    goto :goto_363

    .line 299
    :cond_306
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_30c
    :goto_30c
    move/from16 v38, v5

    move/from16 v39, v6

    move/from16 v31, v9

    move/from16 v19, v10

    move-object v0, v11

    move-object/from16 v18, v14

    move v14, v4

    move-object v11, v8

    move/from16 v10, v38

    add-int/lit8 v5, v10, 0x8

    const/16 v9, 0x8

    add-int/2addr v5, v9

    .line 182
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    const/4 v2, 0x6

    if-eqz p5, :cond_32e

    .line 185
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedShort()I

    move-result v4

    .line 186
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    goto :goto_332

    .line 187
    :cond_32e
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    const/4 v4, 0x0

    :goto_332
    if-eqz v4, :cond_36f

    const/4 v8, 0x1

    if-ne v4, v8, :cond_339

    const/4 v7, 0x2

    goto :goto_371

    :cond_339
    const/4 v7, 0x2

    if-ne v4, v7, :cond_358

    const/16 v2, 0x10

    .line 195
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 197
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 198
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 199
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v4

    const/16 v5, 0x14

    .line 200
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    goto :goto_384

    :cond_358
    move-object/from16 v36, v0

    move/from16 v24, v10

    move-object v0, v11

    move-object/from16 v16, v12

    move-object/from16 v48, v13

    move/from16 v23, v14

    :goto_363
    move/from16 v37, v39

    :goto_365
    const/16 v17, -0x1

    const/16 v25, 0x3

    const/16 v29, 0x0

    :goto_36b
    const/16 v30, 0x10

    goto/16 :goto_78c

    :cond_36f
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 189
    :goto_371
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedShort()I

    move-result v5

    .line 190
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 191
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->zziy()I

    move-result v2

    if-ne v4, v8, :cond_383

    const/16 v4, 0x10

    .line 193
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    :cond_383
    move v4, v5

    .line 202
    :goto_384
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v5

    .line 203
    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzaup:I

    if-ne v1, v6, :cond_396

    move/from16 v6, v39

    .line 204
    invoke-static {v12, v10, v14, v11, v6}, Lcom/google/android/gms/internal/ads/zzku;->zza(Lcom/google/android/gms/internal/ads/zzpi;IILcom/google/android/gms/internal/ads/zzkz;I)I

    move-result v1

    .line 205
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    goto :goto_398

    :cond_396
    move/from16 v6, v39

    .line 207
    :goto_398
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzatc:I

    const-string v8, "audio/raw"

    if-ne v1, v7, :cond_3a1

    const-string v1, "audio/ac3"

    goto :goto_3ea

    .line 209
    :cond_3a1
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzate:I

    if-ne v1, v7, :cond_3a8

    const-string v1, "audio/eac3"

    goto :goto_3ea

    .line 211
    :cond_3a8
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzatg:I

    if-ne v1, v7, :cond_3af

    const-string v1, "audio/vnd.dts"

    goto :goto_3ea

    .line 213
    :cond_3af
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzath:I

    if-eq v1, v7, :cond_3e8

    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzati:I

    if-ne v1, v7, :cond_3b8

    goto :goto_3e8

    .line 215
    :cond_3b8
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzatj:I

    if-ne v1, v7, :cond_3bf

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_3ea

    .line 217
    :cond_3bf
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzavn:I

    if-ne v1, v7, :cond_3c6

    const-string v1, "audio/3gpp"

    goto :goto_3ea

    .line 219
    :cond_3c6
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzavo:I

    if-ne v1, v7, :cond_3cd

    const-string v1, "audio/amr-wb"

    goto :goto_3ea

    .line 221
    :cond_3cd
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzata:I

    if-eq v1, v7, :cond_3e6

    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzatb:I

    if-ne v1, v7, :cond_3d6

    goto :goto_3e6

    .line 223
    :cond_3d6
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzasy:I

    if-ne v1, v7, :cond_3dd

    const-string v1, "audio/mpeg"

    goto :goto_3ea

    .line 225
    :cond_3dd
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzawd:I

    if-ne v1, v7, :cond_3e4

    const-string v1, "audio/alac"

    goto :goto_3ea

    :cond_3e4
    const/4 v1, 0x0

    goto :goto_3ea

    :cond_3e6
    :goto_3e6
    move-object v1, v8

    goto :goto_3ea

    :cond_3e8
    :goto_3e8
    const-string v1, "audio/vnd.dts.hd"

    :goto_3ea
    move-object v7, v1

    move/from16 v29, v2

    move/from16 v17, v4

    const/16 v30, 0x0

    :goto_3f1
    sub-int v1, v5, v10

    if-ge v1, v14, :cond_540

    .line 229
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 230
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v4

    if-lez v4, :cond_400

    const/4 v1, 0x1

    goto :goto_401

    :cond_400
    const/4 v1, 0x0

    .line 231
    :goto_401
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(ZLjava/lang/Object;)V

    .line 232
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v1

    .line 233
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzaty:I

    if-eq v1, v2, :cond_4b9

    if-eqz p5, :cond_414

    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzasz:I

    if-ne v1, v2, :cond_414

    goto/16 :goto_4b9

    .line 258
    :cond_414
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzatd:I

    if-ne v1, v2, :cond_438

    add-int/lit8 v1, v5, 0x8

    .line 259
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 260
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0, v15}, Lcom/google/android/gms/internal/ads/zzie;->zza(Lcom/google/android/gms/internal/ads/zzpi;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjl;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkz;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    :goto_427
    move-object/from16 v41, v3

    move v2, v4

    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v47, v10

    move-object v15, v11

    const/4 v11, 0x0

    const/16 v16, 0x2

    goto/16 :goto_4b2

    .line 261
    :cond_438
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzatf:I

    if-ne v1, v2, :cond_44c

    add-int/lit8 v1, v5, 0x8

    .line 262
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 263
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0, v15}, Lcom/google/android/gms/internal/ads/zzie;->zzb(Lcom/google/android/gms/internal/ads/zzpi;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjl;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkz;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    goto :goto_427

    .line 264
    :cond_44c
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzatk:I

    if-ne v1, v2, :cond_488

    .line 265
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v34, 0x0

    const/16 v35, -0x1

    const/16 v36, -0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object v2, v7

    move-object/from16 v41, v3

    move-object/from16 v3, v34

    move/from16 v42, v4

    move/from16 v4, v35

    move/from16 v43, v5

    move/from16 v5, v36

    move/from16 v44, v6

    move/from16 v6, v17

    move-object/from16 v45, v7

    const/16 v16, 0x2

    move/from16 v7, v29

    move-object/from16 v46, v8

    move-object/from16 v8, v37

    move-object/from16 v9, p4

    move/from16 v47, v10

    move/from16 v10, v38

    move-object v15, v11

    move-object v11, v0

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjl;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzkz;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    goto :goto_4ad

    :cond_488
    move-object/from16 v41, v3

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v47, v10

    move-object v15, v11

    const/16 v16, 0x2

    .line 266
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzawd:I

    if-ne v1, v2, :cond_4ad

    move/from16 v2, v42

    .line 267
    new-array v1, v2, [B

    move/from16 v5, v43

    .line 268
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    const/4 v11, 0x0

    .line 269
    invoke-virtual {v12, v1, v11, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zze([BII)V

    move-object/from16 v30, v1

    goto :goto_4b2

    :cond_4ad
    :goto_4ad
    move/from16 v2, v42

    move/from16 v5, v43

    const/4 v11, 0x0

    :goto_4b2
    move-object/from16 v4, v41

    move-object/from16 v7, v45

    const/4 v10, -0x1

    goto/16 :goto_531

    :cond_4b9
    :goto_4b9
    move-object/from16 v41, v3

    move v2, v4

    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v47, v10

    move-object v15, v11

    const/4 v11, 0x0

    const/16 v16, 0x2

    .line 234
    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzaty:I

    if-ne v1, v3, :cond_4d1

    move v1, v5

    move-object/from16 v4, v41

    :goto_4cf
    const/4 v10, -0x1

    goto :goto_4fb

    .line 236
    :cond_4d1
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v1

    :goto_4d5
    sub-int v3, v1, v5

    if-ge v3, v2, :cond_4f7

    .line 238
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 239
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    move-object/from16 v4, v41

    if-lez v3, :cond_4e6

    const/4 v9, 0x1

    goto :goto_4e7

    :cond_4e6
    const/4 v9, 0x0

    .line 240
    :goto_4e7
    invoke-static {v9, v4}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(ZLjava/lang/Object;)V

    .line 241
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v6

    .line 242
    sget v7, Lcom/google/android/gms/internal/ads/zzkt;->zzaty:I

    if-ne v6, v7, :cond_4f3

    goto :goto_4cf

    :cond_4f3
    add-int/2addr v1, v3

    move-object/from16 v41, v4

    goto :goto_4d5

    :cond_4f7
    move-object/from16 v4, v41

    const/4 v1, -0x1

    goto :goto_4cf

    :goto_4fb
    if-eq v1, v10, :cond_52f

    .line 250
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzku;->zzb(Lcom/google/android/gms/internal/ads/zzpi;I)Landroid/util/Pair;

    move-result-object v1

    .line 251
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 252
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v30, v1

    check-cast v30, [B

    const-string v1, "audio/mp4a-latm"

    .line 253
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52d

    .line 255
    invoke-static/range {v30 .. v30}, Lcom/google/android/gms/internal/ads/zzpa;->zze([B)Landroid/util/Pair;

    move-result-object v1

    .line 256
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 257
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v17, v1

    move-object v7, v3

    move/from16 v29, v6

    goto :goto_531

    :cond_52d
    move-object v7, v3

    goto :goto_531

    :cond_52f
    move-object/from16 v7, v45

    :goto_531
    add-int/2addr v5, v2

    move-object v3, v4

    move-object v11, v15

    move/from16 v6, v44

    move-object/from16 v8, v46

    move/from16 v10, v47

    const/16 v9, 0x8

    move-object/from16 v15, p4

    goto/16 :goto_3f1

    :cond_540
    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v47, v10

    move-object v15, v11

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v16, 0x2

    .line 272
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzkz;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    if-nez v1, :cond_58a

    move-object/from16 v7, v45

    if-eqz v7, :cond_58a

    move-object/from16 v1, v46

    .line 273
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55f

    const/4 v8, 0x2

    goto :goto_560

    :cond_55f
    const/4 v8, -0x1

    .line 274
    :goto_560
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    if-nez v30, :cond_56b

    const/4 v9, 0x0

    goto :goto_570

    .line 275
    :cond_56b
    invoke-static/range {v30 .. v30}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v9, v2

    :goto_570
    const/16 v24, 0x0

    move-object v2, v7

    move/from16 v6, v17

    move/from16 v7, v29

    const/16 v17, -0x1

    move-object/from16 v10, p4

    const/16 v29, 0x0

    move/from16 v11, v24

    move-object/from16 p1, v13

    move-object v13, v12

    move-object v12, v0

    .line 276
    invoke-static/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjl;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzkz;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    goto :goto_591

    :cond_58a
    move-object/from16 p1, v13

    const/16 v17, -0x1

    const/16 v29, 0x0

    move-object v13, v12

    :goto_591
    move-object/from16 v48, p1

    move-object/from16 v36, v0

    move-object/from16 v16, v13

    move/from16 v23, v14

    move-object v0, v15

    move/from16 v37, v44

    move/from16 v24, v47

    :goto_59e
    const/16 v25, 0x3

    goto/16 :goto_36b

    :cond_5a2
    :goto_5a2
    move/from16 v47, v5

    move/from16 v44, v6

    move-object v15, v8

    move/from16 v31, v9

    move/from16 v19, v10

    move-object v0, v11

    move-object/from16 p1, v13

    move-object/from16 v18, v14

    const/16 v17, -0x1

    const/16 v29, 0x0

    move v14, v4

    move-object v13, v12

    move-object v4, v3

    move/from16 v12, v47

    add-int/lit8 v5, v12, 0x8

    const/16 v11, 0x8

    add-int/2addr v5, v11

    .line 91
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    const/16 v10, 0x10

    .line 92
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 93
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedShort()I

    move-result v6

    .line 94
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedShort()I

    move-result v7

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x32

    .line 97
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 98
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v3

    .line 99
    sget v5, Lcom/google/android/gms/internal/ads/zzkt;->zzauo:I

    move/from16 v9, v44

    if-ne v1, v5, :cond_5e6

    .line 100
    invoke-static {v13, v12, v14, v15, v9}, Lcom/google/android/gms/internal/ads/zzku;->zza(Lcom/google/android/gms/internal/ads/zzpi;IILcom/google/android/gms/internal/ads/zzkz;I)I

    move-result v1

    .line 101
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    :cond_5e6
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    const/16 v34, -0x1

    :goto_5f0
    sub-int v8, v3, v12

    if-ge v8, v14, :cond_73d

    .line 107
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 108
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v8

    .line 109
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v10

    if-nez v10, :cond_609

    .line 110
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v36

    sub-int v11, v36, v12

    if-eq v11, v14, :cond_73d

    :cond_609
    if-lez v10, :cond_60d

    const/4 v11, 0x1

    goto :goto_60e

    :cond_60d
    const/4 v11, 0x0

    .line 111
    :goto_60e
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(ZLjava/lang/Object;)V

    .line 112
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v11

    move-object/from16 v36, v0

    .line 113
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzatw:I

    if-ne v11, v0, :cond_63b

    if-nez v2, :cond_61f

    const/4 v0, 0x1

    goto :goto_620

    :cond_61f
    const/4 v0, 0x0

    .line 114
    :goto_620
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    add-int/lit8 v8, v8, 0x8

    .line 116
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 117
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzpq;->zzg(Lcom/google/android/gms/internal/ads/zzpi;)Lcom/google/android/gms/internal/ads/zzpq;

    move-result-object v0

    .line 118
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzagy:Ljava/util/List;

    .line 119
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzasi:I

    iput v8, v15, Lcom/google/android/gms/internal/ads/zzkz;->zzasi:I

    if-nez v5, :cond_638

    .line 121
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzbjp:F

    move/from16 v24, v0

    :cond_638
    const-string v0, "video/avc"

    goto :goto_658

    .line 122
    :cond_63b
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzatx:I

    if-ne v11, v0, :cond_664

    if-nez v2, :cond_643

    const/4 v0, 0x1

    goto :goto_644

    :cond_643
    const/4 v0, 0x0

    .line 123
    :goto_644
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    add-int/lit8 v8, v8, 0x8

    .line 125
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 126
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzpw;->zzi(Lcom/google/android/gms/internal/ads/zzpi;)Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v0

    .line 127
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpw;->zzagy:Ljava/util/List;

    .line 128
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzpw;->zzasi:I

    iput v0, v15, Lcom/google/android/gms/internal/ads/zzkz;->zzasi:I

    const-string v0, "video/hevc"

    :goto_658
    move/from16 v37, v1

    move-object/from16 v23, v2

    move-object/from16 v41, v4

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x3

    move-object v2, v0

    goto/16 :goto_730

    .line 129
    :cond_664
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzawb:I

    if-ne v11, v0, :cond_67b

    if-nez v2, :cond_66c

    const/4 v0, 0x1

    goto :goto_66d

    :cond_66c
    const/4 v0, 0x0

    .line 130
    :goto_66d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 131
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzavz:I

    if-ne v1, v0, :cond_677

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_679

    :cond_677
    const-string v0, "video/x-vnd.on2.vp9"

    :goto_679
    move-object v2, v0

    goto :goto_689

    .line 132
    :cond_67b
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzasv:I

    if-ne v11, v0, :cond_68f

    if-nez v2, :cond_683

    const/4 v0, 0x1

    goto :goto_684

    :cond_683
    const/4 v0, 0x0

    .line 133
    :goto_684
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    const-string v2, "video/3gpp"

    :goto_689
    move/from16 v37, v1

    move-object/from16 v41, v4

    :cond_68d
    :goto_68d
    const/4 v4, 0x2

    goto :goto_6c7

    .line 135
    :cond_68f
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzaty:I

    if-ne v11, v0, :cond_6ac

    if-nez v2, :cond_697

    const/4 v0, 0x1

    goto :goto_698

    :cond_697
    const/4 v0, 0x0

    .line 136
    :goto_698
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 138
    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/zzku;->zzb(Lcom/google/android/gms/internal/ads/zzpi;I)Landroid/util/Pair;

    move-result-object v0

    .line 139
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 140
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    goto :goto_689

    .line 141
    :cond_6ac
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzaux:I

    if-ne v11, v0, :cond_6cb

    add-int/lit8 v8, v8, 0x8

    .line 143
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 144
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v0

    .line 145
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v5

    int-to-float v0, v0

    int-to-float v5, v5

    div-float v24, v0, v5

    move/from16 v37, v1

    move-object/from16 v41, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    :goto_6c7
    const/4 v8, 0x1

    const/4 v11, 0x3

    goto/16 :goto_730

    .line 149
    :cond_6cb
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzavx:I

    if-ne v11, v0, :cond_6fe

    add-int/lit8 v0, v8, 0x8

    :goto_6d1
    sub-int v11, v0, v8

    if-ge v11, v10, :cond_6f6

    .line 153
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 154
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v11

    move/from16 v37, v1

    .line 155
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v1

    move-object/from16 v41, v4

    .line 156
    sget v4, Lcom/google/android/gms/internal/ads/zzkt;->zzavy:I

    if-ne v1, v4, :cond_6f0

    .line 157
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzpi;->data:[B

    add-int/2addr v11, v0

    invoke-static {v1, v0, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    goto :goto_6fb

    :cond_6f0
    add-int/2addr v0, v11

    move/from16 v1, v37

    move-object/from16 v4, v41

    goto :goto_6d1

    :cond_6f6
    move/from16 v37, v1

    move-object/from16 v41, v4

    const/4 v8, 0x0

    :goto_6fb
    move-object/from16 v30, v8

    goto :goto_68d

    :cond_6fe
    move/from16 v37, v1

    move-object/from16 v41, v4

    .line 162
    sget v0, Lcom/google/android/gms/internal/ads/zzkt;->zzavw:I

    if-ne v11, v0, :cond_68d

    .line 163
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v0

    const/4 v11, 0x3

    .line 164
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    if-nez v0, :cond_72e

    .line 166
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_729

    const/4 v8, 0x1

    if-eq v0, v8, :cond_725

    const/4 v4, 0x2

    if-eq v0, v4, :cond_722

    if-eq v0, v11, :cond_71f

    goto :goto_730

    :cond_71f
    const/16 v34, 0x3

    goto :goto_730

    :cond_722
    const/16 v34, 0x2

    goto :goto_730

    :cond_725
    const/4 v4, 0x2

    const/16 v34, 0x1

    goto :goto_730

    :cond_729
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/16 v34, 0x0

    goto :goto_730

    :cond_72e
    const/4 v4, 0x2

    const/4 v8, 0x1

    :goto_730
    add-int/2addr v3, v10

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v4, v41

    const/16 v10, 0x10

    const/16 v11, 0x8

    goto/16 :goto_5f0

    :cond_73d
    move-object/from16 v36, v0

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x3

    if-eqz v2, :cond_77f

    .line 178
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v5, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v16, 0x0

    const/16 v25, 0x2

    move v4, v0

    const/4 v0, 0x1

    move v8, v10

    move/from16 v37, v9

    move-object/from16 v9, v23

    const/16 v23, 0x10

    move/from16 v10, v28

    const/16 v0, 0x8

    const/16 v35, 0x3

    move/from16 v11, v24

    move/from16 v24, v12

    move-object/from16 v12, v30

    move-object/from16 v48, p1

    move-object v0, v13

    const/16 v25, 0x3

    move/from16 v13, v34

    move/from16 v23, v14

    const/16 v30, 0x10

    move-object/from16 v14, v16

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzpt;Lcom/google/android/gms/internal/ads/zzjl;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkz;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    goto :goto_78c

    :cond_77f
    move-object/from16 v48, p1

    move/from16 v37, v9

    move/from16 v24, v12

    move-object/from16 v16, v13

    move/from16 v23, v14

    move-object v0, v15

    goto/16 :goto_59e

    :goto_78c
    add-int v5, v24, v23

    move-object/from16 v1, v16

    .line 304
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    add-int/lit8 v6, v37, 0x1

    move-object/from16 v15, p4

    move-object v8, v0

    move-object v12, v1

    move-object/from16 v14, v18

    move/from16 v10, v19

    move/from16 v9, v31

    move-object/from16 v11, v36

    move-object/from16 v13, v48

    const/16 v7, 0x8

    move-object/from16 v0, p0

    goto/16 :goto_1b4

    :cond_7a9
    move-object v0, v8

    move/from16 v19, v10

    move-object/from16 v48, v13

    move-object/from16 v18, v14

    const/16 v29, 0x0

    .line 308
    sget v1, Lcom/google/android/gms/internal/ads/zzkt;->zzaue:I

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzks;->zzar(I)Lcom/google/android/gms/internal/ads/zzks;

    move-result-object v1

    if-eqz v1, :cond_817

    .line 309
    sget v2, Lcom/google/android/gms/internal/ads/zzkt;->zzauf:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v1

    if-nez v1, :cond_7c5

    goto :goto_817

    .line 311
    :cond_7c5
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 v2, 0x8

    .line 312
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 313
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v2

    .line 314
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkt;->zzas(I)I

    move-result v2

    .line 315
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v3

    .line 316
    new-array v4, v3, [J

    .line 317
    new-array v5, v3, [J

    const/4 v9, 0x0

    :goto_7dd
    if-ge v9, v3, :cond_810

    const/4 v6, 0x1

    if-ne v2, v6, :cond_7e7

    .line 320
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzja()J

    move-result-wide v7

    goto :goto_7eb

    :cond_7e7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()J

    move-result-wide v7

    :goto_7eb
    aput-wide v7, v4, v9

    if-ne v2, v6, :cond_7f4

    .line 321
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readLong()J

    move-result-wide v7

    goto :goto_7f9

    :cond_7f4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v7

    int-to-long v7, v7

    :goto_7f9
    aput-wide v7, v5, v9

    .line 322
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readShort()S

    move-result v7

    if-ne v7, v6, :cond_808

    const/4 v7, 0x2

    .line 325
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7dd

    .line 324
    :cond_808
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_810
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_81c

    :cond_817
    :goto_817
    const/4 v1, 0x0

    .line 310
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 329
    :goto_81c
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkz;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    if-nez v3, :cond_821

    return-object v1

    .line 330
    :cond_821
    new-instance v1, Lcom/google/android/gms/internal/ads/zzlp;

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzla;->zzb(Lcom/google/android/gms/internal/ads/zzla;)I

    move-result v16

    move-object/from16 v3, v48

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkz;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzkz;->zzaww:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzkz;->zzawv:[Lcom/google/android/gms/internal/ads/zzlo;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzkz;->zzasi:I

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v8

    check-cast v28, [J

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v29, v2

    check-cast v29, [J

    move-object v15, v1

    move/from16 v17, v19

    move-wide/from16 v18, v3

    move-wide/from16 v20, v32

    move-wide/from16 v22, v26

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v27, v0

    invoke-direct/range {v15 .. v29}, Lcom/google/android/gms/internal/ads/zzlp;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzhq;I[Lcom/google/android/gms/internal/ads/zzlo;I[J[J)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzks;Lcom/google/android/gms/internal/ads/zzkb;)Lcom/google/android/gms/internal/ads/zzlq;
    .registers 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzht;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 332
    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzavf:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 334
    new-instance v4, Lcom/google/android/gms/internal/ads/zzky;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzky;-><init>(Lcom/google/android/gms/internal/ads/zzkv;)V

    goto :goto_21

    .line 335
    :cond_14
    sget v3, Lcom/google/android/gms/internal/ads/zzkt;->zzavg:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v3

    if-eqz v3, :cond_4de

    .line 338
    new-instance v4, Lcom/google/android/gms/internal/ads/zzlb;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzkv;)V

    .line 339
    :goto_21
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzkw;->zzgw()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_38

    .line 341
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlq;

    new-array v7, v5, [J

    new-array v8, v5, [I

    const/4 v9, 0x0

    new-array v10, v5, [J

    new-array v11, v5, [I

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzlq;-><init>([J[II[J[I)V

    return-object v0

    .line 343
    :cond_38
    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzavh:I

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_49

    .line 346
    sget v6, Lcom/google/android/gms/internal/ads/zzkt;->zzavi:I

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_4a

    :cond_49
    const/4 v8, 0x0

    .line 347
    :goto_4a
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 348
    sget v9, Lcom/google/android/gms/internal/ads/zzkt;->zzave:I

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 349
    sget v10, Lcom/google/android/gms/internal/ads/zzkt;->zzavb:I

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 350
    sget v11, Lcom/google/android/gms/internal/ads/zzkt;->zzavc:I

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_68

    .line 351
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    goto :goto_69

    :cond_68
    move-object v11, v12

    .line 352
    :goto_69
    sget v13, Lcom/google/android/gms/internal/ads/zzkt;->zzavd:I

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzks;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 353
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    goto :goto_75

    :cond_74
    move-object v1, v12

    .line 354
    :goto_75
    new-instance v13, Lcom/google/android/gms/internal/ads/zzkx;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/android/gms/internal/ads/zzkx;-><init>(Lcom/google/android/gms/internal/ads/zzpi;Lcom/google/android/gms/internal/ads/zzpi;Z)V

    const/16 v6, 0xc

    .line 355
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 356
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v8

    sub-int/2addr v8, v7

    .line 357
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v9

    .line 358
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v14

    if-eqz v1, :cond_96

    .line 363
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 364
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v15

    goto :goto_97

    :cond_96
    const/4 v15, 0x0

    :goto_97
    const/16 v16, -0x1

    if-eqz v11, :cond_ac

    .line 368
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 369
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v6

    if-lez v6, :cond_ae

    .line 371
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    move-object v12, v11

    goto :goto_ae

    :cond_ac
    move-object v12, v11

    const/4 v6, 0x0

    .line 373
    :cond_ae
    :goto_ae
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzkw;->zzgy()Z

    move-result v11

    if-eqz v11, :cond_c8

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlp;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzhq;->zzagw:Ljava/lang/String;

    const-string v5, "audio/raw"

    .line 374
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    if-nez v8, :cond_c8

    if-nez v15, :cond_c8

    if-nez v6, :cond_c8

    const/4 v5, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v5, 0x0

    :goto_c9
    const-wide/16 v18, 0x0

    if-nez v5, :cond_1fd

    .line 378
    new-array v5, v3, [J

    .line 379
    new-array v11, v3, [I

    .line 380
    new-array v7, v3, [J

    move/from16 p1, v6

    .line 381
    new-array v6, v3, [I

    move-object/from16 v23, v10

    move/from16 v2, v16

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v9

    move v9, v8

    move/from16 v8, p1

    :goto_ee
    if-ge v0, v3, :cond_189

    :goto_f0
    if-nez v22, :cond_10a

    .line 386
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzkx;->zzgz()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    move/from16 p1, v14

    move/from16 v29, v15

    .line 387
    iget-wide v14, v13, Lcom/google/android/gms/internal/ads/zzkx;->zzawn:J

    move-wide/from16 v25, v14

    .line 388
    iget v14, v13, Lcom/google/android/gms/internal/ads/zzkx;->zzawm:I

    move/from16 v22, v14

    move/from16 v15, v29

    move/from16 v14, p1

    goto :goto_f0

    :cond_10a
    move/from16 p1, v14

    move/from16 v29, v15

    if-eqz v1, :cond_121

    :goto_110
    if-nez v21, :cond_11f

    if-lez v16, :cond_11f

    .line 391
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v21

    .line 392
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v24

    add-int/lit8 v16, v16, -0x1

    goto :goto_110

    :cond_11f
    add-int/lit8 v21, v21, -0x1

    :cond_121
    move/from16 v14, v24

    .line 395
    aput-wide v25, v5, v0

    .line 396
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzkw;->zzgx()I

    move-result v15

    aput v15, v11, v0

    .line 397
    aget v15, v11, v0

    if-le v15, v10, :cond_131

    .line 398
    aget v10, v11, v0

    :cond_131
    move/from16 v24, v3

    move-object v15, v4

    int-to-long v3, v14

    add-long v3, v27, v3

    .line 399
    aput-wide v3, v7, v0

    if-nez v12, :cond_13d

    const/4 v3, 0x1

    goto :goto_13e

    :cond_13d
    const/4 v3, 0x0

    .line 400
    :goto_13e
    aput v3, v6, v0

    if-ne v0, v2, :cond_14e

    const/4 v3, 0x1

    .line 402
    aput v3, v6, v0

    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_14e

    .line 405
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v2

    sub-int/2addr v2, v3

    :cond_14e
    move/from16 v3, v29

    move-object/from16 v29, v5

    int-to-long v4, v3

    add-long v27, v27, v4

    add-int/lit8 v4, p1, -0x1

    if-nez v4, :cond_166

    if-lez v9, :cond_166

    .line 409
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v3

    .line 410
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v4

    add-int/lit8 v9, v9, -0x1

    goto :goto_16b

    :cond_166
    move/from16 v43, v4

    move v4, v3

    move/from16 v3, v43

    .line 412
    :goto_16b
    aget v5, v11, v0

    move/from16 v30, v2

    move/from16 p1, v3

    int-to-long v2, v5

    add-long v25, v25, v2

    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v24

    move-object/from16 v5, v29

    move/from16 v2, v30

    move/from16 v24, v14

    move/from16 v14, p1

    move-object/from16 v43, v15

    move v15, v4

    move-object/from16 v4, v43

    goto/16 :goto_ee

    :cond_189
    move/from16 v24, v3

    move-object/from16 v29, v5

    move/from16 p1, v14

    if-nez v21, :cond_193

    const/4 v0, 0x1

    goto :goto_194

    :cond_193
    const/4 v0, 0x0

    .line 415
    :goto_194
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(Z)V

    :goto_197
    if-lez v16, :cond_1ab

    .line 417
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->zziz()I

    move-result v0

    if-nez v0, :cond_1a1

    const/4 v0, 0x1

    goto :goto_1a2

    :cond_1a1
    const/4 v0, 0x0

    :goto_1a2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkArgument(Z)V

    .line 418
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_197

    :cond_1ab
    if-nez v8, :cond_1b9

    if-nez p1, :cond_1b9

    move/from16 v0, v22

    if-nez v0, :cond_1bb

    if-eqz v9, :cond_1b6

    goto :goto_1bb

    :cond_1b6
    move-object/from16 v1, p0

    goto :goto_1f9

    :cond_1b9
    move/from16 v0, v22

    :cond_1bb
    :goto_1bb
    move-object/from16 v1, p0

    .line 421
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzlp;->id:I

    const/16 v3, 0xd7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Inconsistent stbl box for track "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AtomParsers"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f9
    move-object/from16 v5, v29

    goto/16 :goto_295

    :cond_1fd
    move-object v1, v0

    move/from16 v24, v3

    move-object v15, v4

    .line 423
    iget v0, v13, Lcom/google/android/gms/internal/ads/zzkx;->length:I

    new-array v0, v0, [J

    .line 424
    iget v2, v13, Lcom/google/android/gms/internal/ads/zzkx;->length:I

    new-array v3, v2, [I

    .line 425
    :goto_209
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzkx;->zzgz()Z

    move-result v4

    if-eqz v4, :cond_21c

    .line 426
    iget v4, v13, Lcom/google/android/gms/internal/ads/zzkx;->index:I

    iget-wide v5, v13, Lcom/google/android/gms/internal/ads/zzkx;->zzawn:J

    aput-wide v5, v0, v4

    .line 427
    iget v4, v13, Lcom/google/android/gms/internal/ads/zzkx;->index:I

    iget v5, v13, Lcom/google/android/gms/internal/ads/zzkx;->zzawm:I

    aput v5, v3, v4

    goto :goto_209

    .line 428
    :cond_21c
    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/zzkw;->zzgx()I

    move-result v4

    int-to-long v5, v14

    const/16 v7, 0x2000

    .line 430
    div-int/2addr v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_226
    if-ge v8, v2, :cond_232

    .line 432
    aget v10, v3, v8

    .line 433
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzpo;->zzf(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_226

    .line 435
    :cond_232
    new-array v11, v9, [J

    .line 436
    new-array v12, v9, [I

    .line 438
    new-array v14, v9, [J

    .line 439
    new-array v15, v9, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_23e
    if-ge v8, v2, :cond_281

    .line 443
    aget v16, v3, v8

    .line 444
    aget-wide v21, v0, v8

    move/from16 v43, v16

    move-object/from16 v16, v0

    move/from16 v0, v43

    :goto_24a
    if-lez v0, :cond_278

    .line 446
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 447
    aput-wide v21, v11, v10

    mul-int v25, v4, v23

    .line 448
    aput v25, v12, v10

    move/from16 v25, v2

    .line 449
    aget v2, v12, v10

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v26, v3

    int-to-long v2, v9

    mul-long v2, v2, v5

    .line 450
    aput-wide v2, v14, v10

    const/4 v2, 0x1

    .line 451
    aput v2, v15, v10

    .line 452
    aget v2, v12, v10

    int-to-long v2, v2

    add-long v21, v21, v2

    add-int v9, v9, v23

    sub-int v0, v0, v23

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v25

    move-object/from16 v3, v26

    goto :goto_24a

    :cond_278
    move/from16 v25, v2

    move-object/from16 v26, v3

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    goto :goto_23e

    .line 458
    :cond_281
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlf;

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzlf;-><init>([J[II[J[ILcom/google/android/gms/internal/ads/zzlc;)V

    .line 460
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzaon:[J

    .line 461
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzaom:[I

    .line 462
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzayb:I

    .line 463
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzayc:[J

    .line 464
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlf;->zzayd:[I

    move-wide/from16 v27, v18

    .line 465
    :goto_295
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    if-eqz v0, :cond_4c1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzkb;->zzgs()Z

    move-result v0

    if-eqz v0, :cond_2a1

    goto/16 :goto_4c1

    .line 468
    :cond_2a1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    array-length v0, v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_336

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->type:I

    if-ne v0, v4, :cond_336

    array-length v0, v7

    const/4 v4, 0x2

    if-lt v0, v4, :cond_336

    .line 469
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbae:[J

    const/4 v4, 0x0

    aget-wide v8, v0, v4

    .line 470
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    aget-wide v12, v0, v4

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbaa:J

    move-wide/from16 v16, v2

    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v2

    add-long/2addr v2, v8

    .line 472
    aget-wide v12, v7, v4

    cmp-long v0, v12, v8

    if-gtz v0, :cond_336

    const/4 v0, 0x1

    aget-wide v12, v7, v0

    cmp-long v4, v8, v12

    if-gez v4, :cond_336

    array-length v4, v7

    sub-int/2addr v4, v0

    aget-wide v12, v7, v4

    cmp-long v0, v12, v2

    if-gez v0, :cond_336

    cmp-long v0, v2, v27

    if-gtz v0, :cond_336

    sub-long v29, v27, v2

    const/4 v0, 0x0

    .line 474
    aget-wide v2, v7, v0

    sub-long v31, v8, v2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzhq;->zzahh:I

    int-to-long v2, v0

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    move-wide/from16 v33, v2

    move-wide/from16 v35, v8

    invoke-static/range {v31 .. v36}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v2

    .line 475
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzahr:Lcom/google/android/gms/internal/ads/zzhq;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzhq;->zzahh:I

    int-to-long v8, v0

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    move-wide/from16 v31, v8

    move-wide/from16 v33, v12

    invoke-static/range {v29 .. v34}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v8

    cmp-long v0, v2, v18

    if-nez v0, :cond_309

    cmp-long v0, v8, v18

    if-eqz v0, :cond_336

    :cond_309
    const-wide/32 v12, 0x7fffffff

    cmp-long v0, v2, v12

    if-gtz v0, :cond_336

    cmp-long v0, v8, v12

    if-gtz v0, :cond_336

    long-to-int v0, v2

    move-object/from16 v2, p2

    .line 477
    iput v0, v2, Lcom/google/android/gms/internal/ads/zzkb;->zzahj:I

    long-to-int v0, v8

    .line 478
    iput v0, v2, Lcom/google/android/gms/internal/ads/zzkb;->zzahk:I

    .line 479
    iget-wide v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzpo;->zza([JJJ)V

    .line 480
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlq;

    move-object/from16 v25, v0

    move-object/from16 v26, v5

    move-object/from16 v27, v11

    move/from16 v28, v10

    move-object/from16 v29, v7

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzlq;-><init>([J[II[J[I)V

    return-object v0

    .line 481
    :cond_336
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_376

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    const/16 v17, 0x0

    aget-wide v2, v0, v17

    cmp-long v0, v2, v18

    if-nez v0, :cond_376

    const/4 v0, 0x0

    .line 482
    :goto_347
    array-length v2, v7

    if-ge v0, v2, :cond_364

    .line 483
    aget-wide v2, v7, v0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbae:[J

    aget-wide v8, v4, v17

    sub-long v18, v2, v8

    const-wide/32 v20, 0xf4240

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    move-wide/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v2

    aput-wide v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v17, 0x0

    goto :goto_347

    .line 485
    :cond_364
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlq;

    move-object/from16 v25, v0

    move-object/from16 v26, v5

    move-object/from16 v27, v11

    move/from16 v28, v10

    move-object/from16 v29, v7

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzlq;-><init>([J[II[J[I)V

    return-object v0

    .line 486
    :cond_376
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_37d

    const/4 v3, 0x1

    goto :goto_37e

    :cond_37d
    const/4 v3, 0x0

    :goto_37e
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 490
    :goto_382
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    array-length v9, v9

    const-wide/16 v12, -0x1

    if-ge v4, v9, :cond_3c0

    .line 491
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbae:[J

    aget-wide v14, v9, v4

    cmp-long v9, v14, v12

    if-eqz v9, :cond_3b9

    .line 493
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    aget-wide v25, v9, v4

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    move/from16 p1, v10

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbaa:J

    move-wide/from16 v27, v12

    move-wide/from16 v29, v9

    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v9

    const/4 v12, 0x1

    .line 494
    invoke-static {v7, v14, v15, v12, v12}, Lcom/google/android/gms/internal/ads/zzpo;->zzb([JJZZ)I

    move-result v13

    add-long/2addr v14, v9

    const/4 v9, 0x0

    .line 495
    invoke-static {v7, v14, v15, v3, v9}, Lcom/google/android/gms/internal/ads/zzpo;->zzb([JJZZ)I

    move-result v10

    sub-int v9, v10, v13

    add-int/2addr v2, v9

    if-eq v8, v13, :cond_3b5

    const/4 v8, 0x1

    goto :goto_3b6

    :cond_3b5
    const/4 v8, 0x0

    :goto_3b6
    or-int/2addr v0, v8

    move v8, v10

    goto :goto_3bb

    :cond_3b9
    move/from16 p1, v10

    :goto_3bb
    add-int/lit8 v4, v4, 0x1

    move/from16 v10, p1

    goto :goto_382

    :cond_3c0
    move/from16 p1, v10

    move/from16 v4, v24

    if-eq v2, v4, :cond_3c8

    const/4 v4, 0x1

    goto :goto_3c9

    :cond_3c8
    const/4 v4, 0x0

    :goto_3c9
    or-int/2addr v0, v4

    if-eqz v0, :cond_3cf

    .line 501
    new-array v4, v2, [J

    goto :goto_3d0

    :cond_3cf
    move-object v4, v5

    :goto_3d0
    if-eqz v0, :cond_3d5

    .line 502
    new-array v8, v2, [I

    goto :goto_3d6

    :cond_3d5
    move-object v8, v11

    :goto_3d6
    if-eqz v0, :cond_3da

    const/4 v10, 0x0

    goto :goto_3dc

    :cond_3da
    move/from16 v10, p1

    :goto_3dc
    if-eqz v0, :cond_3e1

    .line 504
    new-array v9, v2, [I

    goto :goto_3e2

    :cond_3e1
    move-object v9, v6

    .line 505
    :goto_3e2
    new-array v2, v2, [J

    move/from16 v24, v10

    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 508
    :goto_3e8
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    array-length v15, v15

    if-ge v10, v15, :cond_491

    .line 509
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbae:[J

    aget-wide v12, v15, v10

    .line 510
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbad:[J

    aget-wide v35, v15, v10

    const-wide/16 v15, -0x1

    cmp-long v21, v12, v15

    if-eqz v21, :cond_47b

    move-object/from16 v27, v9

    move/from16 v28, v10

    .line 512
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    move-object/from16 p2, v4

    move-object/from16 v37, v5

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbaa:J

    move-wide/from16 v29, v35

    move-wide/from16 v31, v9

    move-wide/from16 v33, v4

    invoke-static/range {v29 .. v34}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v4

    add-long/2addr v4, v12

    const/4 v9, 0x1

    .line 513
    invoke-static {v7, v12, v13, v9, v9}, Lcom/google/android/gms/internal/ads/zzpo;->zzb([JJZZ)I

    move-result v10

    const/4 v9, 0x0

    .line 514
    invoke-static {v7, v4, v5, v3, v9}, Lcom/google/android/gms/internal/ads/zzpo;->zzb([JJZZ)I

    move-result v4

    if-eqz v0, :cond_432

    sub-int v5, v4, v10

    move-object/from16 v15, p2

    move-object/from16 v9, v37

    .line 517
    invoke-static {v9, v10, v15, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    invoke-static {v11, v10, v8, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v16, v3

    move-object/from16 v3, v27

    .line 519
    invoke-static {v6, v10, v3, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_43a

    :cond_432
    move-object/from16 v15, p2

    move/from16 v16, v3

    move-object/from16 v3, v27

    move-object/from16 v9, v37

    :goto_43a
    move/from16 v5, v24

    :goto_43c
    if-ge v10, v4, :cond_476

    const-wide/32 v23, 0xf4240

    move-object/from16 v29, v3

    move/from16 v27, v4

    .line 521
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzbaa:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v3

    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v3

    .line 522
    aget-wide v21, v7, v10

    sub-long v37, v21, v12

    const-wide/32 v39, 0xf4240

    move-wide/from16 v21, v12

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    move-wide/from16 v41, v12

    invoke-static/range {v37 .. v42}, Lcom/google/android/gms/internal/ads/zzpo;->zza(JJJ)J

    move-result-wide v12

    add-long/2addr v3, v12

    .line 523
    aput-wide v3, v2, v14

    if-eqz v0, :cond_46b

    .line 524
    aget v3, v8, v14

    if-le v3, v5, :cond_46b

    .line 525
    aget v5, v11, v10

    :cond_46b
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v12, v21

    move/from16 v4, v27

    move-object/from16 v3, v29

    goto :goto_43c

    :cond_476
    move-object/from16 v29, v3

    move/from16 v24, v5

    goto :goto_483

    :cond_47b
    move/from16 v16, v3

    move-object v15, v4

    move-object/from16 v29, v9

    move/from16 v28, v10

    move-object v9, v5

    :goto_483
    add-long v18, v18, v35

    add-int/lit8 v10, v28, 0x1

    move-object v5, v9

    move-object v4, v15

    move/from16 v3, v16

    move-object/from16 v9, v29

    const-wide/16 v12, -0x1

    goto/16 :goto_3e8

    :cond_491
    move-object v15, v4

    move-object v6, v9

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 531
    :goto_495
    array-length v1, v6

    if-ge v4, v1, :cond_4a7

    if-nez v0, :cond_4a7

    .line 532
    aget v1, v6, v4

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_4a2

    const/4 v1, 0x1

    goto :goto_4a3

    :cond_4a2
    const/4 v1, 0x0

    :goto_4a3
    or-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_495

    :cond_4a7
    if-eqz v0, :cond_4b9

    .line 536
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlq;

    move-object/from16 v21, v0

    move-object/from16 v22, v15

    move-object/from16 v23, v8

    move-object/from16 v25, v2

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzlq;-><init>([J[II[J[I)V

    return-object v0

    .line 535
    :cond_4b9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzht;

    const-string v1, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c1
    :goto_4c1
    move-object v9, v5

    move/from16 p1, v10

    .line 466
    iget-wide v0, v1, Lcom/google/android/gms/internal/ads/zzlp;->zzdg:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzpo;->zza([JJJ)V

    .line 467
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlq;

    move-object/from16 v25, v0

    move-object/from16 v26, v9

    move-object/from16 v27, v11

    move/from16 v28, p1

    move-object/from16 v29, v7

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzlq;-><init>([J[II[J[I)V

    return-object v0

    .line 337
    :cond_4de
    new-instance v0, Lcom/google/android/gms/internal/ads/zzht;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    goto :goto_4e7

    :goto_4e6
    throw v0

    :goto_4e7
    goto :goto_4e6
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzkv;Z)Lcom/google/android/gms/internal/ads/zzme;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return-object v0

    .line 539
    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkv;->zzawl:Lcom/google/android/gms/internal/ads/zzpi;

    const/16 p1, 0x8

    .line 540
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    .line 541
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->zziu()I

    move-result v1

    if-lt v1, p1, :cond_75

    .line 542
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v1

    .line 543
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v2

    .line 544
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    .line 545
    sget v4, Lcom/google/android/gms/internal/ads/zzkt;->zzavq:I

    if-ne v3, v4, :cond_6f

    .line 546
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    add-int/2addr v1, v2

    const/16 v2, 0xc

    .line 548
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 549
    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v2

    if-ge v2, v1, :cond_6e

    .line 550
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v2

    .line 551
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v3

    .line 552
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readInt()I

    move-result v4

    .line 553
    sget v5, Lcom/google/android/gms/internal/ads/zzkt;->zzavr:I

    if-ne v4, v5, :cond_68

    .line 554
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    add-int/2addr v2, v3

    .line 556
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 557
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->getPosition()I

    move-result v1

    if-ge v1, v2, :cond_5c

    .line 559
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzd(Lcom/google/android/gms/internal/ads/zzpi;)Lcom/google/android/gms/internal/ads/zzme$zza;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 561
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 563
    :cond_5c
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6e

    new-instance p0, Lcom/google/android/gms/internal/ads/zzme;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzme;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_68
    add-int/lit8 v3, v3, -0x8

    .line 565
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    goto :goto_2a

    :cond_6e
    return-object v0

    :cond_6f
    add-int/lit8 v2, v2, -0x8

    .line 569
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    goto :goto_b

    :cond_75
    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzpi;I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzpi;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 572
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbk(I)V

    const/4 p1, 0x1

    .line 573
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 574
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzku;->zzc(Lcom/google/android/gms/internal/ads/zzpi;)I

    const/4 v0, 0x2

    .line 575
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 576
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1d

    .line 578
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    :cond_1d
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_28

    .line 580
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    :cond_28
    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_30

    .line 582
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 583
    :cond_30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 584
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzku;->zzc(Lcom/google/android/gms/internal/ads/zzpi;)I

    .line 585
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_80

    const/16 v2, 0x21

    if-eq v0, v2, :cond_7d

    const/16 v2, 0x23

    if-eq v0, v2, :cond_7a

    const/16 v2, 0x40

    if-eq v0, v2, :cond_77

    const/16 v2, 0x6b

    if-eq v0, v2, :cond_70

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_6d

    const/16 v2, 0xa6

    if-eq v0, v2, :cond_6a

    packed-switch v0, :pswitch_data_9a

    packed-switch v0, :pswitch_data_a4

    goto :goto_82

    :pswitch_5c
    const-string p0, "audio/vnd.dts.hd"

    .line 604
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_63
    const-string p0, "audio/vnd.dts"

    .line 602
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6a
    const-string v1, "audio/eac3"

    goto :goto_82

    :cond_6d
    const-string v1, "audio/ac3"

    goto :goto_82

    :cond_70
    const-string p0, "audio/mpeg"

    .line 588
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_77
    :pswitch_77
    const-string v1, "audio/mp4a-latm"

    goto :goto_82

    :cond_7a
    const-string v1, "video/hevc"

    goto :goto_82

    :cond_7d
    const-string v1, "video/avc"

    goto :goto_82

    :cond_80
    const-string v1, "video/mp4v-es"

    :goto_82
    const/16 v0, 0xc

    .line 606
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 607
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpi;->zzbl(I)V

    .line 608
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzku;->zzc(Lcom/google/android/gms/internal/ads/zzpi;)I

    move-result p1

    .line 609
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 610
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzpi;->zze([BII)V

    .line 611
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_9a
    .packed-switch 0x66
        :pswitch_77
        :pswitch_77
        :pswitch_77
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0xa9
        :pswitch_63
        :pswitch_5c
        :pswitch_5c
        :pswitch_63
    .end packed-switch
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzpi;)I
    .registers 4

    .line 665
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 668
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpi;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method
