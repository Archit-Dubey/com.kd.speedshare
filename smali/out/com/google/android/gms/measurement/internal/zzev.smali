.class public final Lcom/google/android/gms/measurement/internal/zzev;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzeu;

.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgd;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    .line 4
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzeu;-><init>(Lcom/google/android/gms/measurement/internal/zzev;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zza:Lcom/google/android/gms/measurement/internal/zzeu;

    return-void
.end method

.method private static zza(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    const-string v2, "messages"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "rowid"

    const/4 v10, 0x0

    aput-object v4, v3, v10

    const-string v4, "type=?"

    new-array v5, v1, [Ljava/lang/String;

    const-string v1, "3"

    aput-object v1, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "rowid desc"

    const-string v9, "1"

    move-object v1, p0

    .line 301
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 303
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_36

    if-eqz v0, :cond_2d

    .line 305
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2d
    return-wide v1

    :cond_2e
    if-eqz v0, :cond_33

    .line 309
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_33
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_36
    move-exception p0

    if-eqz v0, :cond_3c

    .line 312
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_3c
    throw p0
.end method

.method private final zza(I[B)Z
    .registers 19

    move-object/from16 v1, p0

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb()V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 19
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    return v2

    .line 21
    :cond_e
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 22
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v4, p2

    .line 23
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    :goto_26
    if-ge v5, v4, :cond_12c

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 28
    :try_start_2a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2a .. :try_end_2e} :catch_fe
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2a .. :try_end_2e} :catch_ec
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_2e} :catch_c0
    .catchall {:try_start_2a .. :try_end_2e} :catchall_bd

    if-nez v9, :cond_38

    .line 30
    :try_start_30
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_30 .. :try_end_32} :catch_bb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_30 .. :try_end_32} :catch_ed
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_32} :catch_b7
    .catchall {:try_start_30 .. :try_end_32} :catchall_120

    if-eqz v9, :cond_37

    .line 32
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_37
    return v2

    .line 34
    :cond_38
    :try_start_38
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v10, 0x0

    const-string v0, "select count(1) from messages"

    .line 36
    invoke-virtual {v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_38 .. :try_end_43} :catch_bb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_38 .. :try_end_43} :catch_ed
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_43} :catch_b7
    .catchall {:try_start_38 .. :try_end_43} :catchall_120

    if-eqz v12, :cond_59

    .line 37
    :try_start_45
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 38
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_45 .. :try_end_4f} :catch_55
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_45 .. :try_end_4f} :catch_b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_4f} :catch_53
    .catchall {:try_start_45 .. :try_end_4f} :catchall_50

    goto :goto_59

    :catchall_50
    move-exception v0

    goto/16 :goto_ea

    :catch_53
    move-exception v0

    goto :goto_b9

    :catch_55
    move-exception v0

    move-object v7, v12

    goto/16 :goto_100

    :cond_59
    :goto_59
    const-string v0, "messages"

    const-wide/32 v13, 0x186a0

    cmp-long v15, v10, v13

    if-ltz v15, :cond_a0

    .line 40
    :try_start_62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v15

    const-string v4, "Data loss, local db full"

    invoke-virtual {v15, v4}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    sub-long/2addr v13, v10

    const-wide/16 v10, 0x1

    add-long/2addr v13, v10

    const-string v4, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v10, v8, [Ljava/lang/String;

    .line 43
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 44
    invoke-virtual {v9, v0, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v10, v4

    cmp-long v4, v10, v13

    if-eqz v4, :cond_a0

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v4

    const-string v15, "Different delete count than expected in local db. expected, received, difference"

    .line 48
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 49
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long/2addr v13, v10

    .line 50
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 51
    invoke-virtual {v4, v15, v2, v8, v10}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :cond_a0
    invoke-virtual {v9, v0, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 53
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 54
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_62 .. :try_end_a9} :catch_55
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_62 .. :try_end_a9} :catch_b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_62 .. :try_end_a9} :catch_53
    .catchall {:try_start_62 .. :try_end_a9} :catchall_50

    if-eqz v12, :cond_ae

    .line 56
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_ae
    if-eqz v9, :cond_b3

    .line 58
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b3
    const/4 v2, 0x1

    return v2

    :catch_b5
    move-object v7, v12

    goto :goto_ed

    :catch_b7
    move-exception v0

    move-object v12, v7

    :goto_b9
    move-object v7, v9

    goto :goto_c2

    :catch_bb
    move-exception v0

    goto :goto_100

    :catchall_bd
    move-exception v0

    move-object v9, v7

    goto :goto_121

    :catch_c0
    move-exception v0

    move-object v12, v7

    :goto_c2
    if-eqz v7, :cond_cd

    .line 75
    :try_start_c4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 76
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 77
    :cond_cd
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 78
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z
    :try_end_dd
    .catchall {:try_start_c4 .. :try_end_dd} :catchall_e8

    if-eqz v12, :cond_e2

    .line 80
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e2
    if-eqz v7, :cond_11a

    .line 82
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_11a

    :catchall_e8
    move-exception v0

    move-object v9, v7

    :goto_ea
    move-object v7, v12

    goto :goto_121

    :catch_ec
    move-object v9, v7

    :catch_ed
    :goto_ed
    int-to-long v10, v6

    .line 68
    :try_start_ee
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_120

    add-int/lit8 v6, v6, 0x14

    if-eqz v7, :cond_f8

    .line 71
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_f8
    if-eqz v9, :cond_11a

    .line 73
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_11a

    :catch_fe
    move-exception v0

    move-object v9, v7

    .line 61
    :goto_100
    :try_start_100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 62
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z
    :try_end_110
    .catchall {:try_start_100 .. :try_end_110} :catchall_120

    if-eqz v7, :cond_115

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_115
    if-eqz v9, :cond_11a

    .line 66
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_11a
    :goto_11a
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_26

    :catchall_120
    move-exception v0

    :goto_121
    if-eqz v7, :cond_126

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_126
    if-eqz v9, :cond_12b

    .line 86
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    :cond_12b
    throw v0

    .line 89
    :cond_12c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private final zzae()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 314
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 316
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zza:Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z

    return-object v1

    :cond_12
    return-object v0
.end method

.method private final zzaf()Z
    .registers 3

    .line 321
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    .line 323
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final zza(I)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Error reading entries from local database"

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb()V

    .line 120
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    return-object v3

    .line 122
    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzaf()Z

    move-result v0

    if-nez v0, :cond_1c

    return-object v4

    :cond_1c
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    :goto_20
    if-ge v7, v5, :cond_21d

    const/4 v9, 0x1

    .line 129
    :try_start_23
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_23 .. :try_end_27} :catch_1f0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_23 .. :try_end_27} :catch_1dd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_27} :catch_1b7
    .catchall {:try_start_23 .. :try_end_27} :catchall_1b3

    if-nez v15, :cond_3c

    .line 131
    :try_start_29
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_29 .. :try_end_2b} :catch_38
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_29 .. :try_end_2b} :catch_1ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2b} :catch_34
    .catchall {:try_start_29 .. :try_end_2b} :catchall_31

    if-eqz v15, :cond_30

    .line 133
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_30
    return-object v3

    :catchall_31
    move-exception v0

    goto/16 :goto_212

    :catch_34
    move-exception v0

    move-object v10, v3

    goto/16 :goto_1ba

    :catch_38
    move-exception v0

    move-object v10, v3

    goto/16 :goto_1f3

    .line 135
    :cond_3c
    :try_start_3c
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 136
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v10
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3c .. :try_end_43} :catch_1af
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3c .. :try_end_43} :catch_1ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_43} :catch_1a7
    .catchall {:try_start_3c .. :try_end_43} :catchall_1a2

    const-wide/16 v19, -0x1

    cmp-long v0, v10, v19

    if-eqz v0, :cond_56

    :try_start_49
    const-string v0, "rowid<?"

    new-array v12, v9, [Ljava/lang/String;

    .line 141
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v6
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_49 .. :try_end_53} :catch_38
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_49 .. :try_end_53} :catch_1ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_53} :catch_34
    .catchall {:try_start_49 .. :try_end_53} :catchall_31

    move-object v13, v0

    move-object v14, v12

    goto :goto_58

    :cond_56
    move-object v13, v3

    move-object v14, v13

    :goto_58
    :try_start_58
    const-string v11, "messages"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const-string v10, "rowid"

    aput-object v10, v12, v6

    const-string v10, "type"

    aput-object v10, v12, v9

    const-string v10, "entry"

    const/4 v5, 0x2

    aput-object v10, v12, v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid asc"

    const/16 v10, 0x64

    .line 143
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_58 .. :try_end_76} :catch_1af
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_58 .. :try_end_76} :catch_1ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_58 .. :try_end_76} :catch_1a7
    .catchall {:try_start_58 .. :try_end_76} :catchall_1a2

    move-object v10, v15

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v21

    .line 144
    :try_start_80
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_84
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_80 .. :try_end_84} :catch_19f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_80 .. :try_end_84} :catch_1ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_80 .. :try_end_84} :catch_19c
    .catchall {:try_start_80 .. :try_end_84} :catchall_199

    .line 146
    :cond_84
    :goto_84
    :try_start_84
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_158

    .line 147
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 148
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 149
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    if-nez v11, :cond_cb

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_84 .. :try_end_9c} :catch_195
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_84 .. :try_end_9c} :catch_193
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_84 .. :try_end_9c} :catch_190
    .catchall {:try_start_84 .. :try_end_9c} :catchall_18c

    .line 152
    :try_start_9c
    array-length v13, v12

    invoke-virtual {v11, v12, v6, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 153
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzao;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzao;
    :try_end_ab
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_9c .. :try_end_ab} :catch_b6
    .catchall {:try_start_9c .. :try_end_ab} :catchall_b4

    .line 155
    :try_start_ab
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    if-eqz v12, :cond_84

    .line 164
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ab .. :try_end_b3} :catch_195
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ab .. :try_end_b3} :catch_193
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ab .. :try_end_b3} :catch_190
    .catchall {:try_start_ab .. :try_end_b3} :catchall_18c

    goto :goto_84

    :catchall_b4
    move-exception v0

    goto :goto_c7

    .line 158
    :catch_b6
    :try_start_b6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v12

    const-string v13, "Failed to load event from local database"

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_b6 .. :try_end_c3} :catchall_b4

    .line 159
    :try_start_c3
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    goto :goto_84

    .line 161
    :goto_c7
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw v0

    :cond_cb
    if-ne v11, v9, :cond_101

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_d1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c3 .. :try_end_d1} :catch_195
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c3 .. :try_end_d1} :catch_193
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c3 .. :try_end_d1} :catch_190
    .catchall {:try_start_c3 .. :try_end_d1} :catchall_18c

    .line 168
    :try_start_d1
    array-length v13, v12

    invoke-virtual {v11, v12, v6, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 169
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 170
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzkr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzkr;
    :try_end_e0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_d1 .. :try_end_e0} :catch_e6
    .catchall {:try_start_d1 .. :try_end_e0} :catchall_e4

    .line 171
    :try_start_e0
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_e3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e0 .. :try_end_e3} :catch_195
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e0 .. :try_end_e3} :catch_193
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e0 .. :try_end_e3} :catch_190
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_18c

    goto :goto_f7

    :catchall_e4
    move-exception v0

    goto :goto_fd

    .line 174
    :catch_e6
    :try_start_e6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v12

    const-string v13, "Failed to load user property from local database"

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_e6 .. :try_end_f3} :catchall_e4

    .line 175
    :try_start_f3
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    const/4 v12, 0x0

    :goto_f7
    if-eqz v12, :cond_84

    .line 180
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 177
    :goto_fd
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v0

    :cond_101
    if-ne v11, v5, :cond_138

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_107
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f3 .. :try_end_107} :catch_195
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f3 .. :try_end_107} :catch_193
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f3 .. :try_end_107} :catch_190
    .catchall {:try_start_f3 .. :try_end_107} :catchall_18c

    .line 184
    :try_start_107
    array-length v13, v12

    invoke-virtual {v11, v12, v6, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 185
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 186
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzw;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    invoke-interface {v12, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzw;
    :try_end_116
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_107 .. :try_end_116} :catch_11c
    .catchall {:try_start_107 .. :try_end_116} :catchall_11a

    .line 188
    :try_start_116
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_119
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_116 .. :try_end_119} :catch_195
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_116 .. :try_end_119} :catch_193
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_116 .. :try_end_119} :catch_190
    .catchall {:try_start_116 .. :try_end_119} :catchall_18c

    goto :goto_12d

    :catchall_11a
    move-exception v0

    goto :goto_134

    .line 191
    :catch_11c
    :try_start_11c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v12

    .line 192
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v12

    const-string v13, "Failed to load conditional user property from local database"

    .line 193
    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V
    :try_end_129
    .catchall {:try_start_11c .. :try_end_129} :catchall_11a

    .line 194
    :try_start_129
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    const/4 v12, 0x0

    :goto_12d
    if-eqz v12, :cond_84

    .line 199
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_84

    .line 196
    :goto_134
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 197
    throw v0

    :cond_138
    if-ne v11, v0, :cond_149

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v11

    const-string v12, "Skipping app launch break"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto/16 :goto_84

    .line 202
    :cond_149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v11

    const-string v12, "Unknown record type in local database"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto/16 :goto_84

    :cond_158
    const-string v0, "messages"

    const-string v5, "rowid <= ?"

    new-array v11, v9, [Ljava/lang/String;

    .line 205
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 206
    invoke-virtual {v3, v0, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 207
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_17b

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v5, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 209
    :cond_17b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 210
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_181
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_129 .. :try_end_181} :catch_195
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_129 .. :try_end_181} :catch_193
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_129 .. :try_end_181} :catch_190
    .catchall {:try_start_129 .. :try_end_181} :catchall_18c

    if-eqz v10, :cond_186

    .line 213
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_186
    if-eqz v3, :cond_18b

    .line 215
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_18b
    return-object v4

    :catchall_18c
    move-exception v0

    move-object v15, v3

    goto/16 :goto_211

    :catch_190
    move-exception v0

    move-object v15, v3

    goto :goto_1ba

    :catch_193
    move-object v15, v3

    goto :goto_1df

    :catch_195
    move-exception v0

    move-object v15, v3

    goto/16 :goto_1f3

    :catchall_199
    move-exception v0

    move-object v15, v3

    goto :goto_1a4

    :catch_19c
    move-exception v0

    move-object v15, v3

    goto :goto_1a9

    :catch_19f
    move-exception v0

    move-object v15, v3

    goto :goto_1b1

    :catchall_1a2
    move-exception v0

    move-object v3, v15

    :goto_1a4
    const/4 v3, 0x0

    goto/16 :goto_212

    :catch_1a7
    move-exception v0

    move-object v3, v15

    :goto_1a9
    const/4 v10, 0x0

    goto :goto_1ba

    :catch_1ab
    move-object v3, v15

    :catch_1ac
    move-object v15, v3

    const/4 v10, 0x0

    goto :goto_1df

    :catch_1af
    move-exception v0

    move-object v3, v15

    :goto_1b1
    const/4 v10, 0x0

    goto :goto_1f3

    :catchall_1b3
    move-exception v0

    const/4 v3, 0x0

    const/4 v15, 0x0

    goto :goto_212

    :catch_1b7
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_1ba
    if-eqz v15, :cond_1c5

    .line 232
    :try_start_1bc
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_1c5

    .line 233
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    :cond_1c5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z
    :try_end_1d2
    .catchall {:try_start_1bc .. :try_end_1d2} :catchall_210

    if-eqz v10, :cond_1d7

    .line 237
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1d7
    if-eqz v15, :cond_20a

    .line 239
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_20a

    :catch_1dd
    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_1df
    int-to-long v11, v8

    .line 225
    :try_start_1e0
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1e3
    .catchall {:try_start_1e0 .. :try_end_1e3} :catchall_210

    add-int/lit8 v8, v8, 0x14

    if-eqz v10, :cond_1ea

    .line 228
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1ea
    if-eqz v15, :cond_20a

    .line 230
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_20a

    :catch_1f0
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 218
    :goto_1f3
    :try_start_1f3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z
    :try_end_200
    .catchall {:try_start_1f3 .. :try_end_200} :catchall_210

    if-eqz v10, :cond_205

    .line 221
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_205
    if-eqz v15, :cond_20a

    .line 223
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_20a
    :goto_20a
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    goto/16 :goto_20

    :catchall_210
    move-exception v0

    :goto_211
    move-object v3, v10

    :goto_212
    if-eqz v3, :cond_217

    .line 241
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_217
    if-eqz v15, :cond_21c

    .line 243
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 244
    :cond_21c
    throw v0

    .line 246
    :cond_21d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public final bridge synthetic zza()V
    .registers 1

    .line 324
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzao;)Z
    .registers 5

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzao;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzg()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 98
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return v1

    .line 100
    :cond_22
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzkr;)Z
    .registers 5

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzg()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 108
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return v1

    :cond_22
    const/4 v0, 0x1

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzw;)Z
    .registers 4

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 112
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_1b

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzg()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 115
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1b
    const/4 v0, 0x2

    .line 117
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzab()V
    .registers 4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 9
    :try_start_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-lez v0, :cond_26

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzac()Z
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x3

    .line 248
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(I[B)Z

    move-result v0

    return v0
.end method

.method public final zzad()Z
    .registers 12

    const-string v0, "Error deleting app launch break from local database"

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb()V

    .line 251
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    .line 253
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzaf()Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    :goto_18
    if-ge v3, v1, :cond_92

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 258
    :try_start_1c
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_2a

    .line 260
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1c .. :try_end_24} :catch_76
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1c .. :try_end_24} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_24} :catch_4b
    .catchall {:try_start_1c .. :try_end_24} :catchall_49

    if-eqz v5, :cond_29

    .line 262
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_29
    return v2

    .line 264
    :cond_2a
    :try_start_2a
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v7, "messages"

    const-string v8, "type == ?"

    new-array v9, v6, [Ljava/lang/String;

    const/4 v10, 0x3

    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 267
    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 269
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2a .. :try_end_43} :catch_76
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2a .. :try_end_43} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_43} :catch_4b
    .catchall {:try_start_2a .. :try_end_43} :catchall_49

    if-eqz v5, :cond_48

    .line 271
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_48
    return v6

    :catchall_49
    move-exception v0

    goto :goto_8c

    :catch_4b
    move-exception v7

    if-eqz v5, :cond_57

    .line 284
    :try_start_4e
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_57

    .line 285
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 286
    :cond_57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_49

    if-eqz v5, :cond_89

    .line 289
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_89

    :catch_6a
    int-to-long v6, v4

    .line 279
    :try_start_6b
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_49

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_89

    .line 282
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_89

    :catch_76
    move-exception v7

    .line 274
    :try_start_77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_49

    if-eqz v5, :cond_89

    .line 277
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_89
    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :goto_8c
    if-eqz v5, :cond_91

    .line 291
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 292
    :cond_91
    throw v0

    .line 294
    :cond_92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 296
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return v2
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    .line 325
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    .line 326
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    .line 327
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()V

    return-void
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zza;
    .registers 2

    .line 328
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzhh;
    .registers 2

    .line 329
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    .line 330
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzis;
    .registers 2

    .line 331
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzin;
    .registers 2

    .line 332
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Lcom/google/android/gms/measurement/internal/zzin;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzev;
    .registers 2

    .line 333
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzjw;
    .registers 2

    .line 334
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzai;
    .registers 2

    .line 335
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 336
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    .line 337
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzex;
    .registers 2

    .line 338
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzkw;
    .registers 2

    .line 339
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzfw;
    .registers 2

    .line 340
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 341
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzfl;
    .registers 2

    .line 342
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 343
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    .line 344
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method protected final zzz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
