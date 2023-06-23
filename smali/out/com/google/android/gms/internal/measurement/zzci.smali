.class public final Lcom/google/android/gms/internal/measurement/zzci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcm;


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/measurement/zzci;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzh:[Ljava/lang/String;


# instance fields
.field private final zzb:Landroid/content/ContentResolver;

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Landroid/database/ContentObserver;

.field private final zze:Ljava/lang/Object;

.field private volatile zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 73
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzci;->zza:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    .line 74
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzci;->zzh:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzck;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzck;-><init>(Lcom/google/android/gms/internal/measurement/zzci;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzd:Landroid/database/ContentObserver;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzci;->zze:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzg:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzb:Landroid/content/ContentResolver;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzc:Landroid/net/Uri;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzd:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzci;
    .registers 5

    .line 9
    const-class v0, Lcom/google/android/gms/internal/measurement/zzci;

    monitor-enter v0

    .line 10
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzci;->zza:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzci;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1a

    if-nez v1, :cond_18

    .line 12
    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzci;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzci;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_18
    .catchall {:try_start_d .. :try_end_12} :catchall_1a

    .line 13
    :try_start_12
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzci;->zza:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_17} :catch_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1a

    :catch_17
    move-object v1, v2

    .line 16
    :catch_18
    :cond_18
    :try_start_18
    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method static declared-synchronized zzc()V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/measurement/zzci;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzci;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzci;

    .line 48
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzci;->zzb:Landroid/content/ContentResolver;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzci;->zzd:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_d

    .line 50
    :cond_21
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzci;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 51
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0

    goto :goto_2c

    :goto_2b
    throw v1

    :goto_2c
    goto :goto_2b
.end method

.method private final zze()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 38
    :try_start_4
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzcl;-><init>(Lcom/google/android/gms/internal/measurement/zzci;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzcp;->zza(Lcom/google/android/gms/internal/measurement/zzco;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_f} :catch_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_f} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_f} :catch_15
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 39
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_13
    move-exception v1

    goto :goto_21

    :catch_15
    :try_start_15
    const-string v1, "ConfigurationContentLoader"

    const-string v2, "PhenotypeFlag unable to load ContentProvider, using default values"

    .line 42
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_13

    .line 43
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, 0x0

    return-object v0

    .line 45
    :goto_21
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 46
    throw v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzci;->zza()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final zza()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzf:Ljava/util/Map;

    if-nez v0, :cond_16

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzci;->zze:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzf:Ljava/util/Map;

    if-nez v0, :cond_11

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzci;->zze()Ljava/util/Map;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzf:Ljava/util/Map;

    .line 25
    :cond_11
    monitor-exit v1

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :goto_16
    if-eqz v0, :cond_19

    return-object v0

    .line 26
    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzci;->zze:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 28
    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzf:Ljava/util/Map;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcw;->zza()V

    .line 30
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_26

    .line 32
    monitor-enter p0

    .line 33
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcn;

    .line 34
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzcn;->zza()V

    goto :goto_11

    .line 36
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v0

    :catchall_26
    move-exception v1

    .line 30
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    goto :goto_2a

    :goto_29
    throw v1

    :goto_2a
    goto :goto_29
.end method

.method final synthetic zzd()Ljava/util/Map;
    .registers 7

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzci;->zzc:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzci;->zzh:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_14

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 58
    :cond_14
    :try_start_14
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_22

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_4b

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_22
    const/16 v2, 0x100

    if-gt v1, v2, :cond_2c

    .line 64
    :try_start_26
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2, v1}, Landroidx/collection/ArrayMap;-><init>(I)V

    goto :goto_33

    .line 65
    :cond_2c
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 66
    :goto_33
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    .line 67
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_4b

    goto :goto_33

    .line 69
    :cond_47
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_4b
    move-exception v1

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 72
    goto :goto_51

    :goto_50
    throw v1

    :goto_51
    goto :goto_50
.end method
