.class final Lcom/google/android/gms/measurement/internal/zzo;
.super Lcom/google/android/gms/measurement/internal/zzkl;
.source "com.google.android.gms:play-services-measurement@@17.4.4"


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/zzq;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Ljava/lang/Long;

.field private zzf:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkk;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzkk;)V

    return-void
.end method

.method private final zza(I)Lcom/google/android/gms/measurement/internal/zzq;
    .registers 5

    .line 324
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzq;

    return-object p1

    .line 326
    :cond_19
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzq;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 327
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final zza(II)Z
    .registers 5

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return p1

    .line 331
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzq;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzq;)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .registers 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzc;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzk;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zza;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    .line 7
    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/util/Set;

    .line 9
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/util/Map;

    move-object/from16 v0, p4

    .line 10
    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzo;->zze:Ljava/lang/Long;

    move-object/from16 v0, p5

    .line 11
    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzf:Ljava/lang/Long;

    .line 13
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    .line 20
    :goto_46
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzna;->zzb()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzbf:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v13, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v13, 0x0

    .line 24
    :goto_5d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzna;->zzb()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzbe:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 26
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v14, 0x1

    goto :goto_74

    :cond_73
    const/4 v14, 0x0

    :goto_74
    if-eqz v1, :cond_b5

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzak()V

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 34
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    :try_start_93
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "events"

    const-string v6, "app_id = ?"

    new-array v7, v12, [Ljava/lang/String;

    aput-object v3, v7, v11

    .line 36
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_93 .. :try_end_a2} :catch_a3

    goto :goto_b5

    :catch_a3
    move-exception v0

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    .line 41
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error resetting session-scoped event counts. appId"

    .line 42
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :cond_b5
    :goto_b5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v14, :cond_c7

    if-eqz v13, :cond_c7

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzad;->zze(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 46
    :cond_c7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzad;->zzg(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zzb()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzaq;->zzcs:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 49
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v2

    if-nez v2, :cond_e7

    :cond_e5
    if-eqz v15, :cond_36f

    .line 51
    :cond_e7
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ef

    goto/16 :goto_36f

    .line 53
    :cond_ef
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_1da

    .line 56
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    .line 58
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    .line 61
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d8

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/zzad;->zzf(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 64
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11d
    :goto_11d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_1ce

    .line 67
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_14b

    goto/16 :goto_1ce

    .line 71
    :cond_14b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzg()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzc()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 72
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11d

    .line 74
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzib;->zzbl()Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object v9

    .line 75
    check-cast v9, Lcom/google/android/gms/internal/measurement/zzib$zza;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    move-result-object v8

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzg()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zza()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9, v11, v7}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 78
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;->zza()Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    const/4 v9, 0x0

    .line 79
    :goto_181
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzf()I

    move-result v11

    if-ge v9, v11, :cond_19f

    .line 81
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zzb;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcc$zzb;->zzb()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 82
    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19c

    .line 83
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    :cond_19c
    add-int/lit8 v9, v9, 0x1

    goto :goto_181

    :cond_19f
    const/4 v9, 0x0

    .line 85
    :goto_1a0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzh()I

    move-result v11

    if-ge v9, v11, :cond_1be

    .line 87
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzb()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 88
    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1bb

    .line 89
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    :cond_1bb
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a0

    .line 91
    :cond_1be
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d5

    .line 68
    :cond_1ce
    :goto_1ce
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1d5
    const/4 v11, 0x0

    goto/16 :goto_11d

    :cond_1d8
    move-object v11, v3

    goto :goto_1db

    :cond_1da
    move-object v11, v15

    .line 95
    :goto_1db
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1df
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 96
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    .line 97
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 98
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 101
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_247

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzf()I

    move-result v2

    if-nez v2, :cond_211

    goto :goto_247

    .line 104
    :cond_211
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zze()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_219
    :goto_219
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_247

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcc$zzb;

    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzb;->zza()Z

    move-result v4

    if-eqz v4, :cond_219

    .line 107
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzb;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 108
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzb;->zzc()Z

    move-result v8

    if-eqz v8, :cond_242

    .line 109
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzb;->zzd()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_243

    :cond_242
    const/4 v3, 0x0

    .line 111
    :goto_243
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_219

    .line 117
    :cond_247
    :goto_247
    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_28e

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzh()I

    move-result v2

    if-nez v2, :cond_255

    goto :goto_28e

    .line 120
    :cond_255
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzg()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25d
    :goto_25d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    .line 121
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zza()Z

    move-result v4

    if-eqz v4, :cond_25d

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzd()I

    move-result v4

    if-lez v4, :cond_25d

    .line 123
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 124
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzd()I

    move-result v9

    sub-int/2addr v9, v12

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zza(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 125
    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25d

    :cond_28e
    :goto_28e
    if-eqz v1, :cond_2d8

    const/4 v2, 0x0

    .line 130
    :goto_291
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzb()I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    if-ge v2, v3, :cond_2d8

    .line 132
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zza()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_2ca

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v3

    .line 135
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v12, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v3, v12, v4, v9}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzc()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_2ca

    .line 138
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    const/4 v3, 0x1

    goto :goto_2cb

    :cond_2ca
    const/4 v3, 0x0

    :goto_2cb
    if-nez v3, :cond_2d4

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d4
    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x1

    goto :goto_291

    .line 143
    :cond_2d8
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    if-eqz v14, :cond_353

    if-eqz v13, :cond_353

    .line 146
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_353

    .line 148
    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzf:Ljava/lang/Long;

    if-eqz v2, :cond_353

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzo;->zze:Ljava/lang/Long;

    if-nez v2, :cond_2fc

    goto :goto_353

    .line 150
    :cond_2fc
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_300
    :goto_300
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_353

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbu$zzb;->zzb()I

    move-result v3

    .line 152
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzf:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    .line 153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbu$zzb;->zzi()Z

    move-result v2

    if-eqz v2, :cond_328

    .line 154
    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzo;->zze:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    div-long v18, v18, v20

    .line 155
    :cond_328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33d

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_33d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_300

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_300

    .line 160
    :cond_353
    :goto_353
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzq;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v18, v11

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcc$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 161
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v18

    const/4 v12, 0x1

    goto/16 :goto_1df

    :cond_36f
    :goto_36f
    const/4 v11, 0x0

    .line 164
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-nez v0, :cond_502

    .line 165
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt;

    invoke-direct {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 166
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 167
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_386
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_502

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    .line 168
    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcc$zzc;)Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    move-result-object v5

    if-eqz v5, :cond_386

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v6

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v13, v8}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v8

    if-nez v8, :cond_3e6

    .line 175
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v8

    .line 176
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v8

    .line 177
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 178
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 179
    invoke-virtual {v8, v7, v9, v6}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzak;

    move-object v12, v6

    .line 181
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x1

    const-wide/16 v19, 0x1

    .line 182
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zze()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v12 .. v28}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_41b

    .line 184
    :cond_3e6
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzak;

    move-object/from16 v29, v6

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    move-object/from16 v30, v4

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    move-object/from16 v31, v4

    iget-wide v12, v8, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    const-wide/16 v14, 0x1

    add-long v32, v12, v14

    iget-wide v12, v8, Lcom/google/android/gms/measurement/internal/zzak;->zzd:J

    add-long v34, v12, v14

    iget-wide v12, v8, Lcom/google/android/gms/measurement/internal/zzak;->zze:J

    add-long v36, v12, v14

    iget-wide v12, v8, Lcom/google/android/gms/measurement/internal/zzak;->zzf:J

    move-wide/from16 v38, v12

    iget-wide v12, v8, Lcom/google/android/gms/measurement/internal/zzak;->zzg:J

    move-wide/from16 v40, v12

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzak;->zzh:Ljava/lang/Long;

    move-object/from16 v42, v4

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzak;->zzi:Ljava/lang/Long;

    move-object/from16 v43, v4

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzak;->zzj:Ljava/lang/Long;

    move-object/from16 v44, v4

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzak;->zzk:Ljava/lang/Boolean;

    move-object/from16 v45, v4

    invoke-direct/range {v29 .. v45}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 188
    :goto_41b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 189
    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    .line 191
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_458

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v9

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v9, v12, v4}, Lcom/google/android/gms/measurement/internal/zzad;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 195
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zzb()Z

    move-result v12

    if-eqz v12, :cond_44e

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v12

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzaq;->zzcs:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 197
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v12

    if-nez v12, :cond_455

    :cond_44e
    if-nez v9, :cond_455

    .line 199
    new-instance v9, Landroidx/collection/ArrayMap;

    invoke-direct {v9}, Landroidx/collection/ArrayMap;-><init>()V

    .line 200
    :cond_455
    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_458
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_460
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_386

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 204
    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/util/Set;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_48c

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v1, v13}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_460

    .line 208
    :cond_48c
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 209
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v12, 0x1

    :goto_49b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4ef

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    .line 210
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzs;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-direct {v14, v10, v13, v15, v12}, Lcom/google/android/gms/measurement/internal/zzs;-><init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbu$zzb;)V

    .line 211
    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzo;->zze:Ljava/lang/Long;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzf:Ljava/lang/Long;

    .line 212
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbu$zzb;->zzb()I

    move-result v12

    invoke-direct {v10, v15, v12}, Lcom/google/android/gms/measurement/internal/zzo;->zza(II)Z

    move-result v19

    move-object v12, v14

    move-object/from16 v21, v0

    move-object v0, v14

    move-object v14, v11

    move v11, v15

    move-object v15, v5

    move-wide/from16 v16, v7

    move-object/from16 v18, v6

    .line 213
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/gms/measurement/internal/zzs;->zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzcc$zzc;JLcom/google/android/gms/measurement/internal/zzak;Z)Z

    move-result v12

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v13

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzaq;->zzbc:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 215
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v13

    if-eqz v13, :cond_4e3

    if-nez v12, :cond_4e3

    .line 218
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4f2

    .line 220
    :cond_4e3
    invoke-direct {v10, v11}, Lcom/google/android/gms/measurement/internal/zzo;->zza(I)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v13

    .line 221
    invoke-virtual {v13, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzv;)V

    move v15, v11

    move-object/from16 v0, v21

    const/4 v11, 0x0

    goto :goto_49b

    :cond_4ef
    move-object/from16 v21, v0

    move v11, v15

    :goto_4f2
    if-nez v12, :cond_4fd

    .line 224
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4fd
    move-object/from16 v0, v21

    const/4 v11, 0x0

    goto/16 :goto_460

    .line 228
    :cond_502
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66b

    .line 229
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 230
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_511
    :goto_511
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    .line 232
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_551

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v5

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzad;->zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 237
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zzb()Z

    move-result v6

    if-eqz v6, :cond_547

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzaq;->zzcs:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 239
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v6

    if-nez v6, :cond_54e

    :cond_547
    if-nez v5, :cond_54e

    .line 241
    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    .line 242
    :cond_54e
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_551
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_559
    :goto_559
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_511

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 246
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_585

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_511

    .line 250
    :cond_585
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 251
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_594
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_65e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzbu$zze;

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzez;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_5ed

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v9

    .line 254
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v9

    .line 255
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 256
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zza()Z

    move-result v12

    if-eqz v12, :cond_5c6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzb()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_5c7

    :cond_5c6
    const/4 v12, 0x0

    .line 257
    :goto_5c7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v13

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzex;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Evaluating filter. audience, filter, property"

    .line 258
    invoke-virtual {v9, v14, v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v9

    .line 260
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v9

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzg()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzbu$zze;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Filter definition"

    invoke-virtual {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    :cond_5ed
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zza()Z

    move-result v9

    if-eqz v9, :cond_636

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzb()I

    move-result v9

    const/16 v11, 0x100

    if-le v9, v11, :cond_5fc

    goto :goto_636

    .line 270
    :cond_5fc
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzu;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v6, v8}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbu$zze;)V

    .line 271
    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzo;->zze:Ljava/lang/Long;

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzf:Ljava/lang/Long;

    .line 272
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzb()I

    move-result v8

    invoke-direct {v10, v6, v8}, Lcom/google/android/gms/measurement/internal/zzo;->zza(II)Z

    move-result v8

    .line 273
    invoke-virtual {v9, v11, v12, v3, v8}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzcc$zzk;Z)Z

    move-result v8

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v11

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzaq;->zzbc:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 275
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v11

    if-eqz v11, :cond_62d

    if-nez v8, :cond_62d

    .line 278
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_65e

    .line 280
    :cond_62d
    invoke-direct {v10, v6}, Lcom/google/android/gms/measurement/internal/zzo;->zza(I)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v11

    .line 281
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzv;)V

    goto/16 :goto_594

    .line 263
    :cond_636
    :goto_636
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v7

    .line 264
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v7

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    .line 265
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 266
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zza()Z

    move-result v11

    if-eqz v11, :cond_653

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzb()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_654

    :cond_653
    const/4 v8, 0x0

    :goto_654
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "Invalid property filter ID. appId, id"

    .line 267
    invoke-virtual {v7, v11, v9, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :cond_65e
    :goto_65e
    if-nez v8, :cond_559

    .line 284
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_559

    .line 288
    :cond_66b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 291
    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 293
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_67f
    :goto_67f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 294
    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzq;

    .line 296
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zza;

    move-result-object v3

    .line 297
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v4

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    .line 299
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    move-result-object v3

    .line 300
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkl;->zzak()V

    .line 301
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 302
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgj;->zzbi()[B

    move-result-object v3

    .line 305
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    .line 306
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "audience_id"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    .line 308
    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 309
    :try_start_6d4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzad;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "audience_filter_values"
    :try_end_6da
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6d4 .. :try_end_6da} :catch_6fa

    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 311
    :try_start_6dc
    invoke-virtual {v0, v3, v8, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    const-wide/16 v11, -0x1

    cmp-long v0, v6, v11

    if-nez v0, :cond_67f

    .line 313
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v3, "Failed to insert filter results (got -1). appId"

    .line 315
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6f7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6dc .. :try_end_6f7} :catch_6f8

    goto :goto_67f

    :catch_6f8
    move-exception v0

    goto :goto_6fc

    :catch_6fa
    move-exception v0

    const/4 v8, 0x0

    .line 318
    :goto_6fc
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v3

    .line 320
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error storing filter results. appId"

    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_67f

    :cond_70f
    return-object v1
.end method

.method protected final zze()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
