.class final Lcom/google/android/gms/internal/ads/zzehp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeih;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeih<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzhni:Lsun/misc/Unsafe;

.field private static final zzigr:[I


# instance fields
.field private final zzigs:[I

.field private final zzigt:[Ljava/lang/Object;

.field private final zzigu:I

.field private final zzigv:I

.field private final zzigw:Lcom/google/android/gms/internal/ads/zzehl;

.field private final zzigx:Z

.field private final zzigy:Z

.field private final zzigz:Z

.field private final zziha:Z

.field private final zzihb:[I

.field private final zzihc:I

.field private final zzihd:I

.field private final zzihe:Lcom/google/android/gms/internal/ads/zzeht;

.field private final zzihf:Lcom/google/android/gms/internal/ads/zzegv;

.field private final zzihg:Lcom/google/android/gms/internal/ads/zzeiz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeiz<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzihh:Lcom/google/android/gms/internal/ads/zzefq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzefq<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzihi:Lcom/google/android/gms/internal/ads/zzehi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 4104
    sput-object v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigr:[I

    .line 4105
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejf;->zzbhx()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzehl;ZZ[IIILcom/google/android/gms/internal/ads/zzeht;Lcom/google/android/gms/internal/ads/zzegv;Lcom/google/android/gms/internal/ads/zzeiz;Lcom/google/android/gms/internal/ads/zzefq;Lcom/google/android/gms/internal/ads/zzehi;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/ads/zzehl;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/ads/zzeht;",
            "Lcom/google/android/gms/internal/ads/zzegv;",
            "Lcom/google/android/gms/internal/ads/zzeiz<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzefq<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzehi;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigt:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigu:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigv:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/ads/zzegb;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigy:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigz:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_1c

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/ads/zzefq;->zzj(Lcom/google/android/gms/internal/ads/zzehl;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihc:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihd:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihe:Lcom/google/android/gms/internal/ads/zzeht;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigw:Lcom/google/android/gms/internal/ads/zzehl;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzeiz;Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeiz<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1216
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1217
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzat(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/zzeem;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/ads/zzeem;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 3432
    sget-object v12, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    .line 3433
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_1a4

    goto/16 :goto_1a1

    :pswitch_28
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1a1

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 3514
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 3515
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;[BIIILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3516
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4b

    .line 3517
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4c

    :cond_4b
    const/4 v15, 0x0

    :goto_4c
    if-nez v15, :cond_55

    .line 3520
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19d

    .line 3521
    :cond_55
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    .line 3522
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzegd;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3523
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19d

    :pswitch_60
    if-nez v5, :cond_1a1

    .line 3508
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3509
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzefc;->zzfh(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19d

    :pswitch_75
    if-nez v5, :cond_1a1

    .line 3504
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3505
    iget v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefc;->zzgb(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19d

    :pswitch_8a
    if-nez v5, :cond_1a1

    .line 3495
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v3

    .line 3496
    iget v4, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    .line 3497
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzhg(I)Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object v5

    if-eqz v5, :cond_ae

    .line 3498
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzegi;->zzi(I)Z

    move-result v5

    if-eqz v5, :cond_9f

    goto :goto_ae

    .line 3501
    :cond_9f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzehp;->zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzejc;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzejc;->zzd(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_1a2

    .line 3499
    :cond_ae
    :goto_ae
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_19d

    :pswitch_b8
    if-ne v5, v15, :cond_1a1

    .line 3491
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zze([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3492
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19d

    :pswitch_c5
    if-ne v5, v15, :cond_1a1

    .line 3478
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v2

    move/from16 v5, p4

    .line 3479
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;[BIILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3480
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_dc

    .line 3481
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_dd

    :cond_dc
    const/4 v15, 0x0

    :goto_dd
    if-nez v15, :cond_e5

    .line 3484
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_ee

    .line 3485
    :cond_e5
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    .line 3486
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzegd;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3487
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3488
    :goto_ee
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1a2

    :pswitch_f3
    if-ne v5, v15, :cond_1a1

    .line 3464
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3465
    iget v4, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-nez v4, :cond_103

    const-string v3, ""

    .line 3467
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_122

    :cond_103
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_117

    add-int v5, v2, v4

    .line 3469
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzeji;->zzm([BII)Z

    move-result v5

    if-eqz v5, :cond_112

    goto :goto_117

    .line 3470
    :cond_112
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgc()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    .line 3471
    :cond_117
    :goto_117
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzegd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3472
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 3474
    :goto_122
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1a2

    :pswitch_127
    if-nez v5, :cond_1a1

    .line 3460
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3461
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_137

    const/4 v15, 0x1

    goto :goto_138

    :cond_137
    const/4 v15, 0x0

    :goto_138
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_19d

    :pswitch_140
    if-ne v5, v7, :cond_1a1

    .line 3456
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzeen;->zzg([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_18a

    :pswitch_14e
    const/4 v2, 0x1

    if-ne v5, v2, :cond_1a1

    .line 3452
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzeen;->zzh([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_19b

    :pswitch_15d
    if-nez v5, :cond_1a1

    .line 3448
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3449
    iget v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_19d

    :pswitch_16d
    if-nez v5, :cond_1a1

    .line 3444
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3445
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_19d

    :pswitch_17d
    if-ne v5, v7, :cond_1a1

    .line 3440
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzeen;->zzj([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_18a
    add-int/lit8 v2, v4, 0x4

    goto :goto_19d

    :pswitch_18d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_1a1

    .line 3436
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzeen;->zzi([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_19b
    add-int/lit8 v2, v4, 0x8

    .line 3524
    :goto_19d
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1a2

    :cond_1a1
    :goto_1a1
    move v2, v4

    :goto_1a2
    return v2

    nop

    :pswitch_data_1a4
    .packed-switch 0x33
        :pswitch_18d
        :pswitch_17d
        :pswitch_16d
        :pswitch_16d
        :pswitch_15d
        :pswitch_14e
        :pswitch_140
        :pswitch_127
        :pswitch_f3
        :pswitch_c5
        :pswitch_b8
        :pswitch_15d
        :pswitch_8a
        :pswitch_140
        :pswitch_14e
        :pswitch_75
        :pswitch_60
        :pswitch_28
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/zzeem;)I
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/ads/zzeem;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 3055
    sget-object v11, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzegm;

    .line 3056
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzegm;->zzbcy()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_36

    .line 3057
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzegm;->size()I

    move-result v12

    if-nez v12, :cond_2c

    const/16 v12, 0xa

    goto :goto_2d

    :cond_2c
    shl-int/2addr v12, v13

    .line 3060
    :goto_2d
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/ads/zzegm;->zzfs(I)Lcom/google/android/gms/internal/ads/zzegm;

    move-result-object v11

    .line 3061
    sget-object v12, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_36
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_424

    goto/16 :goto_422

    :pswitch_3f
    const/4 v1, 0x3

    if-ne v6, v1, :cond_422

    .line 3372
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 3376
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;[BIIILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3377
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    :goto_5f
    if-ge v4, v5, :cond_422

    .line 3379
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v8

    .line 3380
    iget v9, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v9, :cond_422

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 3381
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;[BIIILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3382
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :pswitch_7f
    if-ne v6, v10, :cond_a3

    .line 3347
    check-cast v11, Lcom/google/android/gms/internal/ads/zzegz;

    .line 3348
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3349
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    add-int/2addr v2, v1

    :goto_8a
    if-ge v1, v2, :cond_9a

    .line 3351
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3352
    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzefc;->zzfh(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzegz;->zzfs(J)V

    goto :goto_8a

    :cond_9a
    if-ne v1, v2, :cond_9e

    goto/16 :goto_423

    .line 3354
    :cond_9e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    :cond_a3
    if-nez v6, :cond_422

    .line 3359
    check-cast v11, Lcom/google/android/gms/internal/ads/zzegz;

    .line 3360
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3361
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzefc;->zzfh(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzegz;->zzfs(J)V

    :goto_b4
    if-ge v1, v5, :cond_423

    .line 3363
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3364
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v6, :cond_423

    .line 3365
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3366
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzefc;->zzfh(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzegz;->zzfs(J)V

    goto :goto_b4

    :pswitch_cc
    if-ne v6, v10, :cond_f0

    .line 3322
    check-cast v11, Lcom/google/android/gms/internal/ads/zzege;

    .line 3323
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3324
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    add-int/2addr v2, v1

    :goto_d7
    if-ge v1, v2, :cond_e7

    .line 3326
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3327
    iget v4, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefc;->zzgb(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzege;->zzhb(I)V

    goto :goto_d7

    :cond_e7
    if-ne v1, v2, :cond_eb

    goto/16 :goto_423

    .line 3329
    :cond_eb
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    :cond_f0
    if-nez v6, :cond_422

    .line 3334
    check-cast v11, Lcom/google/android/gms/internal/ads/zzege;

    .line 3335
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3336
    iget v4, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefc;->zzgb(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzege;->zzhb(I)V

    :goto_101
    if-ge v1, v5, :cond_423

    .line 3338
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3339
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v6, :cond_423

    .line 3340
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3341
    iget v4, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefc;->zzgb(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzege;->zzhb(I)V

    goto :goto_101

    :pswitch_119
    if-ne v6, v10, :cond_120

    .line 3309
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzegm;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    goto :goto_131

    :cond_120
    if-nez v6, :cond_422

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 3311
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza(I[BIILcom/google/android/gms/internal/ads/zzegm;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3312
    :goto_131
    check-cast v1, Lcom/google/android/gms/internal/ads/zzegb;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzegb;->zzieg:Lcom/google/android/gms/internal/ads/zzejc;

    .line 3313
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejc;->zzbhs()Lcom/google/android/gms/internal/ads/zzejc;

    move-result-object v4

    if-ne v3, v4, :cond_13c

    const/4 v3, 0x0

    .line 3316
    :cond_13c
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zzhg(I)Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    move/from16 v6, p6

    .line 3317
    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzegi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzejc;

    if-eqz v3, :cond_14e

    .line 3319
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzegb;->zzieg:Lcom/google/android/gms/internal/ads/zzejc;

    :cond_14e
    :goto_14e
    move v1, v2

    goto/16 :goto_423

    :pswitch_151
    if-ne v6, v10, :cond_422

    .line 3282
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3283
    iget v4, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ltz v4, :cond_1a4

    .line 3286
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_19f

    if-nez v4, :cond_167

    .line 3289
    sget-object v4, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    goto :goto_16f

    .line 3290
    :cond_167
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzeer;->zzi([BII)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    :goto_16e
    add-int/2addr v1, v4

    :goto_16f
    if-ge v1, v5, :cond_423

    .line 3293
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3294
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v6, :cond_423

    .line 3295
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3296
    iget v4, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ltz v4, :cond_19a

    .line 3299
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_195

    if-nez v4, :cond_18d

    .line 3302
    sget-object v4, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    goto :goto_16f

    .line 3303
    :cond_18d
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzeer;->zzi([BII)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    goto :goto_16e

    .line 3300
    :cond_195
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    .line 3298
    :cond_19a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfv()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    .line 3287
    :cond_19f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    .line 3285
    :cond_1a4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfv()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    :pswitch_1a9
    if-ne v6, v10, :cond_422

    .line 3277
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 3278
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;I[BIILcom/google/android/gms/internal/ads/zzegm;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    goto/16 :goto_423

    :pswitch_1c3
    if-ne v6, v10, :cond_422

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v14

    if-nez v6, :cond_216

    .line 3221
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3222
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ltz v6, :cond_211

    if-nez v6, :cond_1de

    .line 3226
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    goto :goto_1e9

    .line 3227
    :cond_1de
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzegd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3228
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    :goto_1e8
    add-int/2addr v4, v6

    :goto_1e9
    if-ge v4, v5, :cond_422

    .line 3231
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v6

    .line 3232
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v8, :cond_422

    .line 3233
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3234
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ltz v6, :cond_20c

    if-nez v6, :cond_201

    .line 3238
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    goto :goto_1e9

    .line 3239
    :cond_201
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzegd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3240
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    goto :goto_1e8

    .line 3236
    :cond_20c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfv()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    .line 3224
    :cond_211
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfv()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    .line 3247
    :cond_216
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3248
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ltz v6, :cond_271

    if-nez v6, :cond_224

    .line 3252
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    goto :goto_237

    :cond_224
    add-int v8, v4, v6

    .line 3253
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzeji;->zzm([BII)Z

    move-result v9

    if-eqz v9, :cond_26c

    .line 3255
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzegd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3256
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    :goto_236
    move v4, v8

    :goto_237
    if-ge v4, v5, :cond_422

    .line 3259
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v6

    .line 3260
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v8, :cond_422

    .line 3261
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3262
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ltz v6, :cond_267

    if-nez v6, :cond_24f

    .line 3266
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    goto :goto_237

    :cond_24f
    add-int v8, v4, v6

    .line 3267
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzeji;->zzm([BII)Z

    move-result v9

    if-eqz v9, :cond_262

    .line 3269
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzegd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3270
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    goto :goto_236

    .line 3268
    :cond_262
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgc()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    .line 3264
    :cond_267
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfv()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    .line 3254
    :cond_26c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgc()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    .line 3250
    :cond_271
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfv()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    :pswitch_276
    const/4 v1, 0x0

    if-ne v6, v10, :cond_29e

    .line 3194
    check-cast v11, Lcom/google/android/gms/internal/ads/zzeep;

    .line 3195
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3196
    iget v4, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    add-int/2addr v4, v2

    :goto_282
    if-ge v2, v4, :cond_295

    .line 3198
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v2

    .line 3199
    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    cmp-long v8, v5, v14

    if-eqz v8, :cond_290

    const/4 v5, 0x1

    goto :goto_291

    :cond_290
    const/4 v5, 0x0

    :goto_291
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzeep;->addBoolean(Z)V

    goto :goto_282

    :cond_295
    if-ne v2, v4, :cond_299

    goto/16 :goto_14e

    .line 3201
    :cond_299
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    :cond_29e
    if-nez v6, :cond_422

    .line 3206
    check-cast v11, Lcom/google/android/gms/internal/ads/zzeep;

    .line 3207
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3208
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_2ae

    const/4 v6, 0x1

    goto :goto_2af

    :cond_2ae
    const/4 v6, 0x0

    :goto_2af
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzeep;->addBoolean(Z)V

    :goto_2b2
    if-ge v4, v5, :cond_422

    .line 3210
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v6

    .line 3211
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v8, :cond_422

    .line 3212
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3213
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_2c8

    const/4 v6, 0x1

    goto :goto_2c9

    :cond_2c8
    const/4 v6, 0x0

    :goto_2c9
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzeep;->addBoolean(Z)V

    goto :goto_2b2

    :pswitch_2cd
    if-ne v6, v10, :cond_2ed

    .line 3169
    check-cast v11, Lcom/google/android/gms/internal/ads/zzege;

    .line 3170
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3171
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    add-int/2addr v2, v1

    :goto_2d8
    if-ge v1, v2, :cond_2e4

    .line 3173
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzeen;->zzg([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzege;->zzhb(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2d8

    :cond_2e4
    if-ne v1, v2, :cond_2e8

    goto/16 :goto_423

    .line 3176
    :cond_2e8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    :cond_2ed
    if-ne v6, v9, :cond_422

    .line 3181
    check-cast v11, Lcom/google/android/gms/internal/ads/zzege;

    .line 3182
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzeen;->zzg([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzege;->zzhb(I)V

    :goto_2f8
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_423

    .line 3185
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3186
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v6, :cond_423

    .line 3187
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzeen;->zzg([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzege;->zzhb(I)V

    goto :goto_2f8

    :pswitch_30c
    if-ne v6, v10, :cond_32c

    .line 3144
    check-cast v11, Lcom/google/android/gms/internal/ads/zzegz;

    .line 3145
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3146
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    add-int/2addr v2, v1

    :goto_317
    if-ge v1, v2, :cond_323

    .line 3148
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzeen;->zzh([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzegz;->zzfs(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_317

    :cond_323
    if-ne v1, v2, :cond_327

    goto/16 :goto_423

    .line 3151
    :cond_327
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    :cond_32c
    if-ne v6, v13, :cond_422

    .line 3156
    check-cast v11, Lcom/google/android/gms/internal/ads/zzegz;

    .line 3157
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzeen;->zzh([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzegz;->zzfs(J)V

    :goto_337
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_423

    .line 3160
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3161
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v6, :cond_423

    .line 3162
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzeen;->zzh([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzegz;->zzfs(J)V

    goto :goto_337

    :pswitch_34b
    if-ne v6, v10, :cond_353

    .line 3139
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzegm;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    goto/16 :goto_423

    :cond_353
    if-nez v6, :cond_422

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 3141
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/ads/zzeen;->zza(I[BIILcom/google/android/gms/internal/ads/zzegm;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    goto/16 :goto_423

    :pswitch_365
    if-ne v6, v10, :cond_385

    .line 3115
    check-cast v11, Lcom/google/android/gms/internal/ads/zzegz;

    .line 3116
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3117
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    add-int/2addr v2, v1

    :goto_370
    if-ge v1, v2, :cond_37c

    .line 3119
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3120
    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzegz;->zzfs(J)V

    goto :goto_370

    :cond_37c
    if-ne v1, v2, :cond_380

    goto/16 :goto_423

    .line 3122
    :cond_380
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    :cond_385
    if-nez v6, :cond_422

    .line 3127
    check-cast v11, Lcom/google/android/gms/internal/ads/zzegz;

    .line 3128
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3129
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzegz;->zzfs(J)V

    :goto_392
    if-ge v1, v5, :cond_423

    .line 3131
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3132
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v6, :cond_423

    .line 3133
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3134
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzegz;->zzfs(J)V

    goto :goto_392

    :pswitch_3a6
    if-ne v6, v10, :cond_3c5

    .line 3090
    check-cast v11, Lcom/google/android/gms/internal/ads/zzega;

    .line 3091
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3092
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    add-int/2addr v2, v1

    :goto_3b1
    if-ge v1, v2, :cond_3bd

    .line 3094
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzeen;->zzj([BI)F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzega;->zzh(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_3b1

    :cond_3bd
    if-ne v1, v2, :cond_3c0

    goto :goto_423

    .line 3097
    :cond_3c0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    :cond_3c5
    if-ne v6, v9, :cond_422

    .line 3102
    check-cast v11, Lcom/google/android/gms/internal/ads/zzega;

    .line 3103
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzeen;->zzj([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzega;->zzh(F)V

    :goto_3d0
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_423

    .line 3106
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3107
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v6, :cond_423

    .line 3108
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzeen;->zzj([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzega;->zzh(F)V

    goto :goto_3d0

    :pswitch_3e4
    if-ne v6, v10, :cond_403

    .line 3065
    check-cast v11, Lcom/google/android/gms/internal/ads/zzefm;

    .line 3066
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3067
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    add-int/2addr v2, v1

    :goto_3ef
    if-ge v1, v2, :cond_3fb

    .line 3069
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzeen;->zzi([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzefm;->zzd(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3ef

    :cond_3fb
    if-ne v1, v2, :cond_3fe

    goto :goto_423

    .line 3072
    :cond_3fe
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v1

    throw v1

    :cond_403
    if-ne v6, v13, :cond_422

    .line 3077
    check-cast v11, Lcom/google/android/gms/internal/ads/zzefm;

    .line 3078
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzeen;->zzi([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzefm;->zzd(D)V

    :goto_40e
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_423

    .line 3081
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v4

    .line 3082
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ne v2, v6, :cond_423

    .line 3083
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzeen;->zzi([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzefm;->zzd(D)V

    goto :goto_40e

    :cond_422
    :goto_422
    move v1, v4

    :cond_423
    :goto_423
    return v1

    :pswitch_data_424
    .packed-switch 0x12
        :pswitch_3e4
        :pswitch_3a6
        :pswitch_365
        :pswitch_365
        :pswitch_34b
        :pswitch_30c
        :pswitch_2cd
        :pswitch_276
        :pswitch_1c3
        :pswitch_1a9
        :pswitch_151
        :pswitch_34b
        :pswitch_119
        :pswitch_2cd
        :pswitch_30c
        :pswitch_cc
        :pswitch_7f
        :pswitch_3e4
        :pswitch_3a6
        :pswitch_365
        :pswitch_365
        :pswitch_34b
        :pswitch_30c
        :pswitch_2cd
        :pswitch_276
        :pswitch_34b
        :pswitch_119
        :pswitch_2cd
        :pswitch_30c
        :pswitch_cc
        :pswitch_7f
        :pswitch_3f
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/zzeem;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/ads/zzeem;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3387
    sget-object v0, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    .line 3388
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/zzehp;->zzhf(I)Ljava/lang/Object;

    move-result-object p5

    .line 3389
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 3390
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzehi;->zzaq(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3392
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/ads/zzehi;->zzas(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3393
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzehi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3394
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 3395
    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    .line 3396
    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/ads/zzehi;->zzao(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzehg;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    .line 3397
    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/ads/zzehi;->zzan(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 3399
    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result p3

    .line 3400
    iget p6, p8, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    if-ltz p6, :cond_97

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_97

    add-int/2addr p6, p3

    .line 3404
    iget-object p7, p1, Lcom/google/android/gms/internal/ads/zzehg;->zzign:Ljava/lang/Object;

    .line 3405
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzehg;->zzckr:Ljava/lang/Object;

    :goto_3e
    if-ge p3, p6, :cond_8c

    add-int/lit8 v1, p3, 0x1

    .line 3407
    aget-byte p3, p2, p3

    if-gez p3, :cond_4c

    .line 3409
    invoke-static {p3, p2, v1, p8}, Lcom/google/android/gms/internal/ads/zzeen;->zza(I[BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v1

    .line 3410
    iget p3, p8, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    :cond_4c
    move v2, v1

    ushr-int/lit8 v1, p3, 0x3

    and-int/lit8 v3, p3, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_72

    const/4 v4, 0x2

    if-eq v1, v4, :cond_58

    goto :goto_87

    .line 3419
    :cond_58
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzehg;->zzigo:Lcom/google/android/gms/internal/ads/zzejq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejq;->zzbic()I

    move-result v1

    if-ne v3, v1, :cond_87

    .line 3420
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzehg;->zzigo:Lcom/google/android/gms/internal/ads/zzejq;

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzehg;->zzckr:Ljava/lang/Object;

    .line 3421
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 3422
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzehp;->zza([BIILcom/google/android/gms/internal/ads/zzejq;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result p3

    .line 3423
    iget-object v0, p8, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    goto :goto_3e

    .line 3414
    :cond_72
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzehg;->zzigm:Lcom/google/android/gms/internal/ads/zzejq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejq;->zzbic()I

    move-result v1

    if-ne v3, v1, :cond_87

    .line 3415
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzehg;->zzigm:Lcom/google/android/gms/internal/ads/zzejq;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 3416
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzehp;->zza([BIILcom/google/android/gms/internal/ads/zzejq;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result p3

    .line 3417
    iget-object p7, p8, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    goto :goto_3e

    .line 3425
    :cond_87
    :goto_87
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/android/gms/internal/ads/zzeen;->zza(I[BIILcom/google/android/gms/internal/ads/zzeem;)I

    move-result p3

    goto :goto_3e

    :cond_8c
    if-ne p3, p6, :cond_92

    .line 3429
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    .line 3428
    :cond_92
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgb()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    throw p1

    .line 3402
    :cond_97
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbfu()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object p1

    goto :goto_9d

    :goto_9c
    throw p1

    :goto_9d
    goto :goto_9c
.end method

.method private static zza([BIILcom/google/android/gms/internal/ads/zzejq;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzeem;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/zzejq;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzeem;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3018
    sget-object v0, Lcom/google/android/gms/internal/ads/zzehs;->zziau:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzejq;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_b0

    .line 3053
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3051
    :pswitch_13
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzeen;->zzd([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result p0

    goto/16 :goto_ae

    .line 3048
    :pswitch_19
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result p0

    .line 3049
    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzefc;->zzfh(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    goto/16 :goto_ae

    .line 3045
    :pswitch_2b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result p0

    .line 3046
    iget p1, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefc;->zzgb(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    goto/16 :goto_ae

    .line 3042
    :pswitch_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeia;->zzbgz()Lcom/google/android/gms/internal/ads/zzeia;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzeia;->zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object p3

    .line 3043
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;[BIILcom/google/android/gms/internal/ads/zzeem;)I

    move-result p0

    goto :goto_ae

    .line 3039
    :pswitch_4a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result p0

    .line 3040
    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    goto :goto_ae

    .line 3036
    :pswitch_57
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result p0

    .line 3037
    iget p1, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    goto :goto_ae

    .line 3033
    :pswitch_64
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeen;->zzj([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    goto :goto_84

    .line 3030
    :pswitch_6f
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeen;->zzh([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    goto :goto_91

    .line 3027
    :pswitch_7a
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeen;->zzg([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    :goto_84
    add-int/lit8 p0, p1, 0x4

    goto :goto_ae

    .line 3024
    :pswitch_87
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeen;->zzi([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    :goto_91
    add-int/lit8 p0, p1, 0x8

    goto :goto_ae

    .line 3022
    :pswitch_94
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzeen;->zze([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result p0

    goto :goto_ae

    .line 3019
    :pswitch_99
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result p0

    .line 3020
    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_a7

    const/4 p1, 0x1

    goto :goto_a8

    :cond_a7
    const/4 p1, 0x0

    :goto_a8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    :goto_ae
    return p0

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_99
        :pswitch_94
        :pswitch_87
        :pswitch_7a
        :pswitch_7a
        :pswitch_6f
        :pswitch_6f
        :pswitch_64
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_4a
        :pswitch_4a
        :pswitch_3d
        :pswitch_2b
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzehj;Lcom/google/android/gms/internal/ads/zzeht;Lcom/google/android/gms/internal/ads/zzegv;Lcom/google/android/gms/internal/ads/zzeiz;Lcom/google/android/gms/internal/ads/zzefq;Lcom/google/android/gms/internal/ads/zzehi;)Lcom/google/android/gms/internal/ads/zzehp;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/zzehj;",
            "Lcom/google/android/gms/internal/ads/zzeht;",
            "Lcom/google/android/gms/internal/ads/zzegv;",
            "Lcom/google/android/gms/internal/ads/zzeiz<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzefq<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzehi;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzehp<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzeic;

    if-eqz v1, :cond_40f

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/zzeic;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeic;->zzbgp()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/zzegb$zze;->zziex:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    const/4 v11, 0x1

    goto :goto_15

    :cond_14
    const/4 v11, 0x0

    .line 23
    :goto_15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeic;->zzbha()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_31

    const/4 v5, 0x1

    :goto_27
    add-int/lit8 v7, v5, 0x1

    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_32

    move v5, v7

    goto :goto_27

    :cond_31
    const/4 v7, 0x1

    :cond_32
    add-int/lit8 v5, v7, 0x1

    .line 33
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_51

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3e
    add-int/lit8 v10, v5, 0x1

    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_4e

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_3e

    :cond_4e
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_51
    if-nez v7, :cond_5e

    .line 49
    sget-object v7, Lcom/google/android/gms/internal/ads/zzehp;->zzigr:[I

    move-object v14, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_16f

    :cond_5e
    add-int/lit8 v7, v5, 0x1

    .line 51
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7d

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_6a
    add-int/lit8 v10, v7, 0x1

    .line 55
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7a

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_6a

    :cond_7a
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7d
    add-int/lit8 v9, v7, 0x1

    .line 60
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9c

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_89
    add-int/lit8 v12, v9, 0x1

    .line 64
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_99

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_89

    :cond_99
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9c
    add-int/lit8 v10, v9, 0x1

    .line 69
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_bb

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_a8
    add-int/lit8 v13, v10, 0x1

    .line 73
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_b8

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_a8

    :cond_b8
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_bb
    add-int/lit8 v12, v10, 0x1

    .line 78
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_da

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_c7
    add-int/lit8 v14, v12, 0x1

    .line 82
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d7

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_c7

    :cond_d7
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_da
    add-int/lit8 v13, v12, 0x1

    .line 87
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f9

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_e6
    add-int/lit8 v15, v13, 0x1

    .line 91
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f6

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_e6

    :cond_f6
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f9
    add-int/lit8 v14, v13, 0x1

    .line 96
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11a

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_105
    add-int/lit8 v16, v14, 0x1

    .line 100
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_116

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_105

    :cond_116
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11a
    add-int/lit8 v15, v14, 0x1

    .line 105
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13d

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_126
    add-int/lit8 v17, v15, 0x1

    .line 109
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_138

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_126

    :cond_138
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13d
    add-int/lit8 v16, v15, 0x1

    .line 114
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_162

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_14b
    add-int/lit8 v17, v3, 0x1

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_15d

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_14b

    :cond_15d
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v17

    :cond_162
    add-int v3, v15, v13

    add-int/2addr v3, v14

    .line 123
    new-array v3, v3, [I

    shl-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v7

    move v7, v14

    move-object v14, v3

    move v3, v5

    move/from16 v5, v16

    .line 125
    :goto_16f
    sget-object v8, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeic;->zzbhb()[Ljava/lang/Object;

    move-result-object v16

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeic;->zzbgr()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v17, v5

    mul-int/lit8 v5, v12, 0x3

    .line 129
    new-array v5, v5, [I

    shl-int/2addr v12, v4

    .line 130
    new-array v12, v12, [Ljava/lang/Object;

    add-int v19, v15, v13

    move v13, v7

    move/from16 v21, v15

    move/from16 v7, v17

    move/from16 v22, v19

    const/16 v17, 0x0

    const/16 v20, 0x0

    :goto_193
    if-ge v7, v2, :cond_3e3

    add-int/lit8 v23, v7, 0x1

    .line 135
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v4, 0xd800

    if-lt v7, v4, :cond_1c5

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_1a6
    add-int/lit8 v25, v4, 0x1

    .line 139
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_1bf

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v23

    or-int/2addr v7, v2

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v2, v26

    goto :goto_1a6

    :cond_1bf
    shl-int v2, v4, v23

    or-int/2addr v7, v2

    move/from16 v2, v25

    goto :goto_1c9

    :cond_1c5
    move/from16 v26, v2

    move/from16 v2, v23

    :goto_1c9
    add-int/lit8 v4, v2, 0x1

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v23, v4

    const v4, 0xd800

    if-lt v2, v4, :cond_1fb

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_1dc
    add-int/lit8 v25, v4, 0x1

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_1f5

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v23

    or-int/2addr v2, v4

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v15, v27

    goto :goto_1dc

    :cond_1f5
    shl-int v4, v4, v23

    or-int/2addr v2, v4

    move/from16 v4, v25

    goto :goto_1ff

    :cond_1fb
    move/from16 v27, v15

    move/from16 v4, v23

    :goto_1ff
    and-int/lit16 v15, v2, 0xff

    move/from16 v23, v10

    and-int/lit16 v10, v2, 0x400

    if-eqz v10, :cond_20d

    add-int/lit8 v10, v17, 0x1

    .line 155
    aput v20, v14, v17

    move/from16 v17, v10

    :cond_20d
    const/16 v10, 0x33

    move/from16 v29, v9

    if-lt v15, v10, :cond_2aa

    add-int/lit8 v10, v4, 0x1

    .line 157
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v9, 0xd800

    if-lt v4, v9, :cond_23c

    and-int/lit16 v4, v4, 0x1fff

    const/16 v31, 0xd

    :goto_222
    add-int/lit8 v32, v10, 0x1

    .line 161
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v9, :cond_237

    and-int/lit16 v9, v10, 0x1fff

    shl-int v9, v9, v31

    or-int/2addr v4, v9

    add-int/lit8 v31, v31, 0xd

    move/from16 v10, v32

    const v9, 0xd800

    goto :goto_222

    :cond_237
    shl-int v9, v10, v31

    or-int/2addr v4, v9

    move/from16 v10, v32

    :cond_23c
    add-int/lit8 v9, v15, -0x33

    move/from16 v31, v10

    const/16 v10, 0x9

    if-eq v9, v10, :cond_25d

    const/16 v10, 0x11

    if-ne v9, v10, :cond_249

    goto :goto_25d

    :cond_249
    const/16 v10, 0xc

    if-ne v9, v10, :cond_25b

    if-nez v11, :cond_25b

    .line 171
    div-int/lit8 v9, v20, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v13, 0x1

    aget-object v13, v16, v13

    aput-object v13, v12, v9

    move v13, v10

    :cond_25b
    const/4 v10, 0x1

    goto :goto_26a

    .line 168
    :cond_25d
    :goto_25d
    div-int/lit8 v9, v20, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v24, v13, 0x1

    aget-object v13, v16, v13

    aput-object v13, v12, v9

    move/from16 v13, v24

    :goto_26a
    shl-int/2addr v4, v10

    .line 173
    aget-object v9, v16, v4

    .line 174
    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_274

    .line 175
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_27c

    .line 176
    :cond_274
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 177
    aput-object v9, v16, v4

    .line 178
    :goto_27c
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    add-int/lit8 v4, v4, 0x1

    .line 180
    aget-object v9, v16, v4

    move/from16 v25, v10

    .line 181
    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_28e

    .line 182
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_296

    .line 183
    :cond_28e
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 184
    aput-object v9, v16, v4

    .line 185
    :goto_296
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v4, v9

    move-object/from16 v30, v1

    move v9, v4

    move v1, v11

    move-object/from16 v24, v12

    move/from16 v10, v25

    move/from16 v11, v31

    const/4 v4, 0x0

    const/16 v18, 0x1

    goto/16 :goto_3a8

    :cond_2aa
    add-int/lit8 v9, v13, 0x1

    .line 188
    aget-object v10, v16, v13

    check-cast v10, Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/16 v13, 0x9

    if-eq v15, v13, :cond_31e

    const/16 v13, 0x11

    if-ne v15, v13, :cond_2bd

    goto :goto_31e

    :cond_2bd
    const/16 v13, 0x1b

    if-eq v15, v13, :cond_30d

    const/16 v13, 0x31

    if-ne v15, v13, :cond_2c6

    goto :goto_30d

    :cond_2c6
    const/16 v13, 0xc

    if-eq v15, v13, :cond_2f9

    const/16 v13, 0x1e

    if-eq v15, v13, :cond_2f9

    const/16 v13, 0x2c

    if-ne v15, v13, :cond_2d3

    goto :goto_2f9

    :cond_2d3
    const/16 v13, 0x32

    if-ne v15, v13, :cond_32c

    add-int/lit8 v13, v21, 0x1

    .line 197
    aput v20, v14, v21

    .line 198
    div-int/lit8 v21, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v21, v21, 0x1

    add-int/lit8 v25, v9, 0x1

    aget-object v9, v16, v9

    aput-object v9, v12, v21

    and-int/lit16 v9, v2, 0x800

    if-eqz v9, :cond_2f6

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v9, v25, 0x1

    .line 200
    aget-object v25, v16, v25

    aput-object v25, v12, v21

    move/from16 v21, v13

    goto :goto_32c

    :cond_2f6
    move/from16 v21, v13

    goto :goto_31b

    :cond_2f9
    :goto_2f9
    if-nez v11, :cond_30a

    .line 195
    div-int/lit8 v13, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v25, v9, 0x1

    aget-object v9, v16, v9

    aput-object v9, v12, v13

    goto :goto_31b

    :cond_30a
    const/16 v24, 0x1

    goto :goto_32c

    :cond_30d
    :goto_30d
    const/16 v24, 0x1

    .line 192
    div-int/lit8 v13, v20, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v25, v9, 0x1

    aget-object v9, v16, v9

    aput-object v9, v12, v13

    :goto_31b
    move/from16 v13, v25

    goto :goto_32d

    :cond_31e
    :goto_31e
    const/16 v24, 0x1

    .line 190
    div-int/lit8 v13, v20, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v12, v13

    :cond_32c
    :goto_32c
    move v13, v9

    .line 201
    :goto_32d
    invoke-virtual {v8, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    and-int/lit16 v9, v2, 0x1000

    move/from16 v25, v13

    const/16 v13, 0x1000

    if-ne v9, v13, :cond_38c

    const/16 v9, 0x11

    if-gt v15, v9, :cond_38c

    add-int/lit8 v9, v4, 0x1

    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v13, 0xd800

    if-lt v4, v13, :cond_364

    and-int/lit16 v4, v4, 0x1fff

    const/16 v18, 0xd

    :goto_34d
    add-int/lit8 v28, v9, 0x1

    .line 208
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v13, :cond_35f

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v18

    or-int/2addr v4, v9

    add-int/lit8 v18, v18, 0xd

    move/from16 v9, v28

    goto :goto_34d

    :cond_35f
    shl-int v9, v9, v18

    or-int/2addr v4, v9

    move/from16 v9, v28

    :cond_364
    const/16 v18, 0x1

    shl-int/lit8 v24, v3, 0x1

    .line 213
    div-int/lit8 v28, v4, 0x20

    add-int v24, v24, v28

    .line 214
    aget-object v13, v16, v24

    move-object/from16 v30, v1

    .line 215
    instance-of v1, v13, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_377

    .line 216
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_37f

    .line 217
    :cond_377
    check-cast v13, Ljava/lang/String;

    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 218
    aput-object v13, v16, v24

    :goto_37f
    move v1, v11

    move-object/from16 v24, v12

    .line 219
    invoke-virtual {v8, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v12, v11

    .line 220
    rem-int/lit8 v4, v4, 0x20

    move v11, v9

    move v9, v12

    goto :goto_398

    :cond_38c
    move-object/from16 v30, v1

    move v1, v11

    move-object/from16 v24, v12

    const/16 v18, 0x1

    const v9, 0xfffff

    move v11, v4

    const/4 v4, 0x0

    :goto_398
    const/16 v12, 0x12

    if-lt v15, v12, :cond_3a6

    const/16 v12, 0x31

    if-gt v15, v12, :cond_3a6

    add-int/lit8 v12, v22, 0x1

    .line 225
    aput v10, v14, v22

    move/from16 v22, v12

    :cond_3a6
    move/from16 v13, v25

    :goto_3a8
    add-int/lit8 v12, v20, 0x1

    .line 226
    aput v7, v5, v20

    add-int/lit8 v7, v12, 0x1

    move/from16 v20, v3

    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_3b7

    const/high16 v3, 0x20000000

    goto :goto_3b8

    :cond_3b7
    const/4 v3, 0x0

    :goto_3b8
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_3bf

    const/high16 v2, 0x10000000

    goto :goto_3c0

    :cond_3bf
    const/4 v2, 0x0

    :goto_3c0
    or-int/2addr v2, v3

    shl-int/lit8 v3, v15, 0x14

    or-int/2addr v2, v3

    or-int/2addr v2, v10

    .line 229
    aput v2, v5, v12

    add-int/lit8 v2, v7, 0x1

    shl-int/lit8 v3, v4, 0x14

    or-int/2addr v3, v9

    .line 230
    aput v3, v5, v7

    move v7, v11

    move/from16 v3, v20

    move/from16 v10, v23

    move-object/from16 v12, v24

    move/from16 v15, v27

    move/from16 v9, v29

    const/4 v4, 0x1

    move v11, v1

    move/from16 v20, v2

    move/from16 v2, v26

    move-object/from16 v1, v30

    goto/16 :goto_193

    :cond_3e3
    move/from16 v29, v9

    move/from16 v23, v10

    move v1, v11

    move-object/from16 v24, v12

    move/from16 v27, v15

    .line 232
    new-instance v2, Lcom/google/android/gms/internal/ads/zzehp;

    .line 233
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeic;->zzbgr()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object v10

    const/4 v12, 0x0

    move-object v0, v5

    move-object v5, v2

    move-object v6, v0

    move-object/from16 v7, v24

    move/from16 v8, v29

    move/from16 v9, v23

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v19

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/ads/zzehp;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzehl;ZZ[IIILcom/google/android/gms/internal/ads/zzeht;Lcom/google/android/gms/internal/ads/zzegv;Lcom/google/android/gms/internal/ads/zzeiz;Lcom/google/android/gms/internal/ads/zzefq;Lcom/google/android/gms/internal/ads/zzehi;)V

    return-object v2

    .line 235
    :cond_40f
    check-cast v0, Lcom/google/android/gms/internal/ads/zzeiw;

    .line 236
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeiw;->zzbgp()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/zzegb$zze;->zziex:I

    .line 237
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    goto :goto_41e

    :goto_41d
    throw v0

    :goto_41e
    goto :goto_41d
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/ads/zzegi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/ads/zzegi;",
            "TUB;",
            "Lcom/google/android/gms/internal/ads/zzeiz<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3917
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    .line 3918
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzehp;->zzhf(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzehi;->zzao(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzehg;

    move-result-object p1

    .line 3919
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 3920
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3921
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/ads/zzegi;->zzi(I)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez p5, :cond_34

    .line 3923
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzeiz;->zzbhr()Ljava/lang/Object;

    move-result-object p5

    .line 3925
    :cond_34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzehd;->zza(Lcom/google/android/gms/internal/ads/zzehg;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 3926
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzfv(I)Lcom/google/android/gms/internal/ads/zzeez;

    move-result-object v1

    .line 3927
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeez;->zzbdl()Lcom/google/android/gms/internal/ads/zzefl;

    move-result-object v2

    .line 3928
    :try_start_48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzehd;->zza(Lcom/google/android/gms/internal/ads/zzefl;Lcom/google/android/gms/internal/ads/zzehg;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_5e

    .line 3932
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeez;->zzbdk()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/ads/zzeiz;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzeer;)V

    .line 3933
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :catch_5e
    move-exception p1

    .line 3931
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_65
    return-object p5
.end method

.method private final zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/ads/zzeiz<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3902
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v3, v0, p2

    .line 3904
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 3907
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    return-object p3

    .line 3910
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zzhg(I)Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object v5

    if-nez v5, :cond_1b

    return-object p3

    .line 3913
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzehi;->zzan(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 3915
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/ads/zzegi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 238
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 240
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 241
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 242
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 245
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_69

    :goto_68
    throw v1

    :goto_69
    goto :goto_68
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4006
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 4007
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzejw;->zzk(ILjava/lang/String;)V

    return-void

    .line 4008
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILcom/google/android/gms/internal/ads/zzeer;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzeiz;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeiz<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/ads/zzejw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2498
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeiz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzejw;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzejw;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_15

    .line 2493
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    .line 2494
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzehp;->zzhf(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/ads/zzehi;->zzao(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzehg;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    .line 2495
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/ads/zzehi;->zzap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2496
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILcom/google/android/gms/internal/ads/zzehg;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private final zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzeib;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4010
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzehp;->zzhj(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_13

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 4013
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdt()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 4014
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigy:Z

    if-eqz v0, :cond_21

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 4017
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeib;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_21
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 4020
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdu()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 539
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 542
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 544
    :cond_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 545
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    .line 547
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/zzegd;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 548
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 549
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    return-void

    :cond_27
    if-eqz p2, :cond_2f

    .line 551
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 552
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    :cond_2f
    return-void
.end method

.method private final zza(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 4079
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhi(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 4080
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;IIII)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 4032
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_a
    and-int p1, p4, p5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzeih;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 4004
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 4005
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzeih;->zzav(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzan(II)I
    .registers 4

    .line 4087
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigu:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigv:I

    if-gt p1, v0, :cond_d

    .line 4088
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zzao(II)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private final zzao(II)I
    .registers 7

    .line 4090
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-gt p2, v0, :cond_1e

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 4095
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_16

    return v2

    :cond_16
    if-ge p1, v3, :cond_1b

    add-int/lit8 v0, v1, -0x1

    goto :goto_7

    :cond_1b
    add-int/lit8 p2, v1, 0x1

    goto :goto_7

    :cond_1e
    const/4 p1, -0x1

    return p1
.end method

.method private static zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzejc;
    .registers 3

    .line 3013
    check-cast p0, Lcom/google/android/gms/internal/ads/zzegb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzieg:Lcom/google/android/gms/internal/ads/zzejc;

    .line 3014
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejc;->zzbhs()Lcom/google/android/gms/internal/ads/zzejc;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 3015
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejc;->zzbht()Lcom/google/android/gms/internal/ads/zzejc;

    move-result-object v0

    .line 3016
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzieg:Lcom/google/android/gms/internal/ads/zzejc;

    :cond_10
    return-object v0
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 4081
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhi(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 4082
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzejw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2168
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-eqz v3, :cond_23

    .line 2169
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzefq;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object v3

    .line 2171
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzeim;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 2173
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzefu;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2174
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_25

    :cond_23
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2177
    :goto_25
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    array-length v6, v6

    .line 2178
    sget-object v7, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_2f
    if-ge v10, v6, :cond_493

    .line 2180
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v13

    .line 2182
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v15, v14, v10

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v4, v16, 0x14

    .line 2188
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigz:Z

    if-nez v9, :cond_5e

    const/16 v9, 0x11

    if-gt v4, v9, :cond_5e

    add-int/lit8 v9, v10, 0x2

    .line 2189
    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    if-eq v8, v11, :cond_58

    int-to-long v11, v8

    .line 2193
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v8

    :cond_58
    ushr-int/lit8 v8, v9, 0x14

    const/4 v9, 0x1

    shl-int v8, v9, v8

    goto :goto_5f

    :cond_5e
    const/4 v8, 0x0

    :goto_5f
    if-eqz v5, :cond_7d

    .line 2195
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v15, :cond_7d

    .line 2196
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Lcom/google/android/gms/internal/ads/zzejw;Ljava/util/Map$Entry;)V

    .line 2197
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_5f

    :cond_7b
    const/4 v5, 0x0

    goto :goto_5f

    :cond_7d
    const v9, 0xfffff

    and-int/2addr v13, v9

    int-to-long v13, v13

    packed-switch v4, :pswitch_data_4b0

    :cond_85
    :goto_85
    const/4 v4, 0x0

    goto/16 :goto_48f

    .line 2482
    :pswitch_88
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2484
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v8

    .line 2485
    invoke-interface {v2, v15, v4, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto :goto_85

    .line 2480
    :pswitch_9a
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2481
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzi(IJ)V

    goto :goto_85

    .line 2478
    :pswitch_a8
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2479
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zzad(II)V

    goto :goto_85

    .line 2476
    :pswitch_b6
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2477
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzq(IJ)V

    goto :goto_85

    .line 2474
    :pswitch_c4
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2475
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zzal(II)V

    goto :goto_85

    .line 2472
    :pswitch_d2
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2473
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zzam(II)V

    goto :goto_85

    .line 2470
    :pswitch_e0
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2471
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zzac(II)V

    goto :goto_85

    .line 2468
    :pswitch_ee
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2469
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILcom/google/android/gms/internal/ads/zzeer;)V

    goto :goto_85

    .line 2464
    :pswitch_fe
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2465
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2466
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v8

    invoke-interface {v2, v15, v4, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_85

    .line 2462
    :pswitch_111
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2463
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_85

    .line 2460
    :pswitch_120
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2461
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzj(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IZ)V

    goto/16 :goto_85

    .line 2458
    :pswitch_12f
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2459
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zzae(II)V

    goto/16 :goto_85

    .line 2456
    :pswitch_13e
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2457
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzj(IJ)V

    goto/16 :goto_85

    .line 2454
    :pswitch_14d
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2455
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zzab(II)V

    goto/16 :goto_85

    .line 2452
    :pswitch_15c
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2453
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IJ)V

    goto/16 :goto_85

    .line 2450
    :pswitch_16b
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2451
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzp(IJ)V

    goto/16 :goto_85

    .line 2448
    :pswitch_17a
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2449
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzg(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zza(IF)V

    goto/16 :goto_85

    .line 2446
    :pswitch_189
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2447
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ID)V

    goto/16 :goto_85

    .line 2444
    :pswitch_198
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzejw;ILjava/lang/Object;I)V

    goto/16 :goto_85

    .line 2438
    :pswitch_1a1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2440
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2441
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v13

    .line 2442
    invoke-static {v4, v8, v2, v13}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_85

    .line 2432
    :pswitch_1b4
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2433
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x1

    .line 2434
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_1c4
    const/4 v15, 0x1

    .line 2426
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2427
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2428
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_1d4
    const/4 v15, 0x1

    .line 2420
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2421
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2422
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_1e4
    const/4 v15, 0x1

    .line 2414
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2415
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2416
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_1f4
    const/4 v15, 0x1

    .line 2408
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2409
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2410
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_204
    const/4 v15, 0x1

    .line 2402
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2403
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2404
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_214
    const/4 v15, 0x1

    .line 2396
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2397
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2398
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_224
    const/4 v15, 0x1

    .line 2390
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2391
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2392
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_234
    const/4 v15, 0x1

    .line 2384
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2385
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2386
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_244
    const/4 v15, 0x1

    .line 2378
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2379
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2380
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_254
    const/4 v15, 0x1

    .line 2372
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2373
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2374
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_264
    const/4 v15, 0x1

    .line 2366
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2367
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2368
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_274
    const/4 v15, 0x1

    .line 2360
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2361
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2362
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_284
    const/4 v15, 0x1

    .line 2354
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2355
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2356
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    .line 2348
    :pswitch_294
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2349
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 2350
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_2a4
    const/4 v15, 0x0

    .line 2342
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2343
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2344
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_2b4
    const/4 v15, 0x0

    .line 2336
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2337
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2338
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_2c4
    const/4 v15, 0x0

    .line 2330
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2331
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2332
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_2d4
    const/4 v15, 0x0

    .line 2324
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2325
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2326
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_2e4
    const/4 v15, 0x0

    .line 2318
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2319
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2320
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    .line 2312
    :pswitch_2f4
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2313
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2314
    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_85

    .line 2304
    :pswitch_303
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2306
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2307
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v13

    .line 2308
    invoke-static {v4, v8, v2, v13}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_85

    .line 2298
    :pswitch_316
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2299
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2300
    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_85

    .line 2292
    :pswitch_325
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2293
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 2294
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_335
    const/4 v15, 0x0

    .line 2286
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2287
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2288
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_345
    const/4 v15, 0x0

    .line 2280
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2281
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2282
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_355
    const/4 v15, 0x0

    .line 2274
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2275
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2276
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_365
    const/4 v15, 0x0

    .line 2268
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2269
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2270
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_375
    const/4 v15, 0x0

    .line 2262
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2263
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2264
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_385
    const/4 v15, 0x0

    .line 2256
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2257
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2258
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_395
    const/4 v15, 0x0

    .line 2250
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v10

    .line 2251
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2252
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_85

    :pswitch_3a5
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2246
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v13

    .line 2247
    invoke-interface {v2, v15, v8, v13}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_48f

    :pswitch_3b6
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2243
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzi(IJ)V

    goto/16 :goto_48f

    :pswitch_3c3
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2241
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzad(II)V

    goto/16 :goto_48f

    :pswitch_3d0
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2239
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzq(IJ)V

    goto/16 :goto_48f

    :pswitch_3dd
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2237
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzal(II)V

    goto/16 :goto_48f

    :pswitch_3ea
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2235
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzam(II)V

    goto/16 :goto_48f

    :pswitch_3f7
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2233
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzac(II)V

    goto/16 :goto_48f

    :pswitch_404
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2231
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILcom/google/android/gms/internal/ads/zzeer;)V

    goto/16 :goto_48f

    :pswitch_413
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2227
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 2228
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v13

    invoke-interface {v2, v15, v8, v13}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_48f

    :pswitch_424
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2225
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v15, v8, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto :goto_48f

    :pswitch_430
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2222
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzejf;->zzm(Ljava/lang/Object;J)Z

    move-result v8

    .line 2223
    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IZ)V

    goto :goto_48f

    :pswitch_43c
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2219
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzae(II)V

    goto :goto_48f

    :pswitch_448
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2217
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzj(IJ)V

    goto :goto_48f

    :pswitch_454
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2215
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzab(II)V

    goto :goto_48f

    :pswitch_460
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2213
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IJ)V

    goto :goto_48f

    :pswitch_46c
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2211
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzp(IJ)V

    goto :goto_48f

    :pswitch_478
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2208
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzejf;->zzn(Ljava/lang/Object;J)F

    move-result v8

    .line 2209
    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zza(IF)V

    goto :goto_48f

    :pswitch_484
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 2204
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzejf;->zzo(Ljava/lang/Object;J)D

    move-result-wide v13

    .line 2205
    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ID)V

    :cond_48f
    :goto_48f
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_2f

    :cond_493
    :goto_493
    if-eqz v5, :cond_4aa

    .line 2488
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Lcom/google/android/gms/internal/ads/zzejw;Ljava/util/Map$Entry;)V

    .line 2489
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_493

    :cond_4a8
    const/4 v5, 0x0

    goto :goto_493

    .line 2490
    :cond_4aa
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzeiz;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    return-void

    :pswitch_data_4b0
    .packed-switch 0x0
        :pswitch_484
        :pswitch_478
        :pswitch_46c
        :pswitch_460
        :pswitch_454
        :pswitch_448
        :pswitch_43c
        :pswitch_430
        :pswitch_424
        :pswitch_413
        :pswitch_404
        :pswitch_3f7
        :pswitch_3ea
        :pswitch_3dd
        :pswitch_3d0
        :pswitch_3c3
        :pswitch_3b6
        :pswitch_3a5
        :pswitch_395
        :pswitch_385
        :pswitch_375
        :pswitch_365
        :pswitch_355
        :pswitch_345
        :pswitch_335
        :pswitch_325
        :pswitch_316
        :pswitch_303
        :pswitch_2f4
        :pswitch_2e4
        :pswitch_2d4
        :pswitch_2c4
        :pswitch_2b4
        :pswitch_2a4
        :pswitch_294
        :pswitch_284
        :pswitch_274
        :pswitch_264
        :pswitch_254
        :pswitch_244
        :pswitch_234
        :pswitch_224
        :pswitch_214
        :pswitch_204
        :pswitch_1f4
        :pswitch_1e4
        :pswitch_1d4
        :pswitch_1c4
        :pswitch_1b4
        :pswitch_1a1
        :pswitch_198
        :pswitch_189
        :pswitch_17a
        :pswitch_16b
        :pswitch_15c
        :pswitch_14d
        :pswitch_13e
        :pswitch_12f
        :pswitch_120
        :pswitch_111
        :pswitch_fe
        :pswitch_ee
        :pswitch_e0
        :pswitch_d2
        :pswitch_c4
        :pswitch_b6
        :pswitch_a8
        :pswitch_9a
        :pswitch_88
    .end packed-switch
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 554
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v0

    .line 556
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 561
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 563
    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 564
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2b

    if-eqz p2, :cond_2b

    .line 566
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzegd;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 567
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 568
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_2b
    if-eqz p2, :cond_33

    .line 570
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 571
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    :cond_33
    return-void
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 4030
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private static zze(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1218
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final zze(Ljava/lang/Object;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 4034
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zzhi(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_ec

    .line 4037
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_fa

    .line 4067
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4066
    :pswitch_2a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_31

    return v5

    :cond_31
    return v4

    .line 4065
    :pswitch_32
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3b

    return v5

    :cond_3b
    return v4

    .line 4064
    :pswitch_3c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_43

    return v5

    :cond_43
    return v4

    .line 4063
    :pswitch_44
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4d

    return v5

    :cond_4d
    return v4

    .line 4062
    :pswitch_4e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_55

    return v5

    :cond_55
    return v4

    .line 4061
    :pswitch_56
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5d

    return v5

    :cond_5d
    return v4

    .line 4060
    :pswitch_5e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_65

    return v5

    :cond_65
    return v4

    .line 4059
    :pswitch_66
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzeer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    return v5

    :cond_73
    return v4

    .line 4058
    :pswitch_74
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7b

    return v5

    :cond_7b
    return v4

    .line 4052
    :pswitch_7c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 4053
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8e

    .line 4054
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8d

    return v5

    :cond_8d
    return v4

    .line 4055
    :cond_8e
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzeer;

    if-eqz p2, :cond_9c

    .line 4056
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzeer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    return v5

    :cond_9b
    return v4

    .line 4057
    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4051
    :pswitch_a2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzm(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 4050
    :pswitch_a7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ae

    return v5

    :cond_ae
    return v4

    .line 4049
    :pswitch_af
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_b8

    return v5

    :cond_b8
    return v4

    .line 4048
    :pswitch_b9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_c0

    return v5

    :cond_c0
    return v4

    .line 4047
    :pswitch_c1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_ca

    return v5

    :cond_ca
    return v4

    .line 4046
    :pswitch_cb
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_d4

    return v5

    :cond_d4
    return v4

    .line 4045
    :pswitch_d5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzn(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_df

    return v5

    :cond_df
    return v4

    .line 4044
    :pswitch_e0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzo(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_eb

    return v5

    :cond_eb
    return v4

    :cond_ec
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    .line 4069
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_f8

    return v5

    :cond_f8
    return v4

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_d5
        :pswitch_cb
        :pswitch_c1
        :pswitch_b9
        :pswitch_af
        :pswitch_a7
        :pswitch_a2
        :pswitch_7c
        :pswitch_74
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_44
        :pswitch_3c
        :pswitch_32
        :pswitch_2a
    .end packed-switch
.end method

.method private static zzf(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 4025
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final zzf(Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 4070
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zzhi(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    :cond_11
    const/4 v2, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v2, p2

    .line 4076
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 4077
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static zzg(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 4026
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzh(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 4027
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;
    .registers 5

    .line 3526
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 3527
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigt:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeih;

    if-eqz v0, :cond_d

    return-object v0

    .line 3530
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeia;->zzbgz()Lcom/google/android/gms/internal/ads/zzeia;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigt:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeia;->zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v0

    .line 3531
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigt:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzhf(I)Ljava/lang/Object;
    .registers 3

    .line 3533
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigt:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzhg(I)Lcom/google/android/gms/internal/ads/zzegi;
    .registers 3

    .line 3534
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigt:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegi;

    return-object p1
.end method

.method private final zzhh(I)I
    .registers 3

    .line 4022
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzhi(I)I
    .registers 3

    .line 4023
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzhj(I)Z
    .registers 2

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private final zzhk(I)I
    .registers 3

    .line 4084
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigu:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigv:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    .line 4085
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzao(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private static zzi(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 4028
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzj(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 4029
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1c9

    .line 252
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_1f2

    goto/16 :goto_1c2

    .line 326
    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzhi(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 327
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 328
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_1c1

    .line 330
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 331
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 323
    :pswitch_3c
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 324
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1c2

    .line 320
    :pswitch_4a
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 321
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1c2

    .line 315
    :pswitch_58
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 316
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 317
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 312
    :pswitch_6e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 313
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto/16 :goto_1c1

    .line 309
    :pswitch_82
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 310
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 306
    :pswitch_94
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 307
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto/16 :goto_1c1

    .line 303
    :pswitch_a8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 304
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 300
    :pswitch_ba
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 301
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 297
    :pswitch_cc
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 298
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 293
    :pswitch_de
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 294
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 295
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 289
    :pswitch_f4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 290
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 291
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 285
    :pswitch_10a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 286
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 287
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 282
    :pswitch_120
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 283
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzm(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzm(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 279
    :pswitch_132
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 280
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 276
    :pswitch_144
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 277
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 273
    :pswitch_157
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 274
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto :goto_1c1

    .line 270
    :pswitch_168
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 271
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 267
    :pswitch_17b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 268
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 263
    :pswitch_18e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 264
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzn(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 265
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzn(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto :goto_1c1

    .line 259
    :pswitch_1a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 260
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 261
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zzo(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    :cond_1c1
    :goto_1c1
    const/4 v3, 0x0

    :cond_1c2
    :goto_1c2
    if-nez v3, :cond_1c5

    return v1

    :cond_1c5
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    .line 337
    :cond_1c9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzeiz;->zzax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc

    return v1

    .line 341
    :cond_1dc
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-eqz v0, :cond_1f1

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefq;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzefq;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object p2

    .line 344
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzefu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1f1
    return v3

    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_1a7
        :pswitch_18e
        :pswitch_17b
        :pswitch_168
        :pswitch_157
        :pswitch_144
        :pswitch_132
        :pswitch_120
        :pswitch_10a
        :pswitch_f4
        :pswitch_de
        :pswitch_cc
        :pswitch_ba
        :pswitch_a8
        :pswitch_94
        :pswitch_82
        :pswitch_6e
        :pswitch_58
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_3c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_22c

    .line 349
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v3

    .line 351
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_24c

    goto/16 :goto_228

    .line 447
    :pswitch_20
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 448
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 449
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 445
    :pswitch_32
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 446
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto/16 :goto_227

    .line 443
    :pswitch_44
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 444
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 441
    :pswitch_52
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 442
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto/16 :goto_227

    .line 439
    :pswitch_64
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 440
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 437
    :pswitch_72
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 438
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 435
    :pswitch_80
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 436
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 433
    :pswitch_8e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 434
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 429
    :pswitch_a0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 430
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 431
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 426
    :pswitch_b2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 428
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 424
    :pswitch_c6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 425
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzj(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzegd;->zzbu(Z)I

    move-result v3

    goto/16 :goto_227

    .line 422
    :pswitch_d8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 423
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 420
    :pswitch_e6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 421
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto/16 :goto_227

    .line 418
    :pswitch_f8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 419
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 416
    :pswitch_106
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 417
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto/16 :goto_227

    .line 414
    :pswitch_118
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 415
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto/16 :goto_227

    .line 412
    :pswitch_12a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 413
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzg(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_227

    .line 409
    :pswitch_13c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 411
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_152
    mul-int/lit8 v2, v2, 0x35

    .line 407
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    :pswitch_15e
    mul-int/lit8 v2, v2, 0x35

    .line 405
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 400
    :pswitch_16a
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c3

    .line 402
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1c3

    :pswitch_175
    mul-int/lit8 v2, v2, 0x35

    .line 397
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_181
    mul-int/lit8 v2, v2, 0x35

    .line 395
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_189
    mul-int/lit8 v2, v2, 0x35

    .line 393
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_195
    mul-int/lit8 v2, v2, 0x35

    .line 391
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_19d
    mul-int/lit8 v2, v2, 0x35

    .line 389
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_1a5
    mul-int/lit8 v2, v2, 0x35

    .line 387
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_1ad
    mul-int/lit8 v2, v2, 0x35

    .line 385
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 380
    :pswitch_1b9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c3

    .line 382
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1c3
    :goto_1c3
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_228

    :pswitch_1c7
    mul-int/lit8 v2, v2, 0x35

    .line 377
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_227

    :pswitch_1d4
    mul-int/lit8 v2, v2, 0x35

    .line 375
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzm(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzegd;->zzbu(Z)I

    move-result v3

    goto :goto_227

    :pswitch_1df
    mul-int/lit8 v2, v2, 0x35

    .line 373
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_227

    :pswitch_1e6
    mul-int/lit8 v2, v2, 0x35

    .line 371
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto :goto_227

    :pswitch_1f1
    mul-int/lit8 v2, v2, 0x35

    .line 369
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_227

    :pswitch_1f8
    mul-int/lit8 v2, v2, 0x35

    .line 367
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto :goto_227

    :pswitch_203
    mul-int/lit8 v2, v2, 0x35

    .line 365
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    goto :goto_227

    :pswitch_20e
    mul-int/lit8 v2, v2, 0x35

    .line 363
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzn(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_227

    :pswitch_219
    mul-int/lit8 v2, v2, 0x35

    .line 360
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzo(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 361
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzegd;->zzfr(J)I

    move-result v3

    :goto_227
    add-int/2addr v2, v3

    :cond_228
    :goto_228
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_22c
    mul-int/lit8 v2, v2, 0x35

    .line 451
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 452
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-eqz v0, :cond_24a

    mul-int/lit8 v2, v2, 0x35

    .line 453
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefq;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefu;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_24a
    return v2

    nop

    :pswitch_data_24c
    .packed-switch 0x0
        :pswitch_219
        :pswitch_20e
        :pswitch_203
        :pswitch_1f8
        :pswitch_1f1
        :pswitch_1e6
        :pswitch_1df
        :pswitch_1d4
        :pswitch_1c7
        :pswitch_1b9
        :pswitch_1ad
        :pswitch_1a5
        :pswitch_19d
        :pswitch_195
        :pswitch_189
        :pswitch_181
        :pswitch_175
        :pswitch_16a
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_152
        :pswitch_13c
        :pswitch_12a
        :pswitch_118
        :pswitch_106
        :pswitch_f8
        :pswitch_e6
        :pswitch_d8
        :pswitch_c6
        :pswitch_b2
        :pswitch_a0
        :pswitch_8e
        :pswitch_80
        :pswitch_72
        :pswitch_64
        :pswitch_52
        :pswitch_44
        :pswitch_32
        :pswitch_20
    .end packed-switch
.end method

.method public final newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihe:Lcom/google/android/gms/internal/ads/zzeht;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigw:Lcom/google/android/gms/internal/ads/zzehl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzeht;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzeem;)I
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/ads/zzeem;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 3535
    sget-object v10, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_19
    if-ge v0, v13, :cond_4cb

    add-int/lit8 v3, v0, 0x1

    .line 3542
    aget-byte v0, v12, v0

    if-gez v0, :cond_2a

    .line 3544
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/ads/zzeen;->zza(I[BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3545
    iget v3, v9, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    move v4, v3

    move v3, v0

    goto :goto_2b

    :cond_2a
    move v4, v0

    :goto_2b
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v1, :cond_38

    .line 3549
    div-int/2addr v2, v8

    invoke-direct {v15, v0, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzan(II)I

    move-result v1

    goto :goto_3c

    .line 3550
    :cond_38
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzhk(I)I

    move-result v1

    :goto_3c
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_4f

    move/from16 p3, v0

    move v2, v3

    move v8, v4

    move/from16 v22, v5

    move-object/from16 v26, v10

    move v7, v11

    const/16 v17, 0x0

    const/16 v18, -0x1

    goto/16 :goto_428

    .line 3554
    :cond_4f
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    add-int/lit8 v19, v2, 0x1

    aget v8, v1, v19

    const/high16 v19, 0xff00000

    and-int v19, v8, v19

    ushr-int/lit8 v11, v19, 0x14

    move/from16 v19, v4

    const v17, 0xfffff

    and-int v4, v8, v17

    int-to-long v12, v4

    const/16 v4, 0x11

    move/from16 v20, v8

    if-gt v11, v4, :cond_325

    add-int/lit8 v4, v2, 0x2

    .line 3562
    aget v1, v1, v4

    ushr-int/lit8 v4, v1, 0x14

    const/4 v8, 0x1

    shl-int v22, v8, v4

    const v4, 0xfffff

    and-int/2addr v1, v4

    if-eq v1, v6, :cond_85

    if-eq v6, v4, :cond_7e

    int-to-long v8, v6

    .line 3567
    invoke-virtual {v10, v14, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7e
    int-to-long v5, v1

    .line 3569
    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v8, v1

    goto :goto_86

    :cond_85
    move v8, v6

    :goto_86
    move v6, v5

    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_516

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    goto/16 :goto_316

    :pswitch_9c
    const/4 v5, 0x3

    if-ne v7, v5, :cond_e7

    shl-int/lit8 v1, v0, 0x3

    or-int/lit8 v5, v1, 0x4

    .line 3656
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v1

    move v9, v0

    move-object v0, v1

    const/16 v18, -0x1

    move-object/from16 v1, p2

    move v11, v2

    move v2, v3

    move/from16 v3, p4

    move/from16 v7, v19

    const v19, 0xfffff

    move v4, v5

    move-object/from16 v5, p6

    .line 3657
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;[BIIILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_c9

    move-object/from16 v4, p6

    .line 3659
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d8

    :cond_c9
    move-object/from16 v4, p6

    .line 3661
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    .line 3662
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzegd;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3663
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_d8
    or-int v5, v6, v22

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v7

    move v6, v8

    move v1, v9

    move v2, v11

    move/from16 v11, p5

    move-object v9, v4

    goto/16 :goto_19

    :cond_e7
    move v9, v0

    move v11, v2

    move/from16 v7, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 p3, v8

    move v8, v7

    goto/16 :goto_316

    :pswitch_f9
    move-object/from16 v4, p6

    move v9, v0

    move v11, v2

    move/from16 v5, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    if-nez v7, :cond_125

    move-wide v1, v12

    move-object/from16 v12, p2

    .line 3647
    invoke-static {v12, v3, v4}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v7

    move-wide/from16 v20, v1

    .line 3648
    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    .line 3649
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzefc;->zzfh(J)J

    move-result-wide v23

    move-object v0, v10

    move-wide/from16 v2, v20

    move-object/from16 v1, p1

    move-object v13, v4

    move/from16 p3, v8

    move v8, v5

    move-wide/from16 v4, v23

    .line 3650
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_2cc

    :cond_125
    move-object/from16 v12, p2

    move-object v13, v4

    move/from16 p3, v8

    move v8, v5

    goto/16 :goto_316

    :pswitch_12d
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_316

    .line 3640
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3641
    iget v1, v13, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    .line 3642
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzefc;->zzgb(I)I

    move-result v1

    .line 3643
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_30a

    :pswitch_14e
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_316

    .line 3631
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3632
    iget v1, v13, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    .line 3633
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzhg(I)Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object v2

    if-eqz v2, :cond_188

    .line 3634
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzegi;->zzi(I)Z

    move-result v2

    if-eqz v2, :cond_173

    goto :goto_188

    .line 3637
    :cond_173
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzehp;->zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzejc;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/ads/zzejc;->zzd(ILjava/lang/Object;)V

    move v5, v6

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v6, p3

    goto/16 :goto_312

    .line 3635
    :cond_188
    :goto_188
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_30a

    :pswitch_18d
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/4 v0, 0x2

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_316

    .line 3626
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/ads/zzeen;->zze([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3627
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_30a

    :pswitch_1ab
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/4 v0, 0x2

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_1e2

    .line 3615
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v0

    move/from16 v2, p4

    .line 3616
    invoke-static {v0, v12, v3, v2, v13}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;[BIILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_1d3

    .line 3618
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_25a

    .line 3620
    :cond_1d3
    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v13, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    .line 3621
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzegd;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3622
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_25a

    :cond_1e2
    move/from16 v2, p4

    goto/16 :goto_316

    :pswitch_1e6
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/4 v0, 0x2

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move/from16 v2, p4

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_316

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_206

    .line 3608
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/ads/zzeen;->zzc([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    goto :goto_20a

    .line 3609
    :cond_206
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/ads/zzeen;->zzd([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3610
    :goto_20a
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_25a

    :pswitch_210
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move/from16 v2, p4

    move-object/from16 v13, p6

    if-nez v7, :cond_316

    .line 3602
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    move v3, v0

    .line 3603
    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    const-wide/16 v20, 0x0

    cmp-long v7, v0, v20

    if-eqz v7, :cond_233

    const/4 v0, 0x1

    goto :goto_234

    :cond_233
    const/4 v0, 0x0

    :goto_234
    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JZ)V

    or-int v5, v6, v22

    move/from16 v6, p3

    move v0, v3

    goto :goto_25e

    :pswitch_23d
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move/from16 v2, p4

    move-object/from16 v13, p6

    if-ne v7, v1, :cond_316

    .line 3597
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/zzeen;->zzg([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    :goto_25a
    or-int v5, v6, v22

    move/from16 v6, p3

    :goto_25e
    move v3, v8

    move v1, v9

    move-object v9, v13

    move v13, v2

    move v2, v11

    goto/16 :goto_4c7

    :pswitch_265
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/4 v0, 0x1

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move/from16 v2, p4

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_316

    .line 3592
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/zzeen;->zzh([BI)J

    move-result-wide v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v7, v3

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_30a

    :pswitch_28c
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_316

    .line 3587
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3588
    iget v1, v13, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_30a

    :pswitch_2a9
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_316

    .line 3582
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v7

    .line 3583
    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_2cc
    or-int v5, v6, v22

    move/from16 v6, p3

    move v0, v7

    goto :goto_30e

    :pswitch_2d2
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v1, :cond_316

    .line 3577
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/zzeen;->zzj([BI)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v3, 0x4

    goto :goto_30a

    :pswitch_2ee
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/4 v0, 0x1

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_316

    .line 3572
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/zzeen;->zzi([BI)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    :goto_30a
    or-int v5, v6, v22

    move/from16 v6, p3

    :goto_30e
    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    :goto_312
    move/from16 v13, p4

    goto/16 :goto_4c7

    :cond_316
    :goto_316
    move/from16 v7, p5

    move v2, v3

    move/from16 v22, v6

    move-object/from16 v26, v10

    move/from16 v17, v11

    move/from16 v6, p3

    move/from16 p3, v9

    goto/16 :goto_428

    :cond_325
    move v4, v2

    move-wide v1, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v0

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_38c

    const/4 v0, 0x2

    if-ne v7, v0, :cond_37d

    .line 3668
    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegm;

    .line 3669
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzegm;->zzbcy()Z

    move-result v7

    if-nez v7, :cond_357

    .line 3670
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzegm;->size()I

    move-result v7

    if-nez v7, :cond_34e

    const/16 v7, 0xa

    goto :goto_350

    :cond_34e
    shl-int/lit8 v7, v7, 0x1

    .line 3673
    :goto_350
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzegm;->zzfs(I)Lcom/google/android/gms/internal/ads/zzegm;

    move-result-object v0

    .line 3674
    invoke-virtual {v10, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_357
    move-object v7, v0

    .line 3676
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move/from16 v17, v4

    move/from16 v4, p4

    move/from16 v22, v5

    move-object v5, v7

    move/from16 v23, v6

    move-object/from16 v6, p6

    .line 3677
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;I[BIILcom/google/android/gms/internal/ads/zzegm;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    move/from16 v11, p5

    move v3, v8

    move v1, v9

    move-object v9, v13

    move/from16 v2, v17

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v13, p4

    goto/16 :goto_19

    :cond_37d
    move/from16 v17, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move v15, v3

    move/from16 v19, v8

    move/from16 p3, v9

    move-object/from16 v26, v10

    goto/16 :goto_401

    :cond_38c
    move/from16 v17, v4

    move/from16 v22, v5

    move/from16 v23, v6

    const/16 v0, 0x31

    if-gt v11, v0, :cond_3d9

    move/from16 v6, v20

    int-to-long v5, v6

    move-object/from16 v0, p0

    move-wide/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v20, v5

    move v5, v8

    move v6, v9

    move/from16 v19, v8

    move/from16 v8, v17

    move/from16 p3, v9

    move-object/from16 v26, v10

    move-wide/from16 v9, v20

    move-wide/from16 v12, v24

    move-object/from16 v14, p6

    .line 3682
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    if-ne v0, v15, :cond_3bf

    goto/16 :goto_424

    :cond_3bf
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v10, v26

    goto/16 :goto_19

    :cond_3d9
    move-wide/from16 v24, v1

    move v15, v3

    move/from16 v19, v8

    move/from16 p3, v9

    move-object/from16 v26, v10

    move/from16 v6, v20

    const/16 v0, 0x32

    if-ne v11, v0, :cond_409

    const/4 v0, 0x2

    if-ne v7, v0, :cond_401

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move-wide/from16 v6, v24

    move-object/from16 v8, p6

    .line 3687
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    if-ne v0, v15, :cond_3bf

    goto :goto_424

    :cond_401
    :goto_401
    move/from16 v7, p5

    move v2, v15

    :goto_404
    move/from16 v8, v19

    move/from16 v6, v23

    goto :goto_428

    :cond_409
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move v8, v6

    move/from16 v6, p3

    move v9, v11

    move-wide/from16 v10, v24

    move/from16 v12, v17

    move-object/from16 v13, p6

    .line 3692
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    if-ne v0, v15, :cond_4af

    :goto_424
    move/from16 v7, p5

    move v2, v0

    goto :goto_404

    :goto_428
    if-ne v8, v7, :cond_437

    if-nez v7, :cond_42d

    goto :goto_437

    :cond_42d
    move-object/from16 v9, p0

    move-object/from16 v12, p1

    move v0, v2

    move v3, v8

    move/from16 v5, v22

    goto/16 :goto_4d4

    :cond_437
    :goto_437
    move-object/from16 v9, p0

    .line 3695
    iget-boolean v0, v9, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-eqz v0, :cond_488

    move-object/from16 v10, p6

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzeem;->zzhzr:Lcom/google/android/gms/internal/ads/zzefo;

    .line 3696
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefo;->zzbeq()Lcom/google/android/gms/internal/ads/zzefo;

    move-result-object v1

    if-eq v0, v1, :cond_483

    .line 3697
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzehp;->zzigw:Lcom/google/android/gms/internal/ads/zzehl;

    .line 3699
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzeem;->zzhzr:Lcom/google/android/gms/internal/ads/zzefo;

    move/from16 v11, p3

    .line 3700
    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/ads/zzefo;->zza(Lcom/google/android/gms/internal/ads/zzehl;I)Lcom/google/android/gms/internal/ads/zzegb$zzf;

    move-result-object v0

    if-nez v0, :cond_473

    .line 3703
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzehp;->zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzejc;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 3704
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeen;->zza(I[BIILcom/google/android/gms/internal/ads/zzejc;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move-object v15, v9

    move-object v9, v10

    move v1, v11

    move/from16 v2, v17

    move/from16 v5, v22

    move-object/from16 v10, v26

    goto :goto_4ac

    :cond_473
    move-object/from16 v12, p1

    .line 3705
    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegb$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegb$zzd;->zzbfr()Lcom/google/android/gms/internal/ads/zzefu;

    .line 3707
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzegb$zzd;->zzien:Lcom/google/android/gms/internal/ads/zzefu;

    .line 3708
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_483
    move-object/from16 v12, p1

    move/from16 v11, p3

    goto :goto_48e

    :cond_488
    move-object/from16 v12, p1

    move/from16 v11, p3

    move-object/from16 v10, p6

    .line 3711
    :goto_48e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzehp;->zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzejc;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 3712
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeen;->zza(I[BIILcom/google/android/gms/internal/ads/zzejc;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    move/from16 v13, p4

    move v3, v8

    move-object v15, v9

    move-object v9, v10

    move v1, v11

    move-object v14, v12

    move/from16 v2, v17

    move/from16 v5, v22

    move-object/from16 v10, v26

    move-object/from16 v12, p2

    :goto_4ac
    move v11, v7

    goto/16 :goto_19

    :cond_4af
    move/from16 v11, p3

    move/from16 v8, v19

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move v3, v8

    move v1, v11

    move/from16 v2, v17

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v10, v26

    :goto_4c7
    move/from16 v11, p5

    goto/16 :goto_19

    :cond_4cb
    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v26, v10

    move v7, v11

    move-object v12, v14

    move-object v9, v15

    :goto_4d4
    const v1, 0xfffff

    if-eq v6, v1, :cond_4df

    int-to-long v1, v6

    move-object/from16 v4, v26

    .line 3715
    invoke-virtual {v4, v12, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4df
    const/4 v1, 0x0

    .line 3717
    iget v2, v9, Lcom/google/android/gms/internal/ads/zzehp;->zzihc:I

    :goto_4e2
    iget v4, v9, Lcom/google/android/gms/internal/ads/zzehp;->zzihd:I

    if-ge v2, v4, :cond_4f5

    .line 3718
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    aget v4, v4, v2

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    .line 3719
    invoke-direct {v9, v12, v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzejc;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e2

    :cond_4f5
    if-eqz v1, :cond_4fc

    .line 3722
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    .line 3723
    invoke-virtual {v2, v12, v1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4fc
    if-nez v7, :cond_508

    move/from16 v1, p4

    if-ne v0, v1, :cond_503

    goto :goto_50e

    .line 3726
    :cond_503
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgb()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v0

    throw v0

    :cond_508
    move/from16 v1, p4

    if-gt v0, v1, :cond_50f

    if-ne v3, v7, :cond_50f

    :goto_50e
    return v0

    .line 3728
    :cond_50f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgb()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v0

    goto :goto_515

    :goto_514
    throw v0

    :goto_515
    goto :goto_514

    :pswitch_data_516
    .packed-switch 0x0
        :pswitch_2ee
        :pswitch_2d2
        :pswitch_2a9
        :pswitch_2a9
        :pswitch_28c
        :pswitch_265
        :pswitch_23d
        :pswitch_210
        :pswitch_1e6
        :pswitch_1ab
        :pswitch_18d
        :pswitch_28c
        :pswitch_14e
        :pswitch_23d
        :pswitch_265
        :pswitch_12d
        :pswitch_f9
        :pswitch_9c
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzefo;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzeib;",
            "Lcom/google/android/gms/internal/ads/zzefo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_5dc

    .line 2502
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    move-object v1, v0

    move-object v10, v1

    .line 2505
    :cond_9
    :goto_9
    :try_start_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbek()I

    move-result v2

    .line 2506
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzhk(I)I

    move-result v3
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_5c4

    if-gez v3, :cond_77

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2f

    .line 2509
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihc:I

    :goto_1a
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihd:I

    if-ge p2, p3, :cond_29

    .line 2510
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    aget p3, p3, p2

    .line 2511
    invoke-direct {p0, p1, p3, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    :cond_29
    if-eqz v10, :cond_2e

    .line 2514
    invoke-virtual {v8, p1, v10}, Lcom/google/android/gms/internal/ads/zzeiz;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    return-void

    .line 2516
    :cond_2f
    :try_start_2f
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-nez v3, :cond_35

    move-object v3, v0

    goto :goto_3c

    .line 2518
    :cond_35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigw:Lcom/google/android/gms/internal/ads/zzehl;

    invoke-virtual {v9, p3, v3, v2}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Lcom/google/android/gms/internal/ads/zzefo;Lcom/google/android/gms/internal/ads/zzehl;I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    :goto_3c
    if-eqz v3, :cond_51

    if-nez v1, :cond_44

    .line 2521
    invoke-virtual {v9, p1}, Lcom/google/android/gms/internal/ads/zzefq;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object v1

    :cond_44
    move-object v11, v1

    move-object v1, v9

    move-object v2, p2

    move-object v4, p3

    move-object v5, v11

    move-object v6, v10

    move-object v7, v8

    .line 2523
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Lcom/google/android/gms/internal/ads/zzeib;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzefo;Lcom/google/android/gms/internal/ads/zzefu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v11

    goto :goto_9

    .line 2525
    :cond_51
    invoke-virtual {v8, p2}, Lcom/google/android/gms/internal/ads/zzeiz;->zza(Lcom/google/android/gms/internal/ads/zzeib;)Z

    if-nez v10, :cond_5a

    .line 2527
    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2528
    :cond_5a
    invoke-virtual {v8, v10, p2}, Lcom/google/android/gms/internal/ads/zzeiz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeib;)Z

    move-result v2
    :try_end_5e
    .catchall {:try_start_2f .. :try_end_5e} :catchall_5c4

    if-nez v2, :cond_9

    .line 2529
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihc:I

    :goto_62
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihd:I

    if-ge p2, p3, :cond_71

    .line 2530
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    aget p3, p3, p2

    .line 2531
    invoke-direct {p0, p1, p3, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_62

    :cond_71
    if-eqz v10, :cond_76

    .line 2534
    invoke-virtual {v8, p1, v10}, Lcom/google/android/gms/internal/ads/zzeiz;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_76
    return-void

    .line 2536
    :cond_77
    :try_start_77
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v4
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_5c4

    const/high16 v5, 0xff00000

    and-int/2addr v5, v4

    ushr-int/lit8 v5, v5, 0x14

    const v6, 0xfffff

    packed-switch v5, :pswitch_data_5e0

    if-nez v10, :cond_580

    .line 2983
    :try_start_88
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeiz;->zzbhr()Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_580

    :pswitch_8e
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2978
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v6

    invoke-interface {p2, v6, p3}, Lcom/google/android/gms/internal/ads/zzeib;->zzb(Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzefo;)Ljava/lang/Object;

    move-result-object v6

    .line 2979
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2980
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_a0
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2971
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbea()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2972
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2973
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_b2
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2965
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdz()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2966
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2967
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_c4
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2959
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdy()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2960
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2961
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_d6
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2953
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdx()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2954
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2955
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    .line 2941
    :pswitch_e8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdw()I

    move-result v5

    .line 2942
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhg(I)Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object v7

    if-eqz v7, :cond_ff

    .line 2943
    invoke-interface {v7, v5}, Lcom/google/android/gms/internal/ads/zzegi;->zzi(I)Z

    move-result v7

    if-eqz v7, :cond_f9

    goto :goto_ff

    .line 2949
    :cond_f9
    invoke-static {v2, v5, v10, v8}, Lcom/google/android/gms/internal/ads/zzeij;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_9

    :cond_ff
    :goto_ff
    and-int/2addr v4, v6

    int-to-long v6, v4

    .line 2946
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2947
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_10d
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2937
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdv()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2938
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2939
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_11f
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2932
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdu()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2933
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    .line 2910
    :pswitch_12d
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_149

    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2913
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 2914
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v7

    .line 2915
    invoke-interface {p2, v7, p3}, Lcom/google/android/gms/internal/ads/zzeib;->zza(Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzefo;)Ljava/lang/Object;

    move-result-object v7

    .line 2916
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzegd;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2919
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_159

    :cond_149
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2924
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v6

    .line 2925
    invoke-interface {p2, v6, p3}, Lcom/google/android/gms/internal/ads/zzeib;->zza(Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzefo;)Ljava/lang/Object;

    move-result-object v6

    .line 2926
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2927
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    .line 2928
    :goto_159
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    .line 2907
    :pswitch_15e
    invoke-direct {p0, p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzeib;)V

    .line 2908
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_166
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2903
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbds()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 2904
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2905
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_178
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2897
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdr()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2898
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2899
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_18a
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2891
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdq()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2892
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2893
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_19c
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2885
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdp()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2886
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2887
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_1ae
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2879
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdn()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2880
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2881
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_1c0
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2873
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdo()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2874
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2875
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_1d2
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2867
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->readFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 2868
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2869
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_1e4
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 2861
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 2862
    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2863
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    .line 2841
    :pswitch_1f6
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhf(I)Ljava/lang/Object;

    move-result-object v2

    .line 2842
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v3

    and-int/2addr v3, v6

    int-to-long v3, v3

    .line 2845
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_210

    .line 2847
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/zzehi;->zzas(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2848
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_227

    .line 2849
    :cond_210
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/zzehi;->zzaq(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_227

    .line 2851
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzehi;->zzas(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2852
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzehi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    invoke-static {p1, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v6

    .line 2854
    :cond_227
    :goto_227
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    .line 2855
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzehi;->zzan(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    .line 2856
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzehi;->zzao(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzehg;

    move-result-object v2

    .line 2857
    invoke-interface {p2, v3, v2, p3}, Lcom/google/android/gms/internal/ads/zzeib;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzehg;Lcom/google/android/gms/internal/ads/zzefo;)V

    goto/16 :goto_9

    :pswitch_238
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2835
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v2

    .line 2837
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    .line 2838
    invoke-virtual {v3, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2839
    invoke-interface {p2, v3, v2, p3}, Lcom/google/android/gms/internal/ads/zzeib;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzefo;)V

    goto/16 :goto_9

    .line 2827
    :pswitch_24a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2829
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2830
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzz(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2822
    :pswitch_258
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2824
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2825
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzy(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2817
    :pswitch_266
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2819
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2820
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzx(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2812
    :pswitch_274
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2814
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2815
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzw(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2804
    :pswitch_282
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int/2addr v4, v6

    int-to-long v6, v4

    .line 2806
    invoke-virtual {v5, p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2807
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzeib;->zzv(Ljava/util/List;)V

    .line 2809
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhg(I)Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object v3

    .line 2810
    invoke-static {v2, v4, v3, v10, v8}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzegi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_9

    .line 2799
    :pswitch_297
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2801
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2802
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzu(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2794
    :pswitch_2a5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2796
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2797
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzr(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2789
    :pswitch_2b3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2791
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2792
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzq(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2784
    :pswitch_2c1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2786
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2787
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzp(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2779
    :pswitch_2cf
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2781
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2782
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzo(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2774
    :pswitch_2dd
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2776
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2777
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzm(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2769
    :pswitch_2eb
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2771
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2772
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzn(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2764
    :pswitch_2f9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2766
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2767
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzl(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2759
    :pswitch_307
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2761
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2762
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzk(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2754
    :pswitch_315
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2756
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2757
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzz(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2749
    :pswitch_323
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2751
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2752
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzy(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2744
    :pswitch_331
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2746
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2747
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzx(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2739
    :pswitch_33f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2741
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2742
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzw(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2731
    :pswitch_34d
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int/2addr v4, v6

    int-to-long v6, v4

    .line 2733
    invoke-virtual {v5, p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2734
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzeib;->zzv(Ljava/util/List;)V

    .line 2736
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhg(I)Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object v3

    .line 2737
    invoke-static {v2, v4, v3, v10, v8}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzegi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_9

    .line 2726
    :pswitch_362
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2728
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2729
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzu(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2721
    :pswitch_370
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2723
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2724
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzt(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2712
    :pswitch_37e
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v2

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2717
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    .line 2718
    invoke-virtual {v5, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2719
    invoke-interface {p2, v3, v2, p3}, Lcom/google/android/gms/internal/ads/zzeib;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzefo;)V

    goto/16 :goto_9

    .line 2702
    :pswitch_390
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzehp;->zzhj(I)Z

    move-result v2

    if-eqz v2, :cond_3a4

    .line 2703
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2705
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2706
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzs(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2707
    :cond_3a4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2709
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->readStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2696
    :pswitch_3b2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2698
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2699
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzr(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2691
    :pswitch_3c0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2693
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2694
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzq(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2686
    :pswitch_3ce
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2688
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2689
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzp(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2681
    :pswitch_3dc
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2683
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2684
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzo(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2676
    :pswitch_3ea
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2678
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2679
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzm(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2671
    :pswitch_3f8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2673
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2674
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzn(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2666
    :pswitch_406
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2668
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2669
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzl(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2661
    :pswitch_414
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 2663
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2664
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzeib;->zzk(Ljava/util/List;)V

    goto/16 :goto_9

    .line 2642
    :pswitch_422
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_440

    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2645
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 2646
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v3

    .line 2647
    invoke-interface {p2, v3, p3}, Lcom/google/android/gms/internal/ads/zzeib;->zzb(Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzefo;)Ljava/lang/Object;

    move-result-object v3

    .line 2648
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzegd;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2651
    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :cond_440
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2656
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v2

    .line 2657
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/ads/zzeib;->zzb(Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzefo;)Ljava/lang/Object;

    move-result-object v2

    .line 2658
    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2659
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_453
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2639
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbea()J

    move-result-wide v6

    invoke-static {p1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JJ)V

    .line 2640
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_462
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2634
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdz()I

    move-result v2

    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 2635
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_471
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2629
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdy()J

    move-result-wide v6

    invoke-static {p1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JJ)V

    .line 2630
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_480
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2624
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdx()I

    move-result v2

    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 2625
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    .line 2612
    :pswitch_48f
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdw()I

    move-result v5

    .line 2613
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhg(I)Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object v7

    if-eqz v7, :cond_4a6

    .line 2614
    invoke-interface {v7, v5}, Lcom/google/android/gms/internal/ads/zzegi;->zzi(I)Z

    move-result v7

    if-eqz v7, :cond_4a0

    goto :goto_4a6

    .line 2620
    :cond_4a0
    invoke-static {v2, v5, v10, v8}, Lcom/google/android/gms/internal/ads/zzeij;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_9

    :cond_4a6
    :goto_4a6
    and-int v2, v4, v6

    int-to-long v6, v2

    .line 2617
    invoke-static {p1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 2618
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_4b1
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2609
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdv()I

    move-result v2

    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 2610
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_4c0
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2604
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdu()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v2

    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2605
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    .line 2583
    :pswitch_4cf
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4ed

    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2586
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 2587
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v3

    .line 2588
    invoke-interface {p2, v3, p3}, Lcom/google/android/gms/internal/ads/zzeib;->zza(Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzefo;)Ljava/lang/Object;

    move-result-object v3

    .line 2589
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzegd;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2592
    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :cond_4ed
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2597
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v2

    .line 2598
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/ads/zzeib;->zza(Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzefo;)Ljava/lang/Object;

    move-result-object v2

    .line 2599
    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2600
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    .line 2580
    :pswitch_500
    invoke-direct {p0, p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzeib;)V

    .line 2581
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_508
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2577
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbds()Z

    move-result v2

    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JZ)V

    .line 2578
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_517
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2572
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdr()I

    move-result v2

    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 2573
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_526
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2567
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdq()J

    move-result-wide v6

    invoke-static {p1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JJ)V

    .line 2568
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_535
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2562
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdp()I

    move-result v2

    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 2563
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_544
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2557
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdn()J

    move-result-wide v6

    invoke-static {p1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JJ)V

    .line 2558
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_553
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2552
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->zzbdo()J

    move-result-wide v6

    invoke-static {p1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JJ)V

    .line 2553
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_562
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2547
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->readFloat()F

    move-result v2

    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JF)V

    .line 2548
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_571
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 2542
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeib;->readDouble()D

    move-result-wide v6

    invoke-static {p1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JD)V

    .line 2543
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    .line 2984
    :cond_580
    :goto_580
    invoke-virtual {v8, v10, p2}, Lcom/google/android/gms/internal/ads/zzeiz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeib;)Z

    move-result v2
    :try_end_584
    .catch Lcom/google/android/gms/internal/ads/zzego; {:try_start_88 .. :try_end_584} :catch_59d
    .catchall {:try_start_88 .. :try_end_584} :catchall_5c4

    if-nez v2, :cond_9

    .line 2985
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihc:I

    :goto_588
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihd:I

    if-ge p2, p3, :cond_597

    .line 2986
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    aget p3, p3, p2

    .line 2987
    invoke-direct {p0, p1, p3, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_588

    :cond_597
    if-eqz v10, :cond_59c

    .line 2990
    invoke-virtual {v8, p1, v10}, Lcom/google/android/gms/internal/ads/zzeiz;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59c
    return-void

    .line 2994
    :catch_59d
    :try_start_59d
    invoke-virtual {v8, p2}, Lcom/google/android/gms/internal/ads/zzeiz;->zza(Lcom/google/android/gms/internal/ads/zzeib;)Z

    if-nez v10, :cond_5a7

    .line 2996
    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    .line 2997
    :cond_5a7
    invoke-virtual {v8, v10, p2}, Lcom/google/android/gms/internal/ads/zzeiz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeib;)Z

    move-result v2
    :try_end_5ab
    .catchall {:try_start_59d .. :try_end_5ab} :catchall_5c4

    if-nez v2, :cond_9

    .line 2998
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihc:I

    :goto_5af
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihd:I

    if-ge p2, p3, :cond_5be

    .line 2999
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    aget p3, p3, p2

    .line 3000
    invoke-direct {p0, p1, p3, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_5af

    :cond_5be
    if-eqz v10, :cond_5c3

    .line 3003
    invoke-virtual {v8, p1, v10}, Lcom/google/android/gms/internal/ads/zzeiz;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c3
    return-void

    :catchall_5c4
    move-exception p2

    .line 3006
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihc:I

    :goto_5c7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihd:I

    if-ge p3, v0, :cond_5d6

    .line 3007
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    aget v0, v0, p3

    .line 3008
    invoke-direct {p0, p1, v0, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeiz;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p3, p3, 0x1

    goto :goto_5c7

    :cond_5d6
    if-eqz v10, :cond_5db

    .line 3011
    invoke-virtual {v8, p1, v10}, Lcom/google/android/gms/internal/ads/zzeiz;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3012
    :cond_5db
    throw p2

    .line 2501
    :cond_5dc
    goto :goto_5de

    :goto_5dd
    throw v0

    :goto_5de
    goto :goto_5dd

    nop

    :pswitch_data_5e0
    .packed-switch 0x0
        :pswitch_571
        :pswitch_562
        :pswitch_553
        :pswitch_544
        :pswitch_535
        :pswitch_526
        :pswitch_517
        :pswitch_508
        :pswitch_500
        :pswitch_4cf
        :pswitch_4c0
        :pswitch_4b1
        :pswitch_48f
        :pswitch_480
        :pswitch_471
        :pswitch_462
        :pswitch_453
        :pswitch_422
        :pswitch_414
        :pswitch_406
        :pswitch_3f8
        :pswitch_3ea
        :pswitch_3dc
        :pswitch_3ce
        :pswitch_3c0
        :pswitch_3b2
        :pswitch_390
        :pswitch_37e
        :pswitch_370
        :pswitch_362
        :pswitch_34d
        :pswitch_33f
        :pswitch_331
        :pswitch_323
        :pswitch_315
        :pswitch_307
        :pswitch_2f9
        :pswitch_2eb
        :pswitch_2dd
        :pswitch_2cf
        :pswitch_2c1
        :pswitch_2b3
        :pswitch_2a5
        :pswitch_297
        :pswitch_282
        :pswitch_274
        :pswitch_266
        :pswitch_258
        :pswitch_24a
        :pswitch_238
        :pswitch_1f6
        :pswitch_1e4
        :pswitch_1d2
        :pswitch_1c0
        :pswitch_1ae
        :pswitch_19c
        :pswitch_18a
        :pswitch_178
        :pswitch_166
        :pswitch_15e
        :pswitch_12d
        :pswitch_11f
        :pswitch_10d
        :pswitch_e8
        :pswitch_d6
        :pswitch_c4
        :pswitch_b2
        :pswitch_a0
        :pswitch_8e
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzejw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1219
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzejw;->zzbep()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/zzegb$zze;->zzifa:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_529

    .line 1221
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzeiz;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    .line 1224
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-eqz v0, :cond_32

    .line 1225
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefq;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object v0

    .line 1227
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeim;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1229
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefu;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_34

    :cond_32
    move-object v0, v3

    move-object v1, v0

    .line 1231
    :goto_34
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_39
    if-ltz v7, :cond_511

    .line 1232
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v8

    .line 1234
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    :goto_43
    if-eqz v1, :cond_61

    .line 1236
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_61

    .line 1237
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Lcom/google/android/gms/internal/ads/zzejw;Ljava/util/Map$Entry;)V

    .line 1238
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_43

    :cond_5f
    move-object v1, v3

    goto :goto_43

    :cond_61
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_a48

    goto/16 :goto_50d

    .line 1680
    :pswitch_6a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1683
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1684
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v10

    .line 1685
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_50d

    .line 1676
    :pswitch_7f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1679
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzi(IJ)V

    goto/16 :goto_50d

    .line 1672
    :pswitch_90
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1675
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzad(II)V

    goto/16 :goto_50d

    .line 1668
    :pswitch_a1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1671
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzq(IJ)V

    goto/16 :goto_50d

    .line 1664
    :pswitch_b2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1667
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzal(II)V

    goto/16 :goto_50d

    .line 1660
    :pswitch_c3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1663
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzam(II)V

    goto/16 :goto_50d

    .line 1656
    :pswitch_d4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1659
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzac(II)V

    goto/16 :goto_50d

    .line 1651
    :pswitch_e5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1654
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzeer;

    .line 1655
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILcom/google/android/gms/internal/ads/zzeer;)V

    goto/16 :goto_50d

    .line 1645
    :pswitch_f8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1648
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1649
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_50d

    .line 1641
    :pswitch_10d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1644
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_50d

    .line 1637
    :pswitch_11e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1640
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzj(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IZ)V

    goto/16 :goto_50d

    .line 1633
    :pswitch_12f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1636
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzae(II)V

    goto/16 :goto_50d

    .line 1629
    :pswitch_140
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1632
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzj(IJ)V

    goto/16 :goto_50d

    .line 1625
    :pswitch_151
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1628
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzab(II)V

    goto/16 :goto_50d

    .line 1621
    :pswitch_162
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1624
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IJ)V

    goto/16 :goto_50d

    .line 1617
    :pswitch_173
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1620
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzp(IJ)V

    goto/16 :goto_50d

    .line 1613
    :pswitch_184
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1616
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzg(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zza(IF)V

    goto/16 :goto_50d

    .line 1609
    :pswitch_195
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1612
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ID)V

    goto/16 :goto_50d

    :pswitch_1a6
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1607
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzejw;ILjava/lang/Object;I)V

    goto/16 :goto_50d

    .line 1598
    :pswitch_1b1
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1601
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1602
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v10

    .line 1603
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_50d

    .line 1590
    :pswitch_1c6
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1593
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1594
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1582
    :pswitch_1d7
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1585
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1586
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1574
    :pswitch_1e8
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1577
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1578
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1566
    :pswitch_1f9
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1569
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1570
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1558
    :pswitch_20a
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1561
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1562
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1550
    :pswitch_21b
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1553
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1554
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1542
    :pswitch_22c
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1545
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1546
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1534
    :pswitch_23d
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1537
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1538
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1526
    :pswitch_24e
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1529
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1530
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1518
    :pswitch_25f
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1521
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1522
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1510
    :pswitch_270
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1513
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1514
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1502
    :pswitch_281
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1505
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1506
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1494
    :pswitch_292
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1497
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1498
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1486
    :pswitch_2a3
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1489
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1490
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1478
    :pswitch_2b4
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1481
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1482
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1470
    :pswitch_2c5
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1473
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1474
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1462
    :pswitch_2d6
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1465
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1466
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1454
    :pswitch_2e7
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1457
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1458
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1446
    :pswitch_2f8
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1449
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1450
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1438
    :pswitch_309
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1441
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1442
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1430
    :pswitch_31a
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1433
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1434
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_50d

    .line 1421
    :pswitch_32b
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1424
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1425
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v10

    .line 1426
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_50d

    .line 1413
    :pswitch_340
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1416
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1417
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_50d

    .line 1405
    :pswitch_351
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1408
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1409
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1397
    :pswitch_362
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1400
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1401
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1389
    :pswitch_373
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1392
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1393
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1381
    :pswitch_384
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1384
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1385
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1373
    :pswitch_395
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1376
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1377
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1365
    :pswitch_3a6
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1368
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1369
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1357
    :pswitch_3b7
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1360
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1361
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1349
    :pswitch_3c8
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1352
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1353
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_50d

    .line 1341
    :pswitch_3d9
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1344
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1345
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v10

    .line 1346
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_50d

    .line 1335
    :pswitch_3ee
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1339
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1340
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzi(IJ)V

    goto/16 :goto_50d

    .line 1329
    :pswitch_3ff
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1333
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1334
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzad(II)V

    goto/16 :goto_50d

    .line 1323
    :pswitch_410
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1327
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1328
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzq(IJ)V

    goto/16 :goto_50d

    .line 1317
    :pswitch_421
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1321
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1322
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzal(II)V

    goto/16 :goto_50d

    .line 1311
    :pswitch_432
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1315
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1316
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzam(II)V

    goto/16 :goto_50d

    .line 1305
    :pswitch_443
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1309
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1310
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzac(II)V

    goto/16 :goto_50d

    .line 1300
    :pswitch_454
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1303
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzeer;

    .line 1304
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILcom/google/android/gms/internal/ads/zzeer;)V

    goto/16 :goto_50d

    .line 1294
    :pswitch_467
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1297
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1298
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_50d

    .line 1290
    :pswitch_47c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1293
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_50d

    .line 1284
    :pswitch_48d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1288
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzm(Ljava/lang/Object;J)Z

    move-result v8

    .line 1289
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IZ)V

    goto/16 :goto_50d

    .line 1278
    :pswitch_49e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1282
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1283
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzae(II)V

    goto :goto_50d

    .line 1272
    :pswitch_4ae
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1276
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1277
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzj(IJ)V

    goto :goto_50d

    .line 1266
    :pswitch_4be
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1270
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1271
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zzab(II)V

    goto :goto_50d

    .line 1260
    :pswitch_4ce
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1264
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1265
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IJ)V

    goto :goto_50d

    .line 1254
    :pswitch_4de
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1258
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1259
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzp(IJ)V

    goto :goto_50d

    .line 1248
    :pswitch_4ee
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1252
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzn(Ljava/lang/Object;J)F

    move-result v8

    .line 1253
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzejw;->zza(IF)V

    goto :goto_50d

    .line 1242
    :pswitch_4fe
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1246
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzejf;->zzo(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1247
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ID)V

    :cond_50d
    :goto_50d
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_39

    :cond_511
    :goto_511
    if-eqz v1, :cond_528

    .line 1688
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Lcom/google/android/gms/internal/ads/zzejw;Ljava/util/Map$Entry;)V

    .line 1689
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_526

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_511

    :cond_526
    move-object v1, v3

    goto :goto_511

    :cond_528
    return-void

    .line 1691
    :cond_529
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigz:Z

    if-eqz v0, :cond_a44

    .line 1695
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-eqz v0, :cond_54a

    .line 1696
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefq;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object v0

    .line 1698
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeim;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54a

    .line 1700
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefu;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1701
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_54c

    :cond_54a
    move-object v0, v3

    move-object v1, v0

    .line 1702
    :goto_54c
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    array-length v7, v7

    const/4 v8, 0x0

    :goto_550
    if-ge v8, v7, :cond_a28

    .line 1704
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v9

    .line 1706
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    :goto_55a
    if-eqz v1, :cond_578

    .line 1708
    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_578

    .line 1709
    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v11, p2, v1}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Lcom/google/android/gms/internal/ads/zzejw;Ljava/util/Map$Entry;)V

    .line 1710
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_576

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_55a

    :cond_576
    move-object v1, v3

    goto :goto_55a

    :cond_578
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_ad6

    goto/16 :goto_a24

    .line 2152
    :pswitch_581
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2155
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2156
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v11

    .line 2157
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_a24

    .line 2148
    :pswitch_596
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2151
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzi(IJ)V

    goto/16 :goto_a24

    .line 2144
    :pswitch_5a7
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2147
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzad(II)V

    goto/16 :goto_a24

    .line 2140
    :pswitch_5b8
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2143
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzq(IJ)V

    goto/16 :goto_a24

    .line 2136
    :pswitch_5c9
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2139
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzal(II)V

    goto/16 :goto_a24

    .line 2132
    :pswitch_5da
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2135
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzam(II)V

    goto/16 :goto_a24

    .line 2128
    :pswitch_5eb
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2131
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzac(II)V

    goto/16 :goto_a24

    .line 2123
    :pswitch_5fc
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2126
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzeer;

    .line 2127
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILcom/google/android/gms/internal/ads/zzeer;)V

    goto/16 :goto_a24

    .line 2117
    :pswitch_60f
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2120
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2121
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_a24

    .line 2113
    :pswitch_624
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2116
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_a24

    .line 2109
    :pswitch_635
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2112
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzj(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IZ)V

    goto/16 :goto_a24

    .line 2105
    :pswitch_646
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2108
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzae(II)V

    goto/16 :goto_a24

    .line 2101
    :pswitch_657
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2104
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzj(IJ)V

    goto/16 :goto_a24

    .line 2097
    :pswitch_668
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2100
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzab(II)V

    goto/16 :goto_a24

    .line 2093
    :pswitch_679
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2096
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IJ)V

    goto/16 :goto_a24

    .line 2089
    :pswitch_68a
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2092
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzp(IJ)V

    goto/16 :goto_a24

    .line 2085
    :pswitch_69b
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2088
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzg(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zza(IF)V

    goto/16 :goto_a24

    .line 2081
    :pswitch_6ac
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2084
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ID)V

    goto/16 :goto_a24

    :pswitch_6bd
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2079
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzejw;ILjava/lang/Object;I)V

    goto/16 :goto_a24

    .line 2070
    :pswitch_6c8
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2073
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2074
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v11

    .line 2075
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_a24

    .line 2062
    :pswitch_6dd
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2065
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2066
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 2054
    :pswitch_6ee
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2057
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2058
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 2046
    :pswitch_6ff
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2049
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2050
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 2038
    :pswitch_710
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2041
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2042
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 2030
    :pswitch_721
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2033
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2034
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 2022
    :pswitch_732
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2025
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2026
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 2014
    :pswitch_743
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2017
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2018
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 2006
    :pswitch_754
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2009
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2010
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1998
    :pswitch_765
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2001
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2002
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1990
    :pswitch_776
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1993
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1994
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1982
    :pswitch_787
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1985
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1986
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1974
    :pswitch_798
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1977
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1978
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1966
    :pswitch_7a9
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1969
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1970
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1958
    :pswitch_7ba
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1961
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1962
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1950
    :pswitch_7cb
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1953
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1954
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1942
    :pswitch_7dc
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1945
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1946
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1934
    :pswitch_7ed
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1937
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1938
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1926
    :pswitch_7fe
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1929
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1930
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1918
    :pswitch_80f
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1921
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1922
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1910
    :pswitch_820
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1913
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1914
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1902
    :pswitch_831
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1905
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1906
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_a24

    .line 1893
    :pswitch_842
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1896
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1897
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v11

    .line 1898
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_a24

    .line 1885
    :pswitch_857
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1888
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1889
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_a24

    .line 1877
    :pswitch_868
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1880
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1881
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1869
    :pswitch_879
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1872
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1873
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1861
    :pswitch_88a
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1864
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1865
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1853
    :pswitch_89b
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1856
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1857
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1845
    :pswitch_8ac
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1848
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1849
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1837
    :pswitch_8bd
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1840
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1841
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1829
    :pswitch_8ce
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1832
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1833
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1821
    :pswitch_8df
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1824
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1825
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzejw;Z)V

    goto/16 :goto_a24

    .line 1813
    :pswitch_8f0
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1816
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1817
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v11

    .line 1818
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_a24

    .line 1807
    :pswitch_905
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1811
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1812
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzi(IJ)V

    goto/16 :goto_a24

    .line 1801
    :pswitch_916
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1805
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1806
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzad(II)V

    goto/16 :goto_a24

    .line 1795
    :pswitch_927
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1799
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1800
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzq(IJ)V

    goto/16 :goto_a24

    .line 1789
    :pswitch_938
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1793
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1794
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzal(II)V

    goto/16 :goto_a24

    .line 1783
    :pswitch_949
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1787
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1788
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzam(II)V

    goto/16 :goto_a24

    .line 1777
    :pswitch_95a
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1781
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1782
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzac(II)V

    goto/16 :goto_a24

    .line 1772
    :pswitch_96b
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1775
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzeer;

    .line 1776
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILcom/google/android/gms/internal/ads/zzeer;)V

    goto/16 :goto_a24

    .line 1766
    :pswitch_97e
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1769
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1770
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzejw;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)V

    goto/16 :goto_a24

    .line 1762
    :pswitch_993
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1765
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    goto/16 :goto_a24

    .line 1756
    :pswitch_9a4
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1760
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzm(Ljava/lang/Object;J)Z

    move-result v9

    .line 1761
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IZ)V

    goto/16 :goto_a24

    .line 1750
    :pswitch_9b5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1754
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1755
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzae(II)V

    goto :goto_a24

    .line 1744
    :pswitch_9c5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1748
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1749
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzj(IJ)V

    goto :goto_a24

    .line 1738
    :pswitch_9d5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1742
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1743
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zzab(II)V

    goto :goto_a24

    .line 1732
    :pswitch_9e5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1736
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1737
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(IJ)V

    goto :goto_a24

    .line 1726
    :pswitch_9f5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1730
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1731
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzp(IJ)V

    goto :goto_a24

    .line 1720
    :pswitch_a05
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1724
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzn(Ljava/lang/Object;J)F

    move-result v9

    .line 1725
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzejw;->zza(IF)V

    goto :goto_a24

    .line 1714
    :pswitch_a15
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1718
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzejf;->zzo(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1719
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzejw;->zzb(ID)V

    :cond_a24
    :goto_a24
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_550

    :cond_a28
    :goto_a28
    if-eqz v1, :cond_a3e

    .line 2160
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/ads/zzefq;->zza(Lcom/google/android/gms/internal/ads/zzejw;Ljava/util/Map$Entry;)V

    .line 2161
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_a28

    :cond_a3c
    move-object v1, v3

    goto :goto_a28

    .line 2162
    :cond_a3e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzeiz;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    return-void

    .line 2164
    :cond_a44
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzejw;)V

    return-void

    :pswitch_data_a48
    .packed-switch 0x0
        :pswitch_4fe
        :pswitch_4ee
        :pswitch_4de
        :pswitch_4ce
        :pswitch_4be
        :pswitch_4ae
        :pswitch_49e
        :pswitch_48d
        :pswitch_47c
        :pswitch_467
        :pswitch_454
        :pswitch_443
        :pswitch_432
        :pswitch_421
        :pswitch_410
        :pswitch_3ff
        :pswitch_3ee
        :pswitch_3d9
        :pswitch_3c8
        :pswitch_3b7
        :pswitch_3a6
        :pswitch_395
        :pswitch_384
        :pswitch_373
        :pswitch_362
        :pswitch_351
        :pswitch_340
        :pswitch_32b
        :pswitch_31a
        :pswitch_309
        :pswitch_2f8
        :pswitch_2e7
        :pswitch_2d6
        :pswitch_2c5
        :pswitch_2b4
        :pswitch_2a3
        :pswitch_292
        :pswitch_281
        :pswitch_270
        :pswitch_25f
        :pswitch_24e
        :pswitch_23d
        :pswitch_22c
        :pswitch_21b
        :pswitch_20a
        :pswitch_1f9
        :pswitch_1e8
        :pswitch_1d7
        :pswitch_1c6
        :pswitch_1b1
        :pswitch_1a6
        :pswitch_195
        :pswitch_184
        :pswitch_173
        :pswitch_162
        :pswitch_151
        :pswitch_140
        :pswitch_12f
        :pswitch_11e
        :pswitch_10d
        :pswitch_f8
        :pswitch_e5
        :pswitch_d4
        :pswitch_c3
        :pswitch_b2
        :pswitch_a1
        :pswitch_90
        :pswitch_7f
        :pswitch_6a
    .end packed-switch

    :pswitch_data_ad6
    .packed-switch 0x0
        :pswitch_a15
        :pswitch_a05
        :pswitch_9f5
        :pswitch_9e5
        :pswitch_9d5
        :pswitch_9c5
        :pswitch_9b5
        :pswitch_9a4
        :pswitch_993
        :pswitch_97e
        :pswitch_96b
        :pswitch_95a
        :pswitch_949
        :pswitch_938
        :pswitch_927
        :pswitch_916
        :pswitch_905
        :pswitch_8f0
        :pswitch_8df
        :pswitch_8ce
        :pswitch_8bd
        :pswitch_8ac
        :pswitch_89b
        :pswitch_88a
        :pswitch_879
        :pswitch_868
        :pswitch_857
        :pswitch_842
        :pswitch_831
        :pswitch_820
        :pswitch_80f
        :pswitch_7fe
        :pswitch_7ed
        :pswitch_7dc
        :pswitch_7cb
        :pswitch_7ba
        :pswitch_7a9
        :pswitch_798
        :pswitch_787
        :pswitch_776
        :pswitch_765
        :pswitch_754
        :pswitch_743
        :pswitch_732
        :pswitch_721
        :pswitch_710
        :pswitch_6ff
        :pswitch_6ee
        :pswitch_6dd
        :pswitch_6c8
        :pswitch_6bd
        :pswitch_6ac
        :pswitch_69b
        :pswitch_68a
        :pswitch_679
        :pswitch_668
        :pswitch_657
        :pswitch_646
        :pswitch_635
        :pswitch_624
        :pswitch_60f
        :pswitch_5fc
        :pswitch_5eb
        :pswitch_5da
        :pswitch_5c9
        :pswitch_5b8
        :pswitch_5a7
        :pswitch_596
        :pswitch_581
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzeem;)V
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzeem;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 3730
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzehp;->zzigz:Z

    if-eqz v0, :cond_38d

    .line 3732
    sget-object v9, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_1e
    if-ge v0, v13, :cond_370

    add-int/lit8 v3, v0, 0x1

    .line 3738
    aget-byte v0, v12, v0

    if-gez v0, :cond_30

    .line 3740
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zza(I[BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3741
    iget v3, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_33

    :cond_30
    move/from16 v17, v0

    move v4, v3

    :goto_33
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_40

    .line 3745
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzan(II)I

    move-result v0

    goto :goto_44

    .line 3746
    :cond_40
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/ads/zzehp;->zzhk(I)I

    move-result v0

    :goto_44
    move v2, v0

    if-ne v2, v10, :cond_52

    move v2, v4

    move/from16 v25, v5

    move-object/from16 v29, v9

    const/16 v18, 0x0

    :goto_4e
    const/16 v20, -0x1

    goto/16 :goto_34a

    .line 3750
    :cond_52
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    const/high16 v18, 0xff00000

    and-int v18, v1, v18

    ushr-int/lit8 v10, v18, 0x14

    move/from16 p3, v5

    and-int v5, v1, v8

    move-object/from16 v18, v9

    int-to-long v8, v5

    const/16 v5, 0x11

    move/from16 v21, v1

    if-gt v10, v5, :cond_242

    add-int/lit8 v5, v2, 0x2

    .line 3758
    aget v0, v0, v5

    ushr-int/lit8 v5, v0, 0x14

    const/4 v1, 0x1

    shl-int v23, v1, v5

    const v5, 0xfffff

    and-int/2addr v0, v5

    move/from16 v20, v2

    if-eq v0, v7, :cond_92

    if-eq v7, v5, :cond_85

    int-to-long v1, v7

    move-object/from16 v7, v18

    .line 3763
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_87

    :cond_85
    move-object/from16 v7, v18

    :goto_87
    if-eq v0, v5, :cond_8f

    int-to-long v1, v0

    .line 3765
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    :cond_8f
    move-object v2, v7

    move v7, v0

    goto :goto_94

    :cond_92
    move-object/from16 v2, v18

    :goto_94
    const/4 v0, 0x5

    packed-switch v10, :pswitch_data_3a0

    move/from16 v25, p3

    move v5, v4

    move/from16 v10, v20

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    goto/16 :goto_239

    :pswitch_a5
    if-nez v3, :cond_cc

    .line 3840
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v10

    .line 3841
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    .line 3842
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzefc;->zzfh(J)J

    move-result-wide v17

    move-object v0, v2

    move-object/from16 v1, p1

    move/from16 v4, v20

    move/from16 v20, v7

    move-object v7, v2

    move-wide v2, v8

    move/from16 v25, p3

    move v8, v4

    const v26, 0xfffff

    move-wide/from16 v4, v17

    .line 3843
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move-object v9, v7

    move v2, v8

    move v0, v10

    goto/16 :goto_28c

    :cond_cc
    move/from16 v25, p3

    move/from16 v8, v20

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    move v5, v4

    move v10, v8

    goto/16 :goto_239

    :pswitch_da
    move/from16 v25, p3

    move/from16 v10, v20

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_1ca

    .line 3833
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3834
    iget v1, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    .line 3835
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzefc;->zzgb(I)I

    move-result v1

    .line 3836
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_234

    :pswitch_f5
    move/from16 v25, p3

    move/from16 v10, v20

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_1ca

    .line 3828
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3829
    iget v1, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_234

    :pswitch_10c
    move/from16 v25, p3

    move/from16 v10, v20

    const/4 v0, 0x2

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_1ca

    .line 3823
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zze([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3824
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_234

    :pswitch_124
    move/from16 v25, p3

    move/from16 v10, v20

    const/4 v0, 0x2

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_1ca

    .line 3812
    invoke-direct {v15, v10}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v0

    .line 3813
    invoke-static {v0, v12, v4, v13, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;[BIILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3814
    invoke-virtual {v7, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_146

    .line 3816
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_234

    .line 3817
    :cond_146
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    .line 3818
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzegd;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3819
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_234

    :pswitch_151
    move/from16 v25, p3

    move/from16 v10, v20

    const/4 v0, 0x2

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_1ca

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_169

    .line 3805
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zzc([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    goto :goto_16d

    .line 3806
    :cond_169
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zzd([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3807
    :goto_16d
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzq:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_234

    :pswitch_174
    move/from16 v25, p3

    move/from16 v10, v20

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_1ca

    .line 3799
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3800
    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_18e

    const/4 v1, 0x1

    goto :goto_18f

    :cond_18e
    const/4 v1, 0x0

    :goto_18f
    invoke-static {v14, v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JZ)V

    goto/16 :goto_234

    :pswitch_194
    move/from16 v25, p3

    move/from16 v10, v20

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_1ca

    .line 3794
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzeen;->zzg([BI)I

    move-result v0

    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    goto/16 :goto_234

    :pswitch_1ab
    move/from16 v25, p3

    move/from16 v10, v20

    const/4 v0, 0x1

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_1ca

    .line 3789
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzeen;->zzh([BI)J

    move-result-wide v17

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_234

    :cond_1ca
    move v5, v4

    goto/16 :goto_239

    :pswitch_1cd
    move/from16 v25, p3

    move v5, v4

    move/from16 v10, v20

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_239

    .line 3784
    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zza([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    .line 3785
    iget v1, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzo:I

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_234

    :pswitch_1e4
    move/from16 v25, p3

    move v5, v4

    move/from16 v10, v20

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_239

    .line 3779
    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/ads/zzeen;->zzb([BILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v17

    .line 3780
    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzeem;->zzhzp:J

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move-object v9, v7

    move v2, v10

    move/from16 v0, v17

    goto/16 :goto_28c

    :pswitch_206
    move/from16 v25, p3

    move v5, v4

    move/from16 v10, v20

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_239

    .line 3774
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/ads/zzeen;->zzj([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v5, 0x4

    goto :goto_234

    :pswitch_21d
    move/from16 v25, p3

    move v5, v4

    move/from16 v10, v20

    const/4 v0, 0x1

    const v26, 0xfffff

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_239

    .line 3769
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/ads/zzeen;->zzi([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v5, 0x8

    :goto_234
    or-int v6, v6, v23

    move-object v9, v7

    move v2, v10

    goto :goto_28c

    :cond_239
    :goto_239
    move v2, v5

    move-object/from16 v29, v7

    move/from16 v18, v10

    move/from16 v7, v20

    goto/16 :goto_4e

    :cond_242
    move/from16 v25, p3

    move v5, v4

    move/from16 v20, v7

    move-object/from16 v7, v18

    const v26, 0xfffff

    move v4, v2

    const/16 v0, 0x1b

    if-ne v10, v0, :cond_29f

    const/4 v0, 0x2

    if-ne v3, v0, :cond_292

    .line 3848
    invoke-virtual {v7, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegm;

    .line 3849
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzegm;->zzbcy()Z

    move-result v1

    if-nez v1, :cond_272

    .line 3850
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzegm;->size()I

    move-result v1

    if-nez v1, :cond_269

    const/16 v1, 0xa

    goto :goto_26b

    :cond_269
    shl-int/lit8 v1, v1, 0x1

    .line 3853
    :goto_26b
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzegm;->zzfs(I)Lcom/google/android/gms/internal/ads/zzegm;

    move-result-object v0

    .line 3854
    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_272
    move-object v8, v0

    .line 3856
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v5

    move/from16 v18, v4

    move/from16 v4, p4

    move-object v5, v8

    move v8, v6

    move-object/from16 v6, p5

    .line 3857
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeih;I[BIILcom/google/android/gms/internal/ads/zzegm;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    move-object v9, v7

    move v6, v8

    move/from16 v2, v18

    :goto_28c
    move/from16 v7, v20

    move/from16 v1, v25

    goto/16 :goto_36a

    :cond_292
    move/from16 v18, v4

    move v15, v5

    move/from16 v27, v6

    move-object/from16 v29, v7

    move/from16 v28, v20

    const/16 v20, -0x1

    goto/16 :goto_326

    :cond_29f
    move/from16 v18, v4

    const/16 v0, 0x31

    if-gt v10, v0, :cond_2f4

    move/from16 v1, v21

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v3, v5

    move/from16 p3, v4

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, v17

    move/from16 v27, v6

    move/from16 v6, v25

    move/from16 v28, v20

    move-object/from16 v20, v7

    move/from16 v7, p3

    move-wide/from16 v23, v8

    const v9, 0xfffff

    move/from16 v8, v18

    move/from16 v19, v10

    move-object/from16 v29, v20

    const/16 v20, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v19

    move-wide/from16 v12, v23

    move-object/from16 v14, p5

    .line 3862
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    if-ne v0, v15, :cond_2e0

    goto/16 :goto_348

    :cond_2e0
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v18

    move/from16 v1, v25

    move/from16 v6, v27

    move/from16 v7, v28

    goto/16 :goto_368

    :cond_2f4
    move/from16 p3, v3

    move v15, v5

    move/from16 v27, v6

    move-object/from16 v29, v7

    move-wide/from16 v23, v8

    move/from16 v19, v10

    move/from16 v28, v20

    move/from16 v1, v21

    const/16 v20, -0x1

    const/16 v0, 0x32

    move/from16 v9, v19

    if-ne v9, v0, :cond_32c

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_326

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move-wide/from16 v6, v23

    move-object/from16 v8, p5

    .line 3867
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    if-ne v0, v15, :cond_2e0

    goto :goto_348

    :cond_326
    :goto_326
    move v2, v15

    :goto_327
    move/from16 v6, v27

    move/from16 v7, v28

    goto :goto_34a

    :cond_32c
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v25

    move-wide/from16 v10, v23

    move/from16 v12, v18

    move-object/from16 v13, p5

    .line 3872
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    if-ne v0, v15, :cond_2e0

    :goto_348
    move v2, v0

    goto :goto_327

    .line 3875
    :goto_34a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzehp;->zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzejc;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 3876
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeen;->zza(I[BIILcom/google/android/gms/internal/ads/zzejc;Lcom/google/android/gms/internal/ads/zzeem;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v18

    move/from16 v1, v25

    :goto_368
    move-object/from16 v9, v29

    :goto_36a
    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_1e

    :cond_370
    move/from16 v27, v6

    move-object/from16 v29, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_383

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v27

    move-object/from16 v4, v29

    .line 3879
    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_383
    move/from16 v4, p4

    if-ne v0, v4, :cond_388

    return-void

    .line 3881
    :cond_388
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegl;->zzbgb()Lcom/google/android/gms/internal/ads/zzegl;

    move-result-object v0

    throw v0

    :cond_38d
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 3883
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzeem;)I

    return-void

    :pswitch_data_3a0
    .packed-switch 0x0
        :pswitch_21d
        :pswitch_206
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1cd
        :pswitch_1ab
        :pswitch_194
        :pswitch_174
        :pswitch_151
        :pswitch_124
        :pswitch_10c
        :pswitch_1cd
        :pswitch_f5
        :pswitch_194
        :pswitch_1ab
        :pswitch_da
        :pswitch_a5
    .end packed-switch
.end method

.method public final zzaj(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3885
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihc:I

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihd:I

    if-ge v0, v1, :cond_25

    .line 3886
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3889
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 3891
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzehi;->zzar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3893
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    array-length v0, v0

    :goto_28
    if-ge v1, v0, :cond_37

    .line 3895
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzegv;->zzb(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 3897
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzaj(Ljava/lang/Object;)V

    .line 3898
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-eqz v0, :cond_45

    .line 3899
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefq;->zzaj(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public final zzat(Ljava/lang/Object;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 573
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigz:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const/4 v7, 0x1

    const v8, 0xfffff

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_4f2

    .line 574
    sget-object v2, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 576
    :goto_16
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4ea

    .line 577
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 582
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v3, v3, v12

    and-int/2addr v14, v8

    int-to-long v5, v14

    .line 587
    sget-object v14, Lcom/google/android/gms/internal/ads/zzefv;->zzicy:Lcom/google/android/gms/internal/ads/zzefv;

    .line 588
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzefv;->id()I

    move-result v14

    if-lt v15, v14, :cond_41

    sget-object v14, Lcom/google/android/gms/internal/ads/zzefv;->zzidl:Lcom/google/android/gms/internal/ads/zzefv;

    .line 589
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzefv;->id()I

    move-result v14

    if-gt v15, v14, :cond_41

    .line 590
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v8

    goto :goto_42

    :cond_41
    const/4 v14, 0x0

    :goto_42
    packed-switch v15, :pswitch_data_a82

    goto/16 :goto_4e4

    .line 867
    :pswitch_47
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 869
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzehl;

    .line 870
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v6

    .line 871
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzehl;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v3

    goto/16 :goto_3c9

    .line 865
    :pswitch_5d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 866
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzefl;->zzm(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 863
    :pswitch_6d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 864
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzah(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 861
    :pswitch_7d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 862
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzo(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 859
    :pswitch_89
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 860
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzefl;->zzaj(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 857
    :pswitch_95
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 858
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzak(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 855
    :pswitch_a5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 856
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzag(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 851
    :pswitch_b5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 853
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzeer;

    .line 854
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzeer;)I

    move-result v3

    goto/16 :goto_3c9

    .line 847
    :pswitch_c7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 848
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 849
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v3

    goto/16 :goto_3c9

    .line 841
    :pswitch_db
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 842
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 843
    instance-of v6, v5, Lcom/google/android/gms/internal/ads/zzeer;

    if-eqz v6, :cond_f1

    .line 844
    check-cast v5, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzeer;)I

    move-result v3

    goto/16 :goto_3c9

    .line 845
    :cond_f1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzl(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3c9

    .line 839
    :pswitch_f9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 840
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzefl;->zzi(IZ)I

    move-result v3

    goto/16 :goto_3c9

    .line 837
    :pswitch_105
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 838
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzefl;->zzai(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 835
    :pswitch_111
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 836
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzn(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 833
    :pswitch_11d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 834
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzaf(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 831
    :pswitch_12d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 832
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzefl;->zzl(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 829
    :pswitch_13d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 830
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzefl;->zzk(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 827
    :pswitch_14d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 828
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzb(IF)I

    move-result v3

    goto/16 :goto_3c9

    .line 825
    :pswitch_159
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    const-wide/16 v5, 0x0

    .line 826
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ID)I

    move-result v3

    goto/16 :goto_3c9

    .line 821
    :pswitch_167
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    .line 822
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhf(I)Ljava/lang/Object;

    move-result-object v6

    .line 823
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzehi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3c9

    .line 818
    :pswitch_177
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v6

    .line 819
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzeij;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v3

    goto/16 :goto_3c9

    .line 809
    :pswitch_185
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 810
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzac(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 812
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_199

    int-to-long v14, v14

    .line 813
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 815
    :cond_199
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 816
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto/16 :goto_324

    .line 800
    :pswitch_1a3
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 801
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzag(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 803
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_1b7

    int-to-long v14, v14

    .line 804
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 806
    :cond_1b7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 807
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto/16 :goto_324

    .line 791
    :pswitch_1c1
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 792
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzai(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 794
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_1d5

    int-to-long v14, v14

    .line 795
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 797
    :cond_1d5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 798
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto/16 :goto_324

    .line 782
    :pswitch_1df
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 783
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzah(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 785
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_1f3

    int-to-long v14, v14

    .line 786
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 788
    :cond_1f3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 789
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto/16 :goto_324

    .line 773
    :pswitch_1fd
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 774
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzad(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 776
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_211

    int-to-long v14, v14

    .line 777
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 779
    :cond_211
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 780
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto/16 :goto_324

    .line 764
    :pswitch_21b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 765
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzaf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 767
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_22f

    int-to-long v14, v14

    .line 768
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 770
    :cond_22f
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 771
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto/16 :goto_324

    .line 755
    :pswitch_239
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 756
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzaj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 758
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_24d

    int-to-long v14, v14

    .line 759
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 761
    :cond_24d
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 762
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto/16 :goto_324

    .line 746
    :pswitch_257
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 747
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzah(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 749
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_26b

    int-to-long v14, v14

    .line 750
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 752
    :cond_26b
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 753
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto/16 :goto_324

    .line 737
    :pswitch_275
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 738
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzai(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 740
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_289

    int-to-long v14, v14

    .line 741
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 743
    :cond_289
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 744
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto/16 :goto_324

    .line 728
    :pswitch_293
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 729
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzae(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 731
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_2a7

    int-to-long v14, v14

    .line 732
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 734
    :cond_2a7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 735
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto/16 :goto_324

    .line 719
    :pswitch_2b1
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 720
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzab(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 722
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_2c5

    int-to-long v14, v14

    .line 723
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 725
    :cond_2c5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 726
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto :goto_324

    .line 710
    :pswitch_2ce
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 711
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzaa(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 713
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_2e2

    int-to-long v14, v14

    .line 714
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 716
    :cond_2e2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 717
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto :goto_324

    .line 701
    :pswitch_2eb
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 702
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzah(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 704
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_2ff

    int-to-long v14, v14

    .line 705
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 707
    :cond_2ff
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 708
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    goto :goto_324

    .line 692
    :pswitch_308
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 693
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzai(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 695
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v6, :cond_31c

    int-to-long v14, v14

    .line 696
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 698
    :cond_31c
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v3

    .line 699
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v6

    :goto_324
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3c9

    .line 689
    :pswitch_328
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzq(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 685
    :pswitch_332
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 686
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzu(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 682
    :pswitch_33c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 680
    :pswitch_346
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 677
    :pswitch_350
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 678
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzr(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 673
    :pswitch_35a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 674
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzt(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 669
    :pswitch_363
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 670
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzd(ILjava/util/List;)I

    move-result v3

    goto :goto_3c9

    .line 665
    :pswitch_36c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v6

    .line 666
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v3

    goto :goto_3c9

    .line 662
    :pswitch_379
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/util/List;)I

    move-result v3

    goto :goto_3c9

    .line 660
    :pswitch_382
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzx(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 658
    :pswitch_38b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 656
    :pswitch_394
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 653
    :pswitch_39d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 654
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzs(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 650
    :pswitch_3a6
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzp(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 647
    :pswitch_3af
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzo(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 644
    :pswitch_3b8
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 642
    :pswitch_3c1
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzeij;->zzw(ILjava/util/List;Z)I

    move-result v3

    :goto_3c9
    add-int/2addr v13, v3

    goto/16 :goto_4e4

    .line 637
    :pswitch_3cc
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 639
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzehl;

    .line 640
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v6

    .line 641
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzehl;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v3

    goto :goto_3c9

    .line 634
    :pswitch_3e1
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 636
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzefl;->zzm(IJ)I

    move-result v3

    goto :goto_3c9

    .line 632
    :pswitch_3f0
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 633
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzah(II)I

    move-result v3

    goto :goto_3c9

    .line 630
    :pswitch_3ff
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 631
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzo(IJ)I

    move-result v3

    goto :goto_3c9

    .line 628
    :pswitch_40a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 629
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzefl;->zzaj(II)I

    move-result v3

    goto :goto_3c9

    .line 626
    :pswitch_415
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 627
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzak(II)I

    move-result v3

    goto :goto_3c9

    .line 624
    :pswitch_424
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 625
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzag(II)I

    move-result v3

    goto :goto_3c9

    .line 620
    :pswitch_433
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 621
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzeer;

    .line 622
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzeer;)I

    move-result v3

    goto :goto_3c9

    .line 616
    :pswitch_444
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 617
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 618
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v3

    goto/16 :goto_3c9

    .line 610
    :pswitch_458
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 611
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 612
    instance-of v6, v5, Lcom/google/android/gms/internal/ads/zzeer;

    if-eqz v6, :cond_46e

    .line 613
    check-cast v5, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzeer;)I

    move-result v3

    goto/16 :goto_3c9

    .line 614
    :cond_46e
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzl(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3c9

    .line 608
    :pswitch_476
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 609
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzefl;->zzi(IZ)I

    move-result v3

    goto/16 :goto_3c9

    .line 606
    :pswitch_482
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 607
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzefl;->zzai(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 604
    :pswitch_48e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 605
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzn(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 602
    :pswitch_49a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 603
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzefl;->zzaf(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 599
    :pswitch_4aa
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 601
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzefl;->zzl(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 597
    :pswitch_4ba
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 598
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzefl;->zzk(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 595
    :pswitch_4ca
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 596
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzb(IF)I

    move-result v3

    goto/16 :goto_3c9

    .line 593
    :pswitch_4d6
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    const-wide/16 v5, 0x0

    .line 594
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ID)I

    move-result v3

    goto/16 :goto_3c9

    :cond_4e4
    :goto_4e4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_16

    .line 873
    :cond_4ea
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzeiz;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 876
    :cond_4f2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v12, 0x0

    .line 879
    :goto_4fa
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    array-length v13, v13

    if-ge v3, v13, :cond_a26

    .line 880
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v13

    .line 882
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_525

    add-int/lit8 v11, v3, 0x2

    .line 890
    aget v11, v14, v11

    and-int v14, v11, v8

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v7, v18

    if-eq v14, v6, :cond_523

    int-to-long v9, v14

    .line 895
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v6, v14

    :cond_523
    move v9, v11

    goto :goto_544

    .line 896
    :cond_525
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v9, :cond_541

    sget-object v9, Lcom/google/android/gms/internal/ads/zzefv;->zzicy:Lcom/google/android/gms/internal/ads/zzefv;

    .line 897
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzefv;->id()I

    move-result v9

    if-lt v4, v9, :cond_541

    sget-object v9, Lcom/google/android/gms/internal/ads/zzefv;->zzidl:Lcom/google/android/gms/internal/ads/zzefv;

    .line 898
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzefv;->id()I

    move-result v9

    if-gt v4, v9, :cond_541

    .line 899
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    add-int/lit8 v10, v3, 0x2

    aget v9, v9, v10

    and-int/2addr v9, v8

    goto :goto_542

    :cond_541
    const/4 v9, 0x0

    :goto_542
    const/16 v18, 0x0

    :goto_544
    and-int v10, v13, v8

    int-to-long v10, v10

    packed-switch v4, :pswitch_data_b10

    goto/16 :goto_90a

    .line 1195
    :pswitch_54c
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1197
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzehl;

    .line 1198
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v9

    .line 1199
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzehl;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v4

    goto/16 :goto_909

    .line 1193
    :pswitch_562
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1194
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzm(IJ)I

    move-result v4

    goto/16 :goto_909

    .line 1191
    :pswitch_572
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1192
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzah(II)I

    move-result v4

    goto/16 :goto_909

    .line 1189
    :pswitch_582
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const-wide/16 v9, 0x0

    .line 1190
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzo(IJ)I

    move-result v4

    goto/16 :goto_909

    .line 1187
    :pswitch_590
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const/4 v4, 0x0

    .line 1188
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzaj(II)I

    move-result v9

    goto/16 :goto_953

    .line 1185
    :pswitch_59d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1186
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzak(II)I

    move-result v4

    goto/16 :goto_909

    .line 1183
    :pswitch_5ad
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1184
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzag(II)I

    move-result v4

    goto/16 :goto_909

    .line 1179
    :pswitch_5bd
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1181
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeer;

    .line 1182
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzeer;)I

    move-result v4

    goto/16 :goto_909

    .line 1175
    :pswitch_5cf
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1176
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1177
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v4

    goto/16 :goto_909

    .line 1169
    :pswitch_5e3
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1170
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1171
    instance-of v9, v4, Lcom/google/android/gms/internal/ads/zzeer;

    if-eqz v9, :cond_5f9

    .line 1172
    check-cast v4, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzeer;)I

    move-result v4

    goto/16 :goto_909

    .line 1173
    :cond_5f9
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzl(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_909

    .line 1167
    :pswitch_601
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1168
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/ads/zzefl;->zzi(IZ)I

    move-result v4

    goto/16 :goto_909

    .line 1165
    :pswitch_60d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const/4 v4, 0x0

    .line 1166
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzai(II)I

    move-result v9

    goto/16 :goto_953

    .line 1163
    :pswitch_61a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const-wide/16 v9, 0x0

    .line 1164
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzn(IJ)I

    move-result v4

    goto/16 :goto_909

    .line 1161
    :pswitch_628
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1162
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzaf(II)I

    move-result v4

    goto/16 :goto_909

    .line 1159
    :pswitch_638
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1160
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzl(IJ)I

    move-result v4

    goto/16 :goto_909

    .line 1157
    :pswitch_648
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 1158
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzehp;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzk(IJ)I

    move-result v4

    goto/16 :goto_909

    .line 1155
    :pswitch_658
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const/4 v4, 0x0

    .line 1156
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzb(IF)I

    move-result v9

    goto/16 :goto_953

    .line 1153
    :pswitch_665
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const-wide/16 v9, 0x0

    .line 1154
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ID)I

    move-result v4

    goto/16 :goto_909

    .line 1149
    :pswitch_673
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    .line 1150
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhf(I)Ljava/lang/Object;

    move-result-object v10

    .line 1151
    invoke-interface {v4, v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzehi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_909

    .line 1145
    :pswitch_683
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1146
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v9

    .line 1147
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v4

    goto/16 :goto_909

    .line 1136
    :pswitch_693
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1137
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzac(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1139
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_6a7

    int-to-long v9, v9

    .line 1140
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1142
    :cond_6a7
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1143
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto/16 :goto_832

    .line 1127
    :pswitch_6b1
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1128
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1130
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_6c5

    int-to-long v9, v9

    .line 1131
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1133
    :cond_6c5
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1134
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto/16 :goto_832

    .line 1118
    :pswitch_6cf
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1119
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzai(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1121
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_6e3

    int-to-long v9, v9

    .line 1122
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1124
    :cond_6e3
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1125
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto/16 :goto_832

    .line 1109
    :pswitch_6ed
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1110
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzah(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1112
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_701

    int-to-long v9, v9

    .line 1113
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1115
    :cond_701
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1116
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto/16 :goto_832

    .line 1100
    :pswitch_70b
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1101
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzad(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1103
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_71f

    int-to-long v9, v9

    .line 1104
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1106
    :cond_71f
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1107
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto/16 :goto_832

    .line 1091
    :pswitch_729
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1092
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzaf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1094
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_73d

    int-to-long v9, v9

    .line 1095
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1097
    :cond_73d
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1098
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto/16 :goto_832

    .line 1082
    :pswitch_747
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1083
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzaj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1085
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_75b

    int-to-long v9, v9

    .line 1086
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1088
    :cond_75b
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1089
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto/16 :goto_832

    .line 1073
    :pswitch_765
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1074
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzah(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1076
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_779

    int-to-long v9, v9

    .line 1077
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1079
    :cond_779
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1080
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto/16 :goto_832

    .line 1064
    :pswitch_783
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1065
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzai(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1067
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_797

    int-to-long v9, v9

    .line 1068
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1070
    :cond_797
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1071
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto/16 :goto_832

    .line 1055
    :pswitch_7a1
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1056
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzae(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1058
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_7b5

    int-to-long v9, v9

    .line 1059
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1061
    :cond_7b5
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1062
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto/16 :goto_832

    .line 1046
    :pswitch_7bf
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1047
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzab(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1049
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_7d3

    int-to-long v9, v9

    .line 1050
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1052
    :cond_7d3
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1053
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto :goto_832

    .line 1037
    :pswitch_7dc
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1038
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzaa(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1040
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_7f0

    int-to-long v9, v9

    .line 1041
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1043
    :cond_7f0
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1044
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto :goto_832

    .line 1028
    :pswitch_7f9
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1029
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzah(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1031
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_80d

    int-to-long v9, v9

    .line 1032
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1034
    :cond_80d
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1035
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    goto :goto_832

    .line 1019
    :pswitch_816
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1020
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzai(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 1022
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehp;->zziha:Z

    if-eqz v10, :cond_82a

    int-to-long v9, v9

    .line 1023
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1025
    :cond_82a
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzefl;->zzgp(I)I

    move-result v9

    .line 1026
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzgr(I)I

    move-result v10

    :goto_832
    add-int/2addr v9, v10

    add-int/2addr v9, v4

    goto/16 :goto_953

    .line 1015
    :pswitch_836
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v9, 0x0

    .line 1016
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    :pswitch_843
    const/4 v9, 0x0

    .line 1011
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1012
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    :pswitch_850
    const/4 v9, 0x0

    .line 1007
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1008
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    :pswitch_85d
    const/4 v9, 0x0

    .line 1003
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1004
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    :pswitch_86a
    const/4 v9, 0x0

    .line 999
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1000
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzr(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    :pswitch_877
    const/4 v9, 0x0

    .line 995
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 996
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzt(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    .line 991
    :pswitch_884
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 992
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzd(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_909

    .line 987
    :pswitch_890
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v9

    .line 988
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v4

    goto :goto_909

    .line 984
    :pswitch_89f
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/util/List;)I

    move-result v4

    goto :goto_909

    .line 980
    :pswitch_8aa
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v9, 0x0

    .line 981
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzx(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8b6
    const/4 v9, 0x0

    .line 976
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 977
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8c2
    const/4 v9, 0x0

    .line 972
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 973
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8ce
    const/4 v9, 0x0

    .line 968
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 969
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8da
    const/4 v9, 0x0

    .line 964
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 965
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzp(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8e6
    const/4 v9, 0x0

    .line 960
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 961
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzo(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8f2
    const/4 v9, 0x0

    .line 956
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 957
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8fe
    const/4 v9, 0x0

    .line 952
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 953
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzw(ILjava/util/List;Z)I

    move-result v4

    :goto_909
    add-int/2addr v5, v4

    :cond_90a
    :goto_90a
    const/4 v4, 0x0

    :goto_90b
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_a1f

    :pswitch_912
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 948
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzehl;

    .line 949
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v9

    .line 950
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzehl;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v4

    goto :goto_909

    :pswitch_925
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 945
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzm(IJ)I

    move-result v4

    goto :goto_909

    :pswitch_932
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 943
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzah(II)I

    move-result v4

    goto :goto_909

    :pswitch_93f
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    const-wide/16 v9, 0x0

    .line 941
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzo(IJ)I

    move-result v4

    goto :goto_909

    :pswitch_94a
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    const/4 v4, 0x0

    .line 939
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzaj(II)I

    move-result v9

    :goto_953
    add-int/2addr v5, v9

    goto :goto_90a

    :pswitch_955
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 937
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzak(II)I

    move-result v4

    goto :goto_909

    :pswitch_962
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 935
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzag(II)I

    move-result v4

    goto :goto_909

    :pswitch_96f
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 931
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeer;

    .line 932
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzeer;)I

    move-result v4

    goto :goto_909

    :pswitch_97e
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 927
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 928
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzeij;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzeih;)I

    move-result v4

    goto/16 :goto_909

    :pswitch_990
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 921
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 922
    instance-of v9, v4, Lcom/google/android/gms/internal/ads/zzeer;

    if-eqz v9, :cond_9a4

    .line 923
    check-cast v4, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ILcom/google/android/gms/internal/ads/zzeer;)I

    move-result v4

    goto/16 :goto_909

    .line 924
    :cond_9a4
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzl(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_909

    :pswitch_9ac
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 919
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/ads/zzefl;->zzi(IZ)I

    move-result v4

    goto/16 :goto_909

    :pswitch_9b6
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    const/4 v4, 0x0

    .line 917
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzefl;->zzai(II)I

    move-result v9

    add-int/2addr v5, v9

    goto/16 :goto_90b

    :pswitch_9c2
    const/4 v4, 0x0

    and-int v9, v12, v18

    const-wide/16 v13, 0x0

    if-eqz v9, :cond_9fe

    .line 915
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzefl;->zzn(IJ)I

    move-result v9

    goto :goto_9fd

    :pswitch_9ce
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_9fe

    .line 913
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/zzefl;->zzaf(II)I

    move-result v9

    goto :goto_9fd

    :pswitch_9de
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_9fe

    .line 911
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzl(IJ)I

    move-result v9

    goto :goto_9fd

    :pswitch_9ee
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_9fe

    .line 909
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzefl;->zzk(IJ)I

    move-result v9

    :goto_9fd
    add-int/2addr v5, v9

    :cond_9fe
    const/4 v9, 0x0

    goto :goto_a0d

    :pswitch_a00
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_9fe

    const/4 v9, 0x0

    .line 907
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/zzefl;->zzb(IF)I

    move-result v10

    add-int/2addr v5, v10

    :cond_a0d
    :goto_a0d
    const-wide/16 v10, 0x0

    goto :goto_a1f

    :pswitch_a10
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_a0d

    const-wide/16 v10, 0x0

    .line 905
    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/ads/zzefl;->zzc(ID)I

    move-result v15

    add-int/2addr v5, v15

    :goto_a1f
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_4fa

    :cond_a26
    const/4 v4, 0x0

    .line 1201
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzeiz;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 1202
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-eqz v2, :cond_a80

    .line 1203
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzefq;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object v1

    const/4 v11, 0x0

    .line 1205
    :goto_a39
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhj()I

    move-result v2

    if-ge v11, v2, :cond_a59

    .line 1206
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzeim;->zzho(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 1207
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzefw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzb(Lcom/google/android/gms/internal/ads/zzefw;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_a39

    .line 1209
    :cond_a59
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzefu;->zzibl:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeim;->zzbhk()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1210
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzefw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzb(Lcom/google/android/gms/internal/ads/zzefw;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_a63

    :cond_a7f
    add-int/2addr v5, v4

    :cond_a80
    return v5

    nop

    :pswitch_data_a82
    .packed-switch 0x0
        :pswitch_4d6
        :pswitch_4ca
        :pswitch_4ba
        :pswitch_4aa
        :pswitch_49a
        :pswitch_48e
        :pswitch_482
        :pswitch_476
        :pswitch_458
        :pswitch_444
        :pswitch_433
        :pswitch_424
        :pswitch_415
        :pswitch_40a
        :pswitch_3ff
        :pswitch_3f0
        :pswitch_3e1
        :pswitch_3cc
        :pswitch_3c1
        :pswitch_3b8
        :pswitch_3af
        :pswitch_3a6
        :pswitch_39d
        :pswitch_394
        :pswitch_38b
        :pswitch_382
        :pswitch_379
        :pswitch_36c
        :pswitch_363
        :pswitch_35a
        :pswitch_350
        :pswitch_346
        :pswitch_33c
        :pswitch_332
        :pswitch_328
        :pswitch_308
        :pswitch_2eb
        :pswitch_2ce
        :pswitch_2b1
        :pswitch_293
        :pswitch_275
        :pswitch_257
        :pswitch_239
        :pswitch_21b
        :pswitch_1fd
        :pswitch_1df
        :pswitch_1c1
        :pswitch_1a3
        :pswitch_185
        :pswitch_177
        :pswitch_167
        :pswitch_159
        :pswitch_14d
        :pswitch_13d
        :pswitch_12d
        :pswitch_11d
        :pswitch_111
        :pswitch_105
        :pswitch_f9
        :pswitch_db
        :pswitch_c7
        :pswitch_b5
        :pswitch_a5
        :pswitch_95
        :pswitch_89
        :pswitch_7d
        :pswitch_6d
        :pswitch_5d
        :pswitch_47
    .end packed-switch

    :pswitch_data_b10
    .packed-switch 0x0
        :pswitch_a10
        :pswitch_a00
        :pswitch_9ee
        :pswitch_9de
        :pswitch_9ce
        :pswitch_9c2
        :pswitch_9b6
        :pswitch_9ac
        :pswitch_990
        :pswitch_97e
        :pswitch_96f
        :pswitch_962
        :pswitch_955
        :pswitch_94a
        :pswitch_93f
        :pswitch_932
        :pswitch_925
        :pswitch_912
        :pswitch_8fe
        :pswitch_8f2
        :pswitch_8e6
        :pswitch_8da
        :pswitch_8ce
        :pswitch_8c2
        :pswitch_8b6
        :pswitch_8aa
        :pswitch_89f
        :pswitch_890
        :pswitch_884
        :pswitch_877
        :pswitch_86a
        :pswitch_85d
        :pswitch_850
        :pswitch_843
        :pswitch_836
        :pswitch_816
        :pswitch_7f9
        :pswitch_7dc
        :pswitch_7bf
        :pswitch_7a1
        :pswitch_783
        :pswitch_765
        :pswitch_747
        :pswitch_729
        :pswitch_70b
        :pswitch_6ed
        :pswitch_6cf
        :pswitch_6b1
        :pswitch_693
        :pswitch_683
        :pswitch_673
        :pswitch_665
        :pswitch_658
        :pswitch_648
        :pswitch_638
        :pswitch_628
        :pswitch_61a
        :pswitch_60d
        :pswitch_601
        :pswitch_5e3
        :pswitch_5cf
        :pswitch_5bd
        :pswitch_5ad
        :pswitch_59d
        :pswitch_590
        :pswitch_582
        :pswitch_572
        :pswitch_562
        :pswitch_54c
    .end packed-switch
.end method

.method public final zzav(Ljava/lang/Object;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 3938
    :goto_d
    iget v2, v6, Lcom/google/android/gms/internal/ads/zzehp;->zzihc:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_12e

    .line 3939
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzehp;->zzihb:[I

    aget v12, v2, v10

    .line 3941
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v13, v2, v12

    .line 3943
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v14

    .line 3944
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    and-int v3, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    if-eq v3, v0, :cond_3a

    if-eq v3, v8, :cond_35

    .line 3950
    sget-object v0, Lcom/google/android/gms/internal/ads/zzehp;->zzhni:Lsun/misc/Unsafe;

    int-to-long v1, v3

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_35
    move/from16 v17, v1

    move/from16 v16, v3

    goto :goto_3e

    :cond_3a
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_3e
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    if-eqz v0, :cond_59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 3954
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_59

    return v9

    :cond_59
    const/high16 v0, 0xff00000

    and-int/2addr v0, v14

    ushr-int/lit8 v0, v0, 0x14

    const/16 v1, 0x9

    if-eq v0, v1, :cond_10b

    const/16 v1, 0x11

    if-eq v0, v1, :cond_10b

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_df

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_ce

    const/16 v1, 0x44

    if-eq v0, v1, :cond_ce

    const/16 v1, 0x31

    if-eq v0, v1, :cond_df

    const/16 v1, 0x32

    if-eq v0, v1, :cond_7c

    goto/16 :goto_126

    .line 3980
    :cond_7c
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    and-int v1, v14, v8

    int-to-long v1, v1

    .line 3982
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzehi;->zzap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 3983
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cb

    .line 3984
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhf(I)Ljava/lang/Object;

    move-result-object v1

    .line 3985
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzehi;->zzao(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzehg;

    move-result-object v1

    .line 3986
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzehg;->zzigo:Lcom/google/android/gms/internal/ads/zzejq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejq;->zzbib()Lcom/google/android/gms/internal/ads/zzejt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzejt;->zzild:Lcom/google/android/gms/internal/ads/zzejt;

    if-ne v1, v2, :cond_cb

    const/4 v1, 0x0

    .line 3988
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ac
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_c4

    .line 3990
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeia;->zzbgz()Lcom/google/android/gms/internal/ads/zzeia;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzeia;->zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v1

    .line 3991
    :cond_c4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzeih;->zzav(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    const/4 v11, 0x0

    :cond_cb
    if-nez v11, :cond_126

    return v9

    .line 3976
    :cond_ce
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 3977
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzeih;)Z

    move-result v0

    if-nez v0, :cond_126

    return v9

    :cond_df
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 3965
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3966
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_108

    .line 3967
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v1

    const/4 v2, 0x0

    .line 3968
    :goto_f3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_108

    .line 3969
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3970
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzeih;->zzav(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_105

    const/4 v11, 0x0

    goto :goto_108

    :cond_105
    add-int/lit8 v2, v2, 0x1

    goto :goto_f3

    :cond_108
    :goto_108
    if-nez v11, :cond_126

    return v9

    :cond_10b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 3959
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 3960
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzehp;->zzhe(I)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzeih;)Z

    move-result v0

    if-nez v0, :cond_126

    return v9

    :cond_126
    :goto_126
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_d

    .line 3998
    :cond_12e
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-eqz v0, :cond_13f

    .line 3999
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzefq;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefu;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_13f

    return v9

    :cond_13f
    return v11
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_190

    const/4 v0, 0x0

    .line 457
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_181

    .line 459
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzhh(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 464
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigs:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_194

    goto/16 :goto_17d

    .line 533
    :pswitch_1f
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 530
    :pswitch_24
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 531
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 532
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_17d

    .line 528
    :pswitch_36
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 525
    :pswitch_3b
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 526
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 527
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_17d

    .line 523
    :pswitch_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihi:Lcom/google/android/gms/internal/ads/zzehi;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzeij;->zza(Lcom/google/android/gms/internal/ads/zzehi;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17d

    .line 521
    :pswitch_54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihf:Lcom/google/android/gms/internal/ads/zzegv;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzegv;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17d

    .line 519
    :pswitch_5b
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 516
    :pswitch_60
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 517
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JJ)V

    .line 518
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 513
    :pswitch_72
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 514
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 515
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 510
    :pswitch_84
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 511
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JJ)V

    .line 512
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 507
    :pswitch_96
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 508
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 509
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 504
    :pswitch_a8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 505
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 506
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 501
    :pswitch_ba
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 502
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 498
    :pswitch_cc
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 499
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 496
    :pswitch_de
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 493
    :pswitch_e3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 494
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 495
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 490
    :pswitch_f5
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 491
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzm(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JZ)V

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 487
    :pswitch_107
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 488
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 489
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 484
    :pswitch_118
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 485
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JJ)V

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 481
    :pswitch_129
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 482
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zzb(Ljava/lang/Object;JI)V

    .line 483
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 478
    :pswitch_13a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 479
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JJ)V

    .line 480
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 475
    :pswitch_14b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 476
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JJ)V

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 472
    :pswitch_15c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 473
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzn(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JF)V

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 469
    :pswitch_16d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 470
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/Object;JD)V

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Ljava/lang/Object;I)V

    :cond_17d
    :goto_17d
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_3

    .line 535
    :cond_181
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihg:Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeij;->zza(Lcom/google/android/gms/internal/ads/zzeiz;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzigx:Z

    if-eqz v0, :cond_18f

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzihh:Lcom/google/android/gms/internal/ads/zzefq;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeij;->zza(Lcom/google/android/gms/internal/ads/zzefq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18f
    return-void

    :cond_190
    const/4 p1, 0x0

    .line 456
    goto :goto_193

    :goto_192
    throw p1

    :goto_193
    goto :goto_192

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_16d
        :pswitch_15c
        :pswitch_14b
        :pswitch_13a
        :pswitch_129
        :pswitch_118
        :pswitch_107
        :pswitch_f5
        :pswitch_e3
        :pswitch_de
        :pswitch_cc
        :pswitch_ba
        :pswitch_a8
        :pswitch_96
        :pswitch_84
        :pswitch_72
        :pswitch_60
        :pswitch_5b
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_4d
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_36
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method
