.class public final Lcom/google/android/gms/internal/ads/zzbfe;
.super Lcom/google/android/gms/internal/ads/zzbes;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbes;",
        "Lcom/google/android/gms/internal/ads/zzoy<",
        "Lcom/google/android/gms/internal/ads/zzok;",
        ">;"
    }
.end annotation


# instance fields
.field private url:Ljava/lang/String;

.field private zzamc:Ljava/nio/ByteBuffer;

.field private final zzeij:Lcom/google/android/gms/internal/ads/zzbdc;

.field private zzeks:Z

.field private final zzeky:Lcom/google/android/gms/internal/ads/zzbfb;

.field private final zzekz:Lcom/google/android/gms/internal/ads/zzbek;

.field private zzela:Z

.field private final zzelb:Ljava/lang/Object;

.field private zzelc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdb;Lcom/google/android/gms/internal/ads/zzbdc;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbes;-><init>(Lcom/google/android/gms/internal/ads/zzbdb;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzeij:Lcom/google/android/gms/internal/ads/zzbdc;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbfb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbfb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzeky:Lcom/google/android/gms/internal/ads/zzbfb;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbek;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzekz:Lcom/google/android/gms/internal/ads/zzbek;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzelb:Ljava/lang/Object;

    return-void
.end method

.method private final zzzb()V
    .registers 15

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzeky:Lcom/google/android/gms/internal/ads/zzbfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfb;->zzaap()J

    move-result-wide v0

    long-to-int v6, v0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzekz:Lcom/google/android/gms/internal/ads/zzbek;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbek;->zzq(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    int-to-float v0, v1

    int-to-float v2, v5

    int-to-float v3, v6

    div-float/2addr v2, v3

    mul-float v0, v0, v2

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_25

    const/4 v2, 0x1

    const/4 v11, 0x1

    goto :goto_27

    :cond_25
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 15
    :goto_27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdy;->zzaam()I

    move-result v12

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdy;->zzaan()I

    move-result v13

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfe;->url:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzfn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-long v7, v0

    int-to-long v9, v1

    move-object v2, p0

    .line 19
    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    return-void
.end method


# virtual methods
.method public final abort()V
    .registers 2

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzeks:Z

    return-void
.end method

.method public final getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzelb:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzela:Z

    if-nez v1, :cond_13

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 85
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzela:Z

    .line 86
    :cond_13
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzeks:Z

    .line 87
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_19

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_19
    move-exception v1

    .line 87
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfe;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzop;)V
    .registers 3

    .line 91
    check-cast p1, Lcom/google/android/gms/internal/ads/zzok;

    .line 92
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzor;

    if-eqz p2, :cond_d

    .line 93
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzeky:Lcom/google/android/gms/internal/ads/zzbfb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzor;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbfb;->zza(Lcom/google/android/gms/internal/ads/zzor;)V

    :cond_d
    return-void
.end method

.method public final zzaar()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzelc:Z

    return v0
.end method

.method public final bridge synthetic zzc(Ljava/lang/Object;I)V
    .registers 3

    return-void
.end method

.method public final bridge synthetic zze(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final zzfm(Ljava/lang/String;)Z
    .registers 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 21
    iput-object v10, v9, Lcom/google/android/gms/internal/ads/zzbfe;->url:Ljava/lang/String;

    .line 22
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzfn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "error"

    const/4 v13, 0x0

    .line 25
    :try_start_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzor;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzecc:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzeij:Lcom/google/android/gms/internal/ads/zzbdc;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbdc;->zzehk:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzeij:Lcom/google/android/gms/internal/ads/zzbdc;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbdc;->zzehm:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpk;Lcom/google/android/gms/internal/ads/zzoy;IIZLcom/google/android/gms/internal/ads/zzos;)V

    .line 26
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzeij:Lcom/google/android/gms/internal/ads/zzbdc;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbdc;->zzehq:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_13c

    if-eqz v1, :cond_35

    .line 27
    :try_start_28
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdt;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzbfe;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzbdt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzok;Lcom/google/android/gms/internal/ads/zzoy;Lcom/google/android/gms/internal/ads/zzbdw;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_32

    move-object v0, v1

    goto :goto_35

    :catch_32
    move-exception v0

    goto/16 :goto_13f

    .line 30
    :cond_35
    :goto_35
    :try_start_35
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/google/android/gms/internal/ads/zzop;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzop;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzok;->zza(Lcom/google/android/gms/internal/ads/zzop;)J

    .line 32
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzekk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbdb;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_49} :catch_13c

    if-eqz v1, :cond_4e

    .line 34
    :try_start_4b
    invoke-interface {v1, v11, v9}, Lcom/google/android/gms/internal/ads/zzbdb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbes;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_32

    .line 35
    :cond_4e
    :try_start_4e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 36
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 38
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaav;->zzcly:Lcom/google/android/gms/internal/ads/zzaag;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 41
    sget-object v6, Lcom/google/android/gms/internal/ads/zzaav;->zzclx:Lcom/google/android/gms/internal/ads/zzaag;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v6

    .line 43
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 44
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzeij:Lcom/google/android/gms/internal/ads/zzbdc;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzbdc;->zzehj:I

    .line 45
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;

    const/16 v8, 0x2000

    new-array v15, v8, [B

    move-wide/from16 v16, v2

    .line 47
    :goto_86
    iget-object v14, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 48
    invoke-interface {v0, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzok;->read([BII)I

    move-result v14
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_94} :catch_13c

    const/4 v8, -0x1

    if-ne v14, v8, :cond_a9

    const/4 v8, 0x1

    .line 50
    :try_start_98
    iput-boolean v8, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzelc:Z

    .line 51
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzekz:Lcom/google/android/gms/internal/ads/zzbek;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbek;->zzq(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    .line 52
    invoke-virtual {v9, v10, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzc(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a7} :catch_32

    :goto_a7
    const/4 v1, 0x1

    goto :goto_c8

    .line 54
    :cond_a9
    :try_start_a9
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzelb:Ljava/lang/Object;

    monitor-enter v8
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_13c

    .line 55
    :try_start_ac
    iget-boolean v13, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzeks:Z

    if-nez v13, :cond_b9

    .line 56
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_131

    move-object/from16 v18, v12

    const/4 v12, 0x0

    :try_start_b5
    invoke-virtual {v13, v15, v12, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_bb

    :cond_b9
    move-object/from16 v18, v12

    .line 57
    :goto_bb
    monitor-exit v8
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_13a

    .line 58
    :try_start_bc
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_c9

    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbfe;->zzzb()V

    goto :goto_a7

    :goto_c8
    return v1

    .line 61
    :cond_c9
    iget-boolean v8, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzeks:Z

    if-nez v8, :cond_10b

    .line 64
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v12

    sub-long v19, v12, v16

    cmp-long v8, v19, v4

    if-ltz v8, :cond_dc

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbfe;->zzzb()V

    move-wide/from16 v16, v12

    :cond_dc
    sub-long/2addr v12, v2

    const-wide/16 v19, 0x3e8

    mul-long v19, v19, v6

    cmp-long v8, v12, v19

    if-gtz v8, :cond_eb

    move-object/from16 v12, v18

    const/16 v8, 0x2000

    const/4 v13, 0x0

    goto :goto_86

    :cond_eb
    const-string v12, "downloadTimeout"
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_ed} :catch_136

    const/16 v0, 0x31

    .line 70
    :try_start_ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Timeout exceeded. Limit: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_10b} :catch_32

    :cond_10b
    :try_start_10b
    const-string v12, "externalAbort"
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10d} :catch_136

    .line 63
    :try_start_10d
    new-instance v0, Ljava/io/IOException;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbfe;->zzamc:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Precache abort at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_131} :catch_32

    :catchall_131
    move-exception v0

    move-object/from16 v18, v12

    .line 57
    :goto_134
    :try_start_134
    monitor-exit v8
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_13a

    :try_start_135
    throw v0
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_136} :catch_136

    :catch_136
    move-exception v0

    move-object/from16 v12, v18

    goto :goto_13f

    :catchall_13a
    move-exception v0

    goto :goto_134

    :catch_13c
    move-exception v0

    move-object/from16 v18, v12

    .line 75
    :goto_13f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to preload url "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v9, v10, v11, v12, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method protected final zzfn(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzfn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "cache:"

    if-eqz v0, :cond_15

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
