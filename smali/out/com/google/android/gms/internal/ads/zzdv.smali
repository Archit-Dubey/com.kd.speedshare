.class public abstract Lcom/google/android/gms/internal/ads/zzdv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdw;


# static fields
.field protected static volatile zzwf:Lcom/google/android/gms/internal/ads/zzex;


# instance fields
.field protected zzwk:Landroid/view/MotionEvent;

.field protected zzwl:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected zzwm:J

.field protected zzwn:J

.field protected zzwo:J

.field protected zzwp:J

.field protected zzwq:J

.field protected zzwr:J

.field protected zzws:J

.field protected zzwt:D

.field private zzwu:D

.field private zzwv:D

.field protected zzww:F

.field protected zzwx:F

.field protected zzwy:F

.field protected zzwz:F

.field private zzxa:Z

.field protected zzxb:Z

.field protected zzxc:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwl:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwm:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwn:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwo:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwp:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwq:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwr:J

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzws:J

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzxa:Z

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzxb:Z

    .line 12
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcqo:Lcom/google/android/gms/internal/ads/zzaag;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcx;->zzbp()V

    goto :goto_3a

    .line 16
    :cond_35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdv;->zzwf:Lcom/google/android/gms/internal/ads/zzex;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfe;->zzb(Lcom/google/android/gms/internal/ads/zzex;)Z

    .line 17
    :goto_3a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzxc:Landroid/util/DisplayMetrics;
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_44

    :catchall_44
    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 108
    sget-object v7, Lcom/google/android/gms/internal/ads/zzaav;->zzcqd:Lcom/google/android/gms/internal/ads/zzaag;

    .line 109
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v7

    .line 110
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_45

    .line 114
    sget-object v9, Lcom/google/android/gms/internal/ads/zzdv;->zzwf:Lcom/google/android/gms/internal/ads/zzex;

    if-eqz v9, :cond_2c

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdv;->zzwf:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzex;->zzcm()Lcom/google/android/gms/internal/ads/zzdu;

    move-result-object v9

    goto :goto_2d

    :cond_2c
    move-object v9, v8

    .line 115
    :goto_2d
    sget-object v10, Lcom/google/android/gms/internal/ads/zzaav;->zzcqo:Lcom/google/android/gms/internal/ads/zzaag;

    .line 116
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v10

    .line 117
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_42

    const-string v10, "be"

    goto :goto_47

    :cond_42
    const-string v10, "te"

    goto :goto_47

    :cond_45
    move-object v9, v8

    move-object v10, v9

    :goto_47
    const/16 v18, -0x1

    .line 118
    :try_start_49
    sget v11, Lcom/google/android/gms/internal/ads/zzcw;->zznp:I

    if-ne v2, v11, :cond_59

    const/16 v11, 0x3ea

    .line 120
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdv;->zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    move-result-object v8

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzdv;->zzxa:Z

    const/16 v12, 0x3ea

    goto :goto_70

    .line 122
    :cond_59
    sget v11, Lcom/google/android/gms/internal/ads/zzcw;->zzno:I

    if-ne v2, v11, :cond_67

    const/16 v11, 0x3f0

    .line 124
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdv;->zzc(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    move-result-object v0

    move-object v8, v0

    const/16 v12, 0x3f0

    goto :goto_70

    :cond_67
    const/16 v3, 0x3e8

    .line 126
    invoke-virtual {v1, v0, v8}, Lcom/google/android/gms/internal/ads/zzdv;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzby$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    move-result-object v0

    move-object v8, v0

    const/16 v12, 0x3e8

    :goto_70
    if-eqz v7, :cond_b2

    if-eqz v9, :cond_b2

    const/4 v13, -0x1

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v14, v3, v5

    move-object v11, v9

    move-object/from16 v16, v10

    .line 130
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzdu;->zza(IIJLjava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_81} :catch_82

    goto :goto_b2

    :catch_82
    move-exception v0

    move-object/from16 v17, v0

    if-eqz v7, :cond_b2

    if-eqz v9, :cond_b2

    .line 135
    sget v0, Lcom/google/android/gms/internal/ads/zzcw;->zznp:I

    if-ne v2, v0, :cond_92

    const/16 v0, 0x3eb

    const/16 v12, 0x3eb

    goto :goto_a5

    .line 137
    :cond_92
    sget v0, Lcom/google/android/gms/internal/ads/zzcw;->zzno:I

    if-ne v2, v0, :cond_9b

    const/16 v0, 0x3f1

    const/16 v12, 0x3f1

    goto :goto_a5

    .line 139
    :cond_9b
    sget v0, Lcom/google/android/gms/internal/ads/zzcw;->zznn:I

    if-ne v2, v0, :cond_a4

    const/16 v0, 0x3e9

    const/16 v12, 0x3e9

    goto :goto_a5

    :cond_a4
    const/4 v12, -0x1

    :goto_a5
    const/4 v13, -0x1

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v14, v3, v5

    move-object v11, v9

    move-object/from16 v16, v10

    .line 143
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzdu;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 144
    :cond_b2
    :goto_b2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v8, :cond_103

    .line 145
    :try_start_b8
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegb;->zzbfe()I

    move-result v0

    if-nez v0, :cond_c7

    goto :goto_103

    .line 147
    :cond_c7
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-object/from16 v5, p2

    .line 148
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzcx;->zzj(Lcom/google/android/gms/internal/ads/zzcf$zza;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_13e

    if-eqz v9, :cond_13e

    .line 152
    sget v5, Lcom/google/android/gms/internal/ads/zzcw;->zznp:I

    if-ne v2, v5, :cond_e2

    const/16 v5, 0x3ee

    const/16 v12, 0x3ee

    goto :goto_f5

    .line 154
    :cond_e2
    sget v5, Lcom/google/android/gms/internal/ads/zzcw;->zzno:I

    if-ne v2, v5, :cond_eb

    const/16 v5, 0x3f2

    const/16 v12, 0x3f2

    goto :goto_f5

    .line 156
    :cond_eb
    sget v5, Lcom/google/android/gms/internal/ads/zzcw;->zznn:I

    if-ne v2, v5, :cond_f4

    const/16 v5, 0x3ec

    const/16 v12, 0x3ec

    goto :goto_f5

    :cond_f4
    const/4 v12, -0x1

    :goto_f5
    const/4 v13, -0x1

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v14, v5, v3

    move-object v11, v9

    move-object/from16 v16, v10

    .line 160
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzdu;->zza(IIJLjava/lang/String;)V

    goto :goto_13e

    :cond_103
    :goto_103
    const/4 v0, 0x5

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_108} :catch_109

    goto :goto_13e

    :catch_109
    move-exception v0

    move-object/from16 v17, v0

    const/4 v0, 0x7

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_13e

    if-eqz v9, :cond_13e

    .line 166
    sget v5, Lcom/google/android/gms/internal/ads/zzcw;->zznp:I

    if-ne v2, v5, :cond_11e

    const/16 v2, 0x3ef

    const/16 v12, 0x3ef

    goto :goto_131

    .line 168
    :cond_11e
    sget v5, Lcom/google/android/gms/internal/ads/zzcw;->zzno:I

    if-ne v2, v5, :cond_127

    const/16 v2, 0x3f3

    const/16 v12, 0x3f3

    goto :goto_131

    .line 170
    :cond_127
    sget v5, Lcom/google/android/gms/internal/ads/zzcw;->zznn:I

    if-ne v2, v5, :cond_130

    const/16 v2, 0x3ed

    const/16 v12, 0x3ed

    goto :goto_131

    :cond_130
    const/4 v12, -0x1

    :goto_131
    const/4 v13, -0x1

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v14, v5, v3

    move-object v11, v9

    move-object/from16 v16, v10

    .line 174
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzdu;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V

    :cond_13e
    :goto_13e
    return-object v0
.end method

.method private final zzby()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwq:J

    .line 91
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwm:J

    .line 92
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwn:J

    .line 93
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwo:J

    .line 94
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwp:J

    .line 95
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwr:J

    .line 96
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzws:J

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwl:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwl:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 99
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1e

    .line 101
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwl:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_3b

    .line 102
    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwk:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3b

    .line 103
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwk:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method protected abstract zza([Ljava/lang/StackTraceElement;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeu;
        }
    .end annotation
.end method

.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzby$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;
.end method

.method public zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 11

    .line 26
    sget v3, Lcom/google/android/gms/internal/ads/zzcw;->zzno:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdv;->zza(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdv;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 12

    .line 28
    sget v3, Lcom/google/android/gms/internal/ads/zzcw;->zznp:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdv;->zza(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zza(III)V
    .registers 20

    move-object/from16 v0, p0

    .line 79
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdv;->zzwk:Landroid/view/MotionEvent;

    if-eqz v1, :cond_21

    .line 80
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzcqb:Lcom/google/android/gms/internal/ads/zzaag;

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzby()V

    goto :goto_21

    .line 84
    :cond_1c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdv;->zzwk:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 85
    :cond_21
    :goto_21
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdv;->zzxc:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_49

    const-wide/16 v2, 0x0

    move/from16 v4, p3

    int-to-long v4, v4

    const/4 v6, 0x1

    move/from16 v7, p1

    int-to-float v7, v7

    .line 86
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v1

    move/from16 v1, p2

    int-to-float v1, v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdv;->zzxc:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdv;->zzwk:Landroid/view/MotionEvent;

    goto :goto_4c

    :cond_49
    const/4 v1, 0x0

    .line 87
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdv;->zzwk:Landroid/view/MotionEvent;

    :goto_4c
    const/4 v1, 0x0

    .line 88
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdv;->zzxb:Z

    return-void
.end method

.method public zza(Landroid/view/MotionEvent;)V
    .registers 16

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzxa:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzby()V

    .line 32
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzxa:Z

    .line 34
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_42

    if-eq v0, v3, :cond_17

    if-eq v0, v2, :cond_17

    goto :goto_54

    .line 40
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v6, v0

    .line 42
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwu:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v4, v8

    .line 43
    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwv:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v6, v10

    .line 44
    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwt:D

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v12, v8

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwt:D

    .line 45
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwu:D

    .line 46
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwv:D

    goto :goto_54

    :cond_42
    const-wide/16 v4, 0x0

    .line 36
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwt:D

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwu:D

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwv:D

    .line 47
    :goto_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_f4

    if-eq v0, v3, :cond_c0

    if-eq v0, v2, :cond_6c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_65

    goto/16 :goto_111

    .line 63
    :cond_65
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwp:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwp:J

    goto/16 :goto_111

    .line 65
    :cond_6c
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwn:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    add-int/2addr v0, v3

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwn:J

    .line 66
    :try_start_77
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdv;->zzb(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 68
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfd;->zzzr:Ljava/lang/Long;

    if-eqz v0, :cond_87

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfd;->zzzu:Ljava/lang/Long;

    if-eqz v0, :cond_87

    const/4 v0, 0x1

    goto :goto_88

    :cond_87
    const/4 v0, 0x0

    :goto_88
    if-eqz v0, :cond_9c

    .line 70
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwr:J

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfd;->zzzr:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfd;->zzzu:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwr:J

    .line 72
    :cond_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzxc:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_ab

    if-eqz p1, :cond_ab

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfd;->zzzs:Ljava/lang/Long;

    if-eqz v0, :cond_ab

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfd;->zzzv:Ljava/lang/Long;

    if-eqz v0, :cond_ab

    const/4 v1, 0x1

    :cond_ab
    if-eqz v1, :cond_111

    .line 74
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzws:J

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfd;->zzzs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfd;->zzzv:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzws:J
    :try_end_bf
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_77 .. :try_end_bf} :catch_111

    goto :goto_111

    .line 48
    :cond_c0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwk:Landroid/view/MotionEvent;

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwl:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwl:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_df

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwl:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 52
    :cond_df
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwo:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwo:J

    .line 53
    :try_start_e4
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdv;->zza([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwq:J
    :try_end_f3
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_e4 .. :try_end_f3} :catch_111

    goto :goto_111

    .line 57
    :cond_f4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzww:F

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwx:F

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwy:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwz:F

    .line 61
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwm:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzwm:J

    .line 77
    :catch_111
    :cond_111
    :goto_111
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzxb:Z

    return-void
.end method

.method protected abstract zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;
.end method

.method protected abstract zzb(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzfd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeu;
        }
    .end annotation
.end method

.method public zzb(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfg;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcqq:Lcom/google/android/gms/internal/ads/zzaag;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_21

    .line 24
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    const/4 v3, 0x0

    .line 25
    sget v4, Lcom/google/android/gms/internal/ads/zzcw;->zznn:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdv;->zza(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected abstract zzc(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;
.end method
