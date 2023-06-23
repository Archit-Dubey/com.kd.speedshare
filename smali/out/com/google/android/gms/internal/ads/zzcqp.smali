.class public final Lcom/google/android/gms/internal/ads/zzcqp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private zzdpd:Lcom/google/android/gms/internal/ads/zzbbd;

.field private zzgjr:Lcom/google/android/gms/internal/ads/zzcpz;

.field private zzgkd:Lcom/google/android/gms/internal/ads/zztm;

.field private zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbd;Lcom/google/android/gms/internal/ads/zztm;Lcom/google/android/gms/internal/ads/zzcpz;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzdpd:Lcom/google/android/gms/internal/ads/zzbbd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgkd:Lcom/google/android/gms/internal/ads/zztm;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgjr:Lcom/google/android/gms/internal/ads/zzcpz;

    return-void
.end method


# virtual methods
.method public final zzapn()V
    .registers 4

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgjr:Lcom/google/android/gms/internal/ads/zzcpz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcqo;-><init>(Lcom/google/android/gms/internal/ads/zzcqp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpz;->zza(Lcom/google/android/gms/internal/ads/zzdob;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Error in offline signals database startup: "

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfb(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcqm;->zza(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzty$zzo;->zzoi()Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcqp;->zzvr:Landroid/content/Context;

    .line 15
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;->zzcd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;->zzce(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;

    move-result-object v3

    const/4 v4, 0x0

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 17
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzcqm;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    .line 18
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;->zzcl(I)Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;

    move-result-object v3

    const/4 v6, 0x1

    .line 20
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzcqm;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v7

    .line 21
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;->zzcm(I)Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;

    move-result-object v3

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;->zzes(J)Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;

    move-result-object v3

    const/4 v7, 0x2

    .line 23
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzcqm;->zzb(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v8

    .line 24
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;->zzet(J)Lcom/google/android/gms/internal/ads/zzty$zzo$zzb;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzty$zzo;

    .line 28
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-wide/16 v9, 0x0

    move-wide v12, v9

    const/4 v11, 0x0

    :goto_5d
    if-ge v11, v8, :cond_7d

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v11, v11, 0x1

    check-cast v14, Lcom/google/android/gms/internal/ads/zzty$zzo$zza;

    .line 29
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzty$zzo$zza;->zzok()Lcom/google/android/gms/internal/ads/zzui;

    move-result-object v15

    sget-object v7, Lcom/google/android/gms/internal/ads/zzui;->zzcbi:Lcom/google/android/gms/internal/ads/zzui;

    if-ne v15, v7, :cond_7b

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzty$zzo$zza;->getTimestamp()J

    move-result-wide v16

    cmp-long v7, v16, v12

    if-lez v7, :cond_7b

    .line 30
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzty$zzo$zza;->getTimestamp()J

    move-result-wide v12

    :cond_7b
    const/4 v7, 0x2

    goto :goto_5d

    :cond_7d
    const-string v2, "offline_signal_statistics"

    const-string v7, "value"

    const/4 v8, 0x0

    cmp-long v11, v12, v9

    if-eqz v11, :cond_97

    .line 34
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 35
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "statistic_name = \'last_successful_request_time\'"

    .line 36
    invoke-virtual {v1, v2, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    :cond_97
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgkd:Lcom/google/android/gms/internal/ads/zztm;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzcqr;-><init>(Lcom/google/android/gms/internal/ads/zzty$zzo;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zztm;->zza(Lcom/google/android/gms/internal/ads/zztp;)V

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzty$zzu;->zzos()Lcom/google/android/gms/internal/ads/zzty$zzu$zza;

    move-result-object v3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcqp;->zzdpd:Lcom/google/android/gms/internal/ads/zzbbd;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzbbd;->zzedd:I

    .line 39
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzty$zzu$zza;->zzcs(I)Lcom/google/android/gms/internal/ads/zzty$zzu$zza;

    move-result-object v3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcqp;->zzdpd:Lcom/google/android/gms/internal/ads/zzbbd;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzbbd;->zzede:I

    .line 40
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzty$zzu$zza;->zzct(I)Lcom/google/android/gms/internal/ads/zzty$zzu$zza;

    move-result-object v3

    .line 41
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcqp;->zzdpd:Lcom/google/android/gms/internal/ads/zzbbd;

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/zzbbd;->zzedf:Z

    if-eqz v9, :cond_bd

    const/4 v9, 0x0

    goto :goto_be

    :cond_bd
    const/4 v9, 0x2

    :goto_be
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzty$zzu$zza;->zzcu(I)Lcom/google/android/gms/internal/ads/zzty$zzu$zza;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzty$zzu;

    .line 43
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgkd:Lcom/google/android/gms/internal/ads/zztm;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcqq;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzcqq;-><init>(Lcom/google/android/gms/internal/ads/zzty$zzu;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zztm;->zza(Lcom/google/android/gms/internal/ads/zztp;)V

    .line 44
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgkd:Lcom/google/android/gms/internal/ads/zztm;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzto$zza$zza;->zzbxm:Lcom/google/android/gms/internal/ads/zzto$zza$zza;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zztm;->zza(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)V

    const-string v3, "offline_signal_contents"

    .line 46
    invoke-virtual {v1, v3, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 48
    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v9, v6, [Ljava/lang/String;

    const-string v10, "failed_requests"

    aput-object v10, v9, v4

    const-string v10, "statistic_name = ?"

    .line 49
    invoke-virtual {v1, v2, v3, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 51
    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "total_requests"

    aput-object v6, v5, v4

    .line 52
    invoke-virtual {v1, v2, v3, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v8
.end method
