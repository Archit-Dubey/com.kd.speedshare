.class final Lcom/google/android/gms/measurement/internal/zzii;
.super Lcom/google/android/gms/measurement/internal/zzkl;
.source "com.google.android.gms:play-services-measurement@@17.4.4"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkk;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzkk;)V

    return-void
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 229
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzao;Ljava/lang/String;)[B
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    const-string v2, "_r"

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzii;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zzae()V

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzaq;->zzax:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v3, v15, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_33

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B

    return-object v0

    .line 11
    :cond_33
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    const-string v5, "_iap"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v14, 0x0

    if-nez v3, :cond_58

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    const-string v5, "_iapx"

    .line 12
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    .line 15
    invoke-virtual {v2, v3, v15, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v14

    .line 17
    :cond_58
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzcc$zzf$zza;

    move-result-object v13

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzad;->zzf()V

    .line 19
    :try_start_63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v11

    if-nez v11, :cond_84

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_7c
    .catchall {:try_start_63 .. :try_end_7c} :catchall_5b7

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->zzh()V

    return-object v0

    .line 25
    :cond_84
    :try_start_84
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzr()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_99
    .catchall {:try_start_84 .. :try_end_99} :catchall_5b7

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->zzh()V

    return-object v0

    .line 30
    :cond_a1
    :try_start_a1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzg;->zzbf()Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v3

    const-string v5, "android"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v12

    .line 31
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 32
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 33
    :cond_c1
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d2

    .line 34
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 35
    :cond_d2
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e3

    .line 36
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 37
    :cond_e3
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v3, v5, v7

    if-eqz v3, :cond_f6

    .line 38
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 40
    :cond_f6
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v3

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zzb()Z

    move-result v3

    if-eqz v3, :cond_151

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzaq;->zzbn:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v3

    if-eqz v3, :cond_151

    .line 43
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12d

    .line 44
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    goto :goto_174

    .line 45
    :cond_12d
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13f

    .line 46
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    goto :goto_174

    .line 47
    :cond_13f
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_174

    .line 48
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    goto :goto_174

    .line 49
    :cond_151
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_163

    .line 50
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    goto :goto_174

    .line 51
    :cond_163
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_174

    .line 52
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 53
    :cond_174
    :goto_174
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 54
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzii;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zzab()Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzy;->zzg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 56
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzj()Ljava/lang/String;

    .line 57
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19d

    .line 58
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 60
    :cond_19d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 61
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v5

    if-eqz v5, :cond_1f8

    if-eqz v3, :cond_1f8

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    .line 62
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1b9
    .catchall {:try_start_a1 .. :try_end_1b9} :catchall_5b7

    if-nez v5, :cond_1f8

    .line 63
    :try_start_1bb
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    .line 64
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-static {v5, v6}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;
    :try_end_1cc
    .catch Ljava/lang/SecurityException; {:try_start_1bb .. :try_end_1cc} :catch_1dc
    .catchall {:try_start_1bb .. :try_end_1cc} :catchall_5b7

    .line 73
    :try_start_1cc
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_1f8

    .line 74
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    goto :goto_1f8

    :catch_1dc
    move-exception v0

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v3, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_1f0
    .catchall {:try_start_1cc .. :try_end_1f0} :catchall_5b7

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->zzh()V

    return-object v0

    .line 76
    :cond_1f8
    :goto_1f8
    :try_start_1f8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgw;->zzaa()V

    .line 78
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 79
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v3

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    .line 81
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgw;->zzaa()V

    .line 82
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 83
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v3

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzf()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v3

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;
    :try_end_22a
    .catchall {:try_start_1f8 .. :try_end_22a} :catchall_5b7

    .line 87
    :try_start_22a
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;
    :try_end_23b
    .catch Ljava/lang/SecurityException; {:try_start_22a .. :try_end_23b} :catch_59b
    .catchall {:try_start_22a .. :try_end_23b} :catchall_5b7

    .line 96
    :try_start_23b
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24c

    .line 97
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 99
    :cond_24c
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 102
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_25c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_273

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzkt;

    const-string v8, "_lte"

    .line 103
    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzkt;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25c

    goto :goto_274

    :cond_273
    move-object v7, v14

    :goto_274
    const-wide/16 v23, 0x0

    if-eqz v7, :cond_27c

    .line 107
    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzkt;->zze:Ljava/lang/Object;

    if-nez v6, :cond_29f

    .line 108
    :cond_27c
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkt;

    const-string v18, "auto"

    const-string v19, "_lte"

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    .line 110
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v6

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 111
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Lcom/google/android/gms/measurement/internal/zzkt;)Z

    .line 113
    :cond_29f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzg()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    const-string v7, "Checking account type status for ad personalization signals"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzj()Z

    move-result v6

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_319

    .line 116
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v9

    if-eqz v9, :cond_319

    .line 118
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzj()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zze(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_319

    .line 119
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v9

    const-string v10, "Turning off ad personalization due to account type"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 120
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 121
    :goto_2e1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2fd

    .line 122
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzkt;

    const-string v14, "_npa"

    .line 123
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkt;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2fb

    .line 124
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_2fd

    :cond_2fb
    const/4 v14, 0x0

    goto :goto_2e1

    .line 127
    :cond_2fd
    :goto_2fd
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzkt;

    const-string v18, "auto"

    const-string v19, "_npa"

    .line 128
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    .line 129
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v9

    move-object/from16 v17, v6

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 130
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_319
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    .line 132
    :goto_31f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_35d

    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;

    move-result-object v6

    .line 134
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkt;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;

    move-result-object v6

    .line 135
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzkt;

    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/zzkt;->zzd:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;

    move-result-object v6

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzg()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v9

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkt;->zze:Ljava/lang/Object;

    invoke-virtual {v9, v6, v10}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_31f

    .line 140
    :cond_35d
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 141
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzof;->zzb()Z

    move-result v3

    if-eqz v3, :cond_3a9

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzaq;->zzcn:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v3

    if-eqz v3, :cond_3a9

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzaq;->zzco:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v3

    if-eqz v3, :cond_3a9

    .line 144
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(Lcom/google/android/gms/measurement/internal/zzao;)Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v3

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Landroid/os/Bundle;

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/google/android/gms/measurement/internal/zzad;->zzi(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v4

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/zzfd;I)V

    .line 149
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Landroid/os/Bundle;

    goto :goto_3af

    .line 151
    :cond_3a9
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzb()Landroid/os/Bundle;

    move-result-object v3

    :goto_3af
    move-object v14, v3

    const-string v3, "_c"

    .line 152
    invoke-virtual {v14, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v3

    const-string v4, "Marking in-app purchase as real-time"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v14, v2, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_o"

    .line 155
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzkw;->zzf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f2

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    const-string v4, "_dbg"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v14, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v14, v2, v4}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :cond_3f2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v2

    if-nez v2, :cond_432

    .line 162
    new-instance v17, Lcom/google/android/gms/measurement/internal/zzak;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    const-wide/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v11, v18

    move-object/from16 v27, v13

    move-object/from16 v13, v16

    move-object/from16 v18, v14

    const/16 v19, 0x0

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v12, v17

    move-wide/from16 v9, v23

    goto :goto_447

    :cond_432
    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v18, v14

    const/16 v19, 0x0

    .line 163
    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzak;->zzf:J

    .line 164
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    .line 165
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzak;->zza(J)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v17

    move-wide v9, v3

    move-object/from16 v12, v17

    .line 166
    :goto_447
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 167
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzal;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzii;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzc:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    move-object v2, v13

    move-object/from16 v5, p2

    move-object/from16 v11, v18

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 168
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;

    move-result-object v2

    iget-wide v3, v13, Lcom/google/android/gms/measurement/internal/zzal;->zzc:J

    .line 169
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;

    move-result-object v2

    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzal;->zzb:Ljava/lang/String;

    .line 170
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;

    move-result-object v2

    iget-wide v3, v13, Lcom/google/android/gms/measurement/internal/zzal;->zzd:J

    .line 171
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;

    move-result-object v2

    .line 172
    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzal;->zze:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzan;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;

    move-result-object v5

    .line 174
    iget-object v6, v13, Lcom/google/android/gms/measurement/internal/zzal;->zze:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzg()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;

    goto :goto_47c

    :cond_4a1
    move-object/from16 v3, v26

    .line 179
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v4

    .line 180
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzh;->zza()Lcom/google/android/gms/internal/measurement/zzcc$zzh$zza;

    move-result-object v5

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzcc$zzd$zza;

    move-result-object v6

    iget-wide v7, v12, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    .line 182
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcc$zzd$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcc$zzd$zza;

    move-result-object v6

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    .line 183
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzcc$zzd$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcc$zzd$zza;

    move-result-object v0

    .line 184
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzcc$zzh$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zzd$zza;)Lcom/google/android/gms/internal/measurement/zzcc$zzh$zza;

    move-result-object v0

    .line 185
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->e_()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v5

    .line 188
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v6

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 190
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzd()Ljava/util/List;

    move-result-object v8

    .line 191
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;->zzf()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 192
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;->zzf()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 193
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 195
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;->zze()Z

    move-result v0

    if-eqz v0, :cond_4fe

    .line 197
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;->zzf()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v0

    .line 198
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;->zzf()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 199
    :cond_4fe
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzf;->zzk()J

    move-result-wide v4

    cmp-long v0, v4, v23

    if-eqz v0, :cond_509

    .line 201
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 202
    :cond_509
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzf;->zzj()J

    move-result-wide v6

    cmp-long v0, v6, v23

    if-eqz v0, :cond_515

    .line 204
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    goto :goto_51c

    :cond_515
    cmp-long v0, v4, v23

    if-eqz v0, :cond_51c

    .line 206
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    .line 207
    :cond_51c
    :goto_51c
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzf;->zzv()V

    .line 209
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzf;->zzs()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v0

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzf()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v0

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 212
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;

    move-object/from16 v0, v27

    .line 213
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzcc$zzf$zza;

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzf()J

    move-result-wide v4

    move-object/from16 v2, v25

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zza(J)V

    .line 215
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzg$zza;->zzg()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(J)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->b_()V
    :try_end_56c
    .catchall {:try_start_23b .. :try_end_56c} :catchall_5b7

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->zzh()V

    .line 222
    :try_start_573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzg()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zzbi()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzc([B)[B

    move-result-object v0
    :try_end_587
    .catch Ljava/io/IOException; {:try_start_573 .. :try_end_587} :catch_588

    return-object v0

    :catch_588
    move-exception v0

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    .line 226
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    .line 227
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v19

    :catch_59b
    move-exception v0

    .line 92
    :try_start_59c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v3, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_5af
    .catchall {:try_start_59c .. :try_end_5af} :catchall_5b7

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->zzh()V

    return-object v0

    :catchall_5b7
    move-exception v0

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->zzh()V

    .line 221
    goto :goto_5c1

    :goto_5c0
    throw v0

    :goto_5c1
    goto :goto_5c0
.end method

.method protected final zze()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
