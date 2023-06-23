.class public final Lcom/google/android/gms/measurement/internal/zzes;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:I

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgd;J)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 2
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzg:J

    return-void
.end method

.method private final zzai()Ljava/lang/String;
    .registers 8

    .line 204
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqa;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzbq:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Disabled IID for tests."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-object v1

    .line 208
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_2f} :catch_7b

    if-nez v0, :cond_32

    return-object v1

    :cond_32
    :try_start_32
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 216
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 217
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4c} :catch_6e

    if-nez v2, :cond_4f

    return-object v1

    :cond_4f
    :try_start_4f
    const-string v3, "getFirebaseInstanceId"

    new-array v4, v6, [Ljava/lang/Class;

    .line 225
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    .line 226
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5f} :catch_60

    return-object v0

    .line 228
    :catch_60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-object v1

    .line 222
    :catch_6e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzj()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    :catch_7b
    return-object v1
.end method


# virtual methods
.method final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;
    .registers 38

    move-object/from16 v0, p0

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb()V

    .line 147
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzn;

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzab()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzac()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 152
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Ljava/lang/String;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzaf()I

    move-result v1

    int-to-long v5, v1

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 157
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzd:Ljava/lang/String;

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzf()J

    move-result-wide v8

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 164
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzf:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_4f

    .line 165
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzf:J

    .line 166
    :cond_4f
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzf:J

    .line 167
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 168
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzab()Z

    move-result v14

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zzq:Z

    const/4 v15, 0x1

    xor-int/lit8 v16, v1, 0x1

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb()V

    .line 173
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzab()Z

    move-result v1

    const/16 v17, 0x0

    if-nez v1, :cond_73

    move-object/from16 v18, v17

    goto :goto_79

    .line 175
    :cond_73
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzai()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    :goto_79
    const-wide/16 v19, 0x0

    .line 176
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 178
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v15

    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/zzfl;->zzh:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfp;->zza()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 179
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v24, v22, v12

    if-nez v24, :cond_9a

    .line 180
    iget-wide v12, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zza:J

    move-wide/from16 v23, v12

    move/from16 v22, v14

    goto :goto_a8

    .line 181
    :cond_9a
    iget-wide v12, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zza:J

    move/from16 v22, v14

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-wide/from16 v23, v12

    .line 183
    :goto_a8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzag()I

    move-result v25

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzi()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb()V

    const-string v12, "google_analytics_ssaid_collection_enabled"

    .line 187
    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v12, 0x0

    if-eqz v1, :cond_d1

    .line 188
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_cf

    goto :goto_d1

    :cond_cf
    const/4 v1, 0x0

    goto :goto_d2

    :cond_d1
    :goto_d1
    const/4 v1, 0x1

    :goto_d2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 192
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzg()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v13, "deferred_analytics_collection"

    invoke-interface {v1, v13, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzad()Ljava/lang/String;

    move-result-object v29

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    const-string v12, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_fe

    move-object/from16 v31, v17

    goto :goto_10a

    .line 196
    :cond_fe
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v12, 0x1

    xor-int/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v31, v1

    .line 198
    :goto_10a
    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzg:J

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzaq;->zzbb:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 200
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzes;->zzh:Ljava/util/List;

    move-object/from16 v32, v1

    goto :goto_11f

    :cond_11d
    move-object/from16 v32, v17

    .line 202
    :goto_11f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zzb()Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzaq;->zzbn:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzes;->zzae()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v33, v1

    goto :goto_13a

    :cond_138
    move-object/from16 v33, v17

    :goto_13a
    move-object/from16 v1, v30

    move-object/from16 v12, p1

    move/from16 v13, v22

    move-wide/from16 v34, v14

    move/from16 v14, v16

    move-object/from16 v15, v18

    move-wide/from16 v16, v19

    move-wide/from16 v18, v23

    move/from16 v20, v25

    move/from16 v21, v26

    move/from16 v22, v27

    move/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v31

    move-wide/from16 v26, v34

    move-object/from16 v28, v32

    move-object/from16 v29, v33

    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    return-object v30
.end method

.method public final bridge synthetic zza()V
    .registers 1

    .line 243
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    return-void
.end method

.method protected final zzaa()V
    .registers 12

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "Unknown"

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "unknown"

    const/high16 v6, -0x80000000

    if-nez v1, :cond_2e

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v7

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 15
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    move-object v8, v2

    goto :goto_8e

    .line 16
    :cond_2e
    :try_start_2e
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_32} :catch_33

    goto :goto_44

    .line 19
    :catch_33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v7

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v7

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_44
    if-nez v5, :cond_49

    const-string v5, "manual_install"

    goto :goto_52

    :cond_49
    const-string v7, "com.android.vending"

    .line 24
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    move-object v5, v3

    .line 26
    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_2c

    .line 28
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 30
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_71

    .line 31
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_70} :catch_7a

    goto :goto_72

    :cond_71
    move-object v8, v2

    .line 32
    :goto_72
    :try_start_72
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 33
    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_76
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_72 .. :try_end_76} :catch_77

    goto :goto_8e

    :catch_77
    move-object v7, v2

    move-object v2, v8

    goto :goto_7b

    :catch_7a
    move-object v7, v2

    .line 36
    :goto_7b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v8

    .line 37
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v8

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    .line 39
    invoke-virtual {v8, v10, v9, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v2

    move-object v2, v7

    .line 40
    :goto_8e
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zza:Ljava/lang/String;

    .line 41
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzd:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzb:Ljava/lang/String;

    .line 43
    iput v6, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzc:I

    .line 44
    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/zzes;->zze:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 45
    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzf:J

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleServices;->initialize(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_b2

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_b2

    const/4 v6, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v6, 0x0

    .line 50
    :goto_b3
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 51
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_cf

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 52
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zzp()Ljava/lang/String;

    move-result-object v7

    const-string v8, "am"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cf

    const/4 v7, 0x1

    goto :goto_d0

    :cond_cf
    const/4 v7, 0x0

    :goto_d0
    or-int/2addr v6, v7

    if-nez v6, :cond_fc

    if-nez v2, :cond_e3

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzg()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v8, "GoogleService failed to initialize (no status)"

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto :goto_fc

    .line 58
    :cond_e3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v8

    .line 59
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzez;->zzg()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v8

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    const-string v10, "GoogleService failed to initialize, status"

    .line 62
    invoke-virtual {v8, v10, v9, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_fc
    :goto_fc
    if-eqz v6, :cond_196

    .line 66
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zzac()I

    move-result v2

    packed-switch v2, :pswitch_data_2ca

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzv()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v8, "App measurement disabled"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzg()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v8, "Invalid scion state in identity"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto/16 :goto_192

    .line 70
    :pswitch_123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzv()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v8, "App measurement disabled via the global data collection setting"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto :goto_192

    .line 82
    :pswitch_131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    .line 83
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 84
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto :goto_192

    .line 76
    :pswitch_13f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v8, "App measurement disabled via the init parameters"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto :goto_192

    .line 80
    :pswitch_14d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzv()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v8, "App measurement disabled via the manifest"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto :goto_192

    .line 68
    :pswitch_15b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzv()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto :goto_192

    .line 74
    :pswitch_169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v8, "App measurement deactivated via the init parameters"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto :goto_192

    .line 78
    :pswitch_177
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzv()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v8, "App measurement deactivated via the manifest"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto :goto_192

    .line 72
    :pswitch_185
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v8, "App measurement collection enabled"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    :goto_192
    if-nez v2, :cond_196

    const/4 v2, 0x1

    goto :goto_197

    :cond_196
    const/4 v2, 0x0

    .line 90
    :goto_197
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzj:Ljava/lang/String;

    .line 91
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzk:Ljava/lang/String;

    .line 92
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzl:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    if-eqz v7, :cond_1aa

    .line 95
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zzo()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzk:Ljava/lang/String;

    .line 96
    :cond_1aa
    :try_start_1aa
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpu;->zzb()Z

    move-result v6

    if-eqz v6, :cond_1c7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzaq;->zzcp:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v6

    if-eqz v6, :cond_1c7

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v6

    const-string v7, "google_app_id"

    .line 98
    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/zzil;->zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1cb

    .line 100
    :cond_1c7
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->getGoogleAppId()Ljava/lang/String;

    move-result-object v6

    .line 101
    :goto_1cb
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1d3

    move-object v7, v3

    goto :goto_1d4

    :cond_1d3
    move-object v7, v6

    :goto_1d4
    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzj:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zzb()Z

    move-result v7
    :try_end_1da
    .catch Ljava/lang/IllegalStateException; {:try_start_1aa .. :try_end_1da} :catch_24a

    const-string v8, "admob_app_id"

    if-eqz v7, :cond_216

    :try_start_1de
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzaq;->zzbn:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v7

    if-eqz v7, :cond_216

    .line 103
    new-instance v7, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    const-string v9, "ga_app_id"

    .line 104
    invoke-virtual {v7, v9}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 105
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_200

    goto :goto_201

    :cond_200
    move-object v3, v9

    :goto_201
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzl:Ljava/lang/String;

    .line 106
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20f

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22b

    .line 107
    :cond_20f
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzk:Ljava/lang/String;

    goto :goto_22b

    .line 109
    :cond_216
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22b

    .line 110
    new-instance v3, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v3, v8}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzk:Ljava/lang/String;

    :cond_22b
    :goto_22b
    if-eqz v2, :cond_25c

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v3, "App measurement enabled for app package, google app id"

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzes;->zza:Ljava/lang/String;

    .line 115
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzj:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_244

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzk:Ljava/lang/String;

    goto :goto_246

    :cond_244
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzj:Ljava/lang/String;

    .line 116
    :goto_246
    invoke-virtual {v2, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_249
    .catch Ljava/lang/IllegalStateException; {:try_start_1de .. :try_end_249} :catch_24a

    goto :goto_25c

    :catch_24a
    move-exception v2

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v3

    .line 121
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Fetching Google App Id failed with exception. appId"

    .line 122
    invoke-virtual {v3, v6, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25c
    :goto_25c
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzh:Ljava/util/List;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzbb:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    const-string v2, "analytics.safelisted_events"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2ac

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_28f

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v3, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    :goto_28d
    const/4 v5, 0x0

    goto :goto_2ac

    .line 132
    :cond_28f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_293
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v6

    const-string v7, "safelisted event"

    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_293

    goto :goto_28d

    :cond_2ac
    :goto_2ac
    if-eqz v5, :cond_2b0

    .line 138
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzh:Ljava/util/List;

    .line 139
    :cond_2b0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2c6

    if-eqz v1, :cond_2c3

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzi:I

    return-void

    .line 142
    :cond_2c3
    iput v4, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzi:I

    return-void

    .line 143
    :cond_2c6
    iput v4, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzi:I

    return-void

    nop

    :pswitch_data_2ca
    .packed-switch 0x0
        :pswitch_185
        :pswitch_177
        :pswitch_169
        :pswitch_15b
        :pswitch_14d
        :pswitch_13f
        :pswitch_131
        :pswitch_123
    .end packed-switch
.end method

.method final zzab()Ljava/lang/String;
    .registers 2

    .line 230
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zza:Ljava/lang/String;

    return-object v0
.end method

.method final zzac()Ljava/lang/String;
    .registers 2

    .line 232
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method final zzad()Ljava/lang/String;
    .registers 2

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method final zzae()Ljava/lang/String;
    .registers 2

    .line 236
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method final zzaf()I
    .registers 2

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 239
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzc:I

    return v0
.end method

.method final zzag()I
    .registers 2

    .line 240
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 241
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzi:I

    return v0
.end method

.method final zzah()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzh:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    .line 244
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    .line 245
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    .line 246
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()V

    return-void
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zza;
    .registers 2

    .line 247
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzhh;
    .registers 2

    .line 248
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    .line 249
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzis;
    .registers 2

    .line 250
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzin;
    .registers 2

    .line 251
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Lcom/google/android/gms/measurement/internal/zzin;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzev;
    .registers 2

    .line 252
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzjw;
    .registers 2

    .line 253
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzai;
    .registers 2

    .line 254
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 255
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    .line 256
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzex;
    .registers 2

    .line 257
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzkw;
    .registers 2

    .line 258
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzfw;
    .registers 2

    .line 259
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 260
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzfl;
    .registers 2

    .line 261
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 262
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    .line 263
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method protected final zzz()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
