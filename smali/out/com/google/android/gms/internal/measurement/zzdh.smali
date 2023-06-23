.class public final Lcom/google/android/gms/internal/measurement/zzdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcm;


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzdh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Landroid/content/SharedPreferences;

.field private final zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final zzd:Ljava/lang/Object;

.field private volatile zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/util/List;
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
    .registers 1

    .line 67
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdh;->zza:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzdg;-><init>(Lcom/google/android/gms/internal/measurement/zzdh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzd:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:Landroid/content/SharedPreferences;

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdh;
    .registers 4

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcg;->zza()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "direct_boot:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzcg;->zza(Landroid/content/Context;)Z

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_18
    const-class v0, Lcom/google/android/gms/internal/measurement/zzdh;

    monitor-enter v0

    .line 9
    :try_start_1b
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzdh;->zza:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdh;

    if-nez v1, :cond_33

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzdh;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzdh;->zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzdh;-><init>(Landroid/content/SharedPreferences;)V

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzdh;->zza:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_33
    monitor-exit v0

    return-object v1

    :catchall_35
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_35

    throw p0
.end method

.method static declared-synchronized zza()V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/measurement/zzdh;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzdh;->zza:Ljava/util/Map;

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

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdh;

    .line 52
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:Landroid/content/SharedPreferences;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzdh;->zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_d

    .line 54
    :cond_21
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzdh;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 55
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

.method private static zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 5

    .line 15
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_4
    const-string v1, "direct_boot:"

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcg;->zza()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    :cond_17
    const/16 v1, 0xc

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2d

    .line 23
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 25
    :cond_25
    :try_start_25
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    .line 26
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_2d
    move-exception p0

    .line 28
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 29
    throw p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zze:Ljava/util/Map;

    if-nez v0, :cond_26

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzd:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zze:Ljava/util/Map;

    if-nez v0, :cond_21

    .line 42
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_23

    .line 43
    :try_start_f
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 44
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zze:Ljava/util/Map;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1c

    .line 45
    :try_start_17
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v2

    goto :goto_21

    :catchall_1c
    move-exception p1

    .line 47
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 48
    throw p1

    .line 49
    :cond_21
    :goto_21
    monitor-exit v1

    goto :goto_26

    :catchall_23
    move-exception p1

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    :goto_26
    if-eqz v0, :cond_2d

    .line 50
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzd:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    .line 58
    :try_start_4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zze:Ljava/util/Map;

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcw;->zza()V

    .line 60
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_26

    .line 62
    monitor-enter p0

    .line 63
    :try_start_b
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzcn;

    .line 64
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzcn;->zza()V

    goto :goto_11

    .line 66
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw p1

    :catchall_26
    move-exception p2

    .line 60
    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    goto :goto_2a

    :goto_29
    throw p2

    :goto_2a
    goto :goto_29
.end method
