.class public final Lcom/google/android/gms/measurement/internal/zzin;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# instance fields
.field protected zza:Lcom/google/android/gms/measurement/internal/zzik;

.field private volatile zzb:Lcom/google/android/gms/measurement/internal/zzik;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzik;

.field private final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/measurement/internal/zzik;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Landroid/app/Activity;

.field private volatile zzf:Z

.field private volatile zzg:Lcom/google/android/gms/measurement/internal/zzik;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzik;

.field private zzi:Z

.field private final zzj:Ljava/lang/Object;

.field private zzk:Lcom/google/android/gms/measurement/internal/zzik;

.field private zzl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgd;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzj:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzd:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzin;)Lcom/google/android/gms/measurement/internal/zzik;
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzh:Lcom/google/android/gms/measurement/internal/zzik;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzik;)Lcom/google/android/gms/measurement/internal/zzik;
    .registers 2

    const/4 p1, 0x0

    .line 334
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzh:Lcom/google/android/gms/measurement/internal/zzik;

    return-object p1
.end method

.method private static zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "\\."

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 214
    array-length v0, p0

    if-lez v0, :cond_f

    .line 215
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    goto :goto_11

    :cond_f
    const-string p0, ""

    .line 217
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1e

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1e
    return-object p0
.end method

.method private final zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzik;Z)V
    .registers 20

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 123
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    if-nez v1, :cond_b

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzin;->zzc:Lcom/google/android/gms/measurement/internal/zzik;

    goto :goto_d

    :cond_b
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    :goto_d
    move-object v3, v1

    .line 124
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/String;

    if-nez v1, :cond_33

    if-eqz p1, :cond_21

    .line 125
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    move-object v10, v1

    .line 126
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzik;->zza:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzik;->zzc:J

    iget-boolean v13, v0, Lcom/google/android/gms/measurement/internal/zzik;->zze:Z

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zzik;->zzf:J

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/measurement/internal/zzik;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    move-object v2, v1

    goto :goto_34

    :cond_33
    move-object v2, v0

    .line 128
    :goto_34
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    iput-object v0, v7, Lcom/google/android/gms/measurement/internal/zzin;->zzc:Lcom/google/android/gms/measurement/internal/zzik;

    .line 129
    iput-object v2, v7, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzip;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzip;-><init>(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzik;JZ)V

    .line 132
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzik;J)V
    .registers 20

    move-object v3, p1

    if-eqz v3, :cond_d

    const-string v0, "screen_name"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "screen_class"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 72
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, "screen_view"

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v13

    const/4 v12, 0x1

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    .line 73
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzik;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzik;Landroid/os/Bundle;Z)V
    .registers 7

    const-string v0, "_si"

    const-string v1, "_sn"

    const-string v2, "_sc"

    if-eqz p1, :cond_32

    if-eqz p0, :cond_32

    .line 194
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz p2, :cond_32

    .line 195
    :cond_12
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzik;->zza:Ljava/lang/String;

    if-eqz p2, :cond_1c

    .line 196
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzik;->zza:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 197
    :cond_1c
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 198
    :goto_1f
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/String;

    if-eqz p2, :cond_29

    .line 199
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 200
    :cond_29
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 201
    :goto_2c
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzc:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_32
    if-eqz p1, :cond_41

    if-nez p0, :cond_41

    if-eqz p2, :cond_41

    .line 203
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzik;JZLandroid/os/Bundle;)V
    .registers 16

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzat:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    if-eqz p5, :cond_19

    .line 137
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Lcom/google/android/gms/measurement/internal/zzik;

    if-eqz p5, :cond_19

    const/4 p5, 0x1

    goto :goto_1a

    :cond_19
    const/4 p5, 0x0

    :goto_1a
    if-eqz p5, :cond_2c

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Lcom/google/android/gms/measurement/internal/zzik;

    invoke-direct {p0, v0, v2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Lcom/google/android/gms/measurement/internal/zzik;ZJ)V

    goto :goto_2c

    :cond_22
    if-eqz p5, :cond_2b

    .line 140
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Lcom/google/android/gms/measurement/internal/zzik;

    if-eqz p5, :cond_2b

    .line 141
    invoke-direct {p0, p5, v2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Lcom/google/android/gms/measurement/internal/zzik;ZJ)V

    :cond_2b
    const/4 p5, 0x0

    :cond_2c
    :goto_2c
    if-eqz p2, :cond_4a

    .line 142
    iget-wide v3, p2, Lcom/google/android/gms/measurement/internal/zzik;->zzc:J

    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzik;->zzc:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4a

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/String;

    .line 143
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzik;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzik;->zza:Ljava/lang/String;

    .line 144
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_4a
    const/4 v1, 0x1

    :cond_4b
    if-eqz v1, :cond_13f

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v1

    if-eqz v1, :cond_6c

    if-eqz p6, :cond_66

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_6c

    :cond_66
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    move-object v0, p6

    :cond_6c
    :goto_6c
    move-object v8, v0

    .line 149
    invoke-static {p1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Lcom/google/android/gms/measurement/internal/zzik;Landroid/os/Bundle;Z)V

    if-eqz p2, :cond_8f

    .line 151
    iget-object p6, p2, Lcom/google/android/gms/measurement/internal/zzik;->zza:Ljava/lang/String;

    if-eqz p6, :cond_7d

    .line 152
    iget-object p6, p2, Lcom/google/android/gms/measurement/internal/zzik;->zza:Ljava/lang/String;

    const-string v0, "_pn"

    invoke-virtual {v8, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_7d
    iget-object p6, p2, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/String;

    if-eqz p6, :cond_88

    .line 154
    iget-object p6, p2, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/String;

    const-string v0, "_pc"

    invoke-virtual {v8, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_88
    iget-wide v0, p2, Lcom/google/android/gms/measurement/internal/zzik;->zzc:J

    const-string p2, "_pi"

    invoke-virtual {v8, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    sget-object p6, Lcom/google/android/gms/measurement/internal/zzaq;->zzat:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {p2, p6}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_e1

    if-eqz p5, :cond_e1

    .line 157
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznt;->zzb()Z

    move-result p2

    if-eqz p2, :cond_cc

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    sget-object p5, Lcom/google/android/gms/measurement/internal/zzaq;->zzav:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {p2, p5}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result p2

    if-eqz p2, :cond_cc

    .line 159
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznh;->zzb()Z

    move-result p2

    if-eqz p2, :cond_cc

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    sget-object p5, Lcom/google/android/gms/measurement/internal/zzaq;->zzbz:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {p2, p5}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result p2

    if-eqz p2, :cond_cc

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzk()Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object p2

    .line 163
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzjw;->zza(J)J

    move-result-wide p2

    goto :goto_d6

    .line 164
    :cond_cc
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzk()Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object p2

    .line 165
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkc;->zzb()J

    move-result-wide p2

    :goto_d6
    cmp-long p4, p2, v0

    if-lez p4, :cond_e1

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p4

    invoke-virtual {p4, v8, p2, p3}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/os/Bundle;J)V

    .line 170
    :cond_e1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result p2

    const-string p3, "auto"

    if-eqz p2, :cond_10a

    .line 171
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_104

    const-wide/16 p4, 0x1

    const-string p2, "_mt"

    .line 172
    invoke-virtual {v8, p2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 173
    :cond_104
    iget-boolean p2, p1, Lcom/google/android/gms/measurement/internal/zzik;->zze:Z

    if-eqz p2, :cond_10a

    const-string p3, "app"

    :cond_10a
    move-object v4, p3

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result p2

    if-eqz p2, :cond_136

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    .line 176
    iget-boolean p4, p1, Lcom/google/android/gms/measurement/internal/zzik;->zze:Z

    if-eqz p4, :cond_12b

    iget-wide p4, p1, Lcom/google/android/gms/measurement/internal/zzik;->zzf:J

    cmp-long p6, p4, v0

    if-eqz p6, :cond_12b

    .line 177
    iget-wide p2, p1, Lcom/google/android/gms/measurement/internal/zzik;->zzf:J

    :cond_12b
    move-wide v6, p2

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzf()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v3

    const-string v5, "_vs"

    .line 179
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzhh;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    goto :goto_13f

    .line 181
    :cond_136
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzf()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object p2

    const-string p3, "_vs"

    invoke-virtual {p2, v4, p3, v8}, Lcom/google/android/gms/measurement/internal/zzhh;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 182
    :cond_13f
    :goto_13f
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Lcom/google/android/gms/measurement/internal/zzik;

    .line 183
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result p2

    if-eqz p2, :cond_153

    iget-boolean p2, p1, Lcom/google/android/gms/measurement/internal/zzik;->zze:Z

    if-eqz p2, :cond_153

    .line 184
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzh:Lcom/google/android/gms/measurement/internal/zzik;

    .line 185
    :cond_153
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzis;->zza(Lcom/google/android/gms/measurement/internal/zzik;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzik;ZJ)V
    .registers 8

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zze()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->zza(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 188
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzik;->zzd:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 189
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzk()Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzjw;->zza(ZZJ)Z

    move-result p2

    if-eqz p2, :cond_27

    if-eqz p1, :cond_27

    .line 191
    iput-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzik;->zzd:Z

    :cond_27
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzin;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzik;J)V
    .registers 6

    .line 330
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzik;J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzik;JZLandroid/os/Bundle;)V
    .registers 14

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 331
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzik;JZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzik;ZJ)V
    .registers 5

    const/4 p2, 0x0

    .line 333
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Lcom/google/android/gms/measurement/internal/zzik;ZJ)V

    return-void
.end method

.method private final zzd(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzik;
    .registers 7

    .line 220
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzik;

    if-nez v0, :cond_2d

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzik;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkw;->zzg()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzik;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 226
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result p1

    if-nez p1, :cond_3a

    return-object v0

    .line 228
    :cond_3a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzg:Lcom/google/android/gms/measurement/internal/zzik;

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzg:Lcom/google/android/gms/measurement/internal/zzik;

    return-object p1

    :cond_41
    return-object v0
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/measurement/internal/zzik;
    .registers 4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p1, :cond_15

    goto :goto_1d

    .line 10
    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Lcom/google/android/gms/measurement/internal/zzik;

    if-eqz p1, :cond_1a

    return-object p1

    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzh:Lcom/google/android/gms/measurement/internal/zzik;

    return-object p1

    .line 9
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Lcom/google/android/gms/measurement/internal/zzik;

    return-object p1
.end method

.method public final bridge synthetic zza()V
    .registers 1

    .line 309
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    return-void
.end method

.method public final zza(Landroid/app/Activity;)V
    .registers 6

    .line 242
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    .line 244
    :try_start_11
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzi:Z

    .line 245
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zze:Landroid/app/Activity;

    if-eq p1, v2, :cond_4c

    .line 247
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzj:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_4e

    .line 248
    :try_start_1a
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zze:Landroid/app/Activity;

    .line 249
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzf:Z

    .line 250
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_49

    .line 251
    :try_start_1f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzcb:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 252
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v2, 0x0

    .line 253
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzg:Lcom/google/android/gms/measurement/internal/zzik;

    .line 254
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzit;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzit;-><init>(Lcom/google/android/gms/measurement/internal/zzin;)V

    .line 255
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V
    :try_end_48
    .catchall {:try_start_1f .. :try_end_48} :catchall_4e

    goto :goto_4c

    :catchall_49
    move-exception p1

    .line 250
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw p1

    .line 256
    :cond_4c
    :goto_4c
    monitor-exit v0

    goto :goto_51

    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_4e

    throw p1

    .line 257
    :cond_51
    :goto_51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzcb:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 258
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 259
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzg:Lcom/google/android/gms/measurement/internal/zzik;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    .line 260
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/zzin;)V

    .line 261
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void

    .line 263
    :cond_7c
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzin;->zzd(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v0

    .line 264
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzik;Z)V

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zze()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 267
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zze;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zza;J)V

    .line 268
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 8

    .line 229
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    if-nez p2, :cond_12

    return-void

    :cond_12
    const-string v0, "com.google.app_measurement.screen_service"

    .line 233
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1b

    return-void

    .line 236
    :cond_1b
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzik;

    const-string v1, "name"

    .line 237
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    .line 238
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 239
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzik;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 240
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzd:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zza(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    .line 78
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    if-nez v0, :cond_2e

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    .line 83
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_44

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 88
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-void

    :cond_44
    if-nez p3, :cond_52

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 92
    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzik;->zza:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_74

    if-eqz v1, :cond_74

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 97
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-void

    :cond_74
    const/16 v0, 0x64

    if-eqz p2, :cond_9a

    .line 100
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_84

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_9a

    .line 102
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_9a
    if-eqz p3, :cond_be

    .line 107
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a8

    .line 108
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_be

    .line 109
    :cond_a8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    .line 111
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 113
    :cond_be
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    if-nez p2, :cond_cb

    const-string v1, "null"

    goto :goto_cc

    :cond_cb
    move-object v1, p2

    :goto_cc
    const-string v2, "Setting current screen to name, class"

    .line 116
    invoke-virtual {v0, v2, v1, p3}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzik;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zzg()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzik;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 118
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzd:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 119
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzik;Z)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;J)V
    .registers 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Manual screen reporting is disabled."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1e
    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzj:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_21
    iget-boolean v2, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzi:Z

    if-nez v2, :cond_34

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Cannot log screen view event when the app is in the background."

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 21
    monitor-exit v1

    return-void

    :cond_34
    const/4 v2, 0x0

    if-eqz v0, :cond_92

    const-string v2, "screen_name"

    .line 23
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz v2, :cond_64

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4d

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_64

    .line 27
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v3, "Invalid screen name length for screen view. Length"

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    monitor-exit v1

    return-void

    :cond_64
    const-string v4, "screen_class"

    .line 31
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8f

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_78

    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_8f

    .line 35
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Invalid screen class length for screen view. Length"

    .line 37
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    monitor-exit v1

    return-void

    :cond_8f
    move-object v10, v2

    move-object v2, v4

    goto :goto_93

    :cond_92
    move-object v10, v2

    :goto_93
    if-nez v2, :cond_aa

    .line 40
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzin;->zze:Landroid/app/Activity;

    if-eqz v2, :cond_a8

    .line 41
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzin;->zze:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_aa

    :cond_a8
    const-string v2, "Activity"

    :cond_aa
    :goto_aa
    move-object v11, v2

    .line 43
    iget-boolean v2, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzf:Z

    if-eqz v2, :cond_d9

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    if-eqz v2, :cond_d9

    const/4 v2, 0x0

    .line 44
    iput-boolean v2, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzf:Z

    .line 45
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 46
    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzik;->zza:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_d9

    if-eqz v3, :cond_d9

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Ignoring call to log screen view event with duplicate parameters."

    .line 50
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 51
    monitor-exit v1

    return-void

    .line 52
    :cond_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_21 .. :try_end_da} :catchall_12e

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v1

    const-string v2, "Logging screen view with name, class"

    if-nez v10, :cond_e9

    const-string v3, "null"

    goto :goto_ea

    :cond_e9
    move-object v3, v10

    :goto_ea
    if-nez v11, :cond_ef

    const-string v4, "null"

    goto :goto_f0

    :cond_ef
    move-object v4, v11

    .line 57
    :goto_f0
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    if-nez v1, :cond_fa

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzc:Lcom/google/android/gms/measurement/internal/zzik;

    goto :goto_fc

    :cond_fa
    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    :goto_fc
    move-object v5, v1

    .line 59
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzik;

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zzg()J

    move-result-wide v12

    const/4 v14, 0x1

    move-object v9, v4

    move-wide/from16 v15, p2

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/measurement/internal/zzik;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 61
    iput-object v4, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    .line 62
    iput-object v5, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzc:Lcom/google/android/gms/measurement/internal/zzik;

    .line 63
    iput-object v4, v8, Lcom/google/android/gms/measurement/internal/zzin;->zzg:Lcom/google/android/gms/measurement/internal/zzik;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzim;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzim;-><init>(Lcom/google/android/gms/measurement/internal/zzin;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzik;J)V

    .line 66
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void

    :catchall_12e
    move-exception v0

    .line 52
    :try_start_12f
    monitor-exit v1
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    throw v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzik;)V
    .registers 4

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 208
    monitor-enter p0

    .line 209
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzl:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_16

    .line 210
    :cond_12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzl:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzk:Lcom/google/android/gms/measurement/internal/zzik;

    .line 212
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public final zzab()Lcom/google/android/gms/measurement/internal/zzik;
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb()V

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    return-object v0
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    .line 310
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    return-void
.end method

.method public final zzb(Landroid/app/Activity;)V
    .registers 6

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 271
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 272
    :try_start_10
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzi:Z

    const/4 v1, 0x1

    .line 273
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzf:Z

    .line 274
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p1

    .line 275
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 276
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzcb:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4c

    .line 277
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 278
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    .line 279
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzir;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzir;-><init>(Lcom/google/android/gms/measurement/internal/zzin;J)V

    .line 280
    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void

    .line 282
    :cond_4c
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzin;->zzd(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object p1

    .line 283
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzc:Lcom/google/android/gms/measurement/internal/zzik;

    .line 284
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lcom/google/android/gms/measurement/internal/zzik;

    .line 285
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zziq;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zziq;-><init>(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzik;J)V

    .line 286
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    .line 288
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    if-nez p2, :cond_12

    return-void

    .line 292
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzik;

    if-nez p1, :cond_1d

    return-void

    .line 295
    :cond_1d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 296
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzik;->zzc:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 297
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzik;->zza:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/String;

    const-string v1, "referrer_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    .line 299
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    .line 311
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    return-void
.end method

.method public final zzc(Landroid/app/Activity;)V
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzj:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zze:Landroid/app/Activity;

    if-ne p1, v1, :cond_a

    const/4 v1, 0x0

    .line 303
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zze:Landroid/app/Activity;

    .line 304
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 305
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 307
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_20
    move-exception p1

    .line 304
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    .line 312
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()V

    return-void
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zza;
    .registers 2

    .line 313
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzhh;
    .registers 2

    .line 314
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    .line 315
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzis;
    .registers 2

    .line 316
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzin;
    .registers 2

    .line 317
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Lcom/google/android/gms/measurement/internal/zzin;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzev;
    .registers 2

    .line 318
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzjw;
    .registers 2

    .line 319
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzai;
    .registers 2

    .line 320
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 321
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    .line 322
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzex;
    .registers 2

    .line 323
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzkw;
    .registers 2

    .line 324
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzfw;
    .registers 2

    .line 325
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 326
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzfl;
    .registers 2

    .line 327
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 328
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    .line 329
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method protected final zzz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
