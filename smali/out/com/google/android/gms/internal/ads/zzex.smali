.class public Lcom/google/android/gms/internal/ads/zzex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected zzvr:Landroid/content/Context;

.field private volatile zzxi:Z

.field private zzys:Lcom/google/android/gms/internal/ads/zzev;

.field private zzyt:Ljava/util/concurrent/ExecutorService;

.field private zzyu:Ldalvik/system/DexClassLoader;

.field private zzyv:Lcom/google/android/gms/internal/ads/zzei;

.field private zzyw:[B

.field private volatile zzyx:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private zzyy:Ljava/util/concurrent/Future;

.field private zzyz:Z

.field private volatile zzza:Lcom/google/android/gms/internal/ads/zzcf$zza;

.field private zzzb:Ljava/util/concurrent/Future;

.field private zzzc:Lcom/google/android/gms/internal/ads/zzdu;

.field private zzzd:Z

.field private zzze:Z

.field private zzzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgk;",
            ">;"
        }
    .end annotation
.end field

.field private zzzg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 321
    const-class v0, Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzex;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyx:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzxi:Z

    .line 88
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Ljava/util/concurrent/Future;

    .line 89
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzza:Lcom/google/android/gms/internal/ads/zzcf$zza;

    .line 90
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzb:Ljava/util/concurrent/Future;

    .line 91
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzd:Z

    .line 92
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzze:Z

    .line 93
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzg:Z

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    .line 95
    :cond_1c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyz:Z

    if-eqz v1, :cond_21

    move-object p1, v0

    .line 96
    :cond_21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    .line 97
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzf:Ljava/util/Map;

    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzys:Lcom/google/android/gms/internal/ads/zzev;

    if-nez p1, :cond_37

    .line 100
    new-instance p1, Lcom/google/android/gms/internal/ads/zzev;

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    .line 102
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzev;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzys:Lcom/google/android/gms/internal/ads/zzev;

    :cond_37
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzex;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzza:Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object p1
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzex;
    .registers 13

    const-string v0, "%s/%s.dex"

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzex;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzex;-><init>(Landroid/content/Context;)V

    .line 4
    :try_start_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>()V

    .line 5
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyt:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-boolean p3, v1, Lcom/google/android/gms/internal/ads/zzex;->zzxi:Z

    if-eqz p3, :cond_23

    .line 9
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyt:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzez;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/zzez;-><init>(Lcom/google/android/gms/internal/ads/zzex;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Ljava/util/concurrent/Future;

    .line 11
    :cond_23
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyt:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfb;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/zzfb;-><init>(Lcom/google/android/gms/internal/ads/zzex;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_7 .. :try_end_2d} :catch_136

    const/4 p0, 0x1

    const/4 p3, 0x0

    .line 12
    :try_start_2f
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v2

    .line 13
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzex;->zzzd:Z

    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzex;->zzze:Z
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4d

    .line 19
    :catchall_4d
    :try_start_4d
    invoke-virtual {v1, p3, p0}, Lcom/google/android/gms/internal/ads/zzex;->zza(IZ)V

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfg;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_71

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaav;->zzcqp:Lcom/google/android/gms/internal/ads/zzaag;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_71

    .line 23
    :cond_69
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_71
    :goto_71
    new-instance v2, Lcom/google/android/gms/internal/ads/zzei;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzei;-><init>(Ljava/security/SecureRandom;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyv:Lcom/google/android/gms/internal/ads/zzei;
    :try_end_79
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_4d .. :try_end_79} :catch_136

    .line 26
    :try_start_79
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzao(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyw:[B
    :try_end_7f
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_79 .. :try_end_7f} :catch_12f
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_79 .. :try_end_7f} :catch_136

    .line 31
    :try_start_7f
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_98

    .line 33
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    const-string v2, "dex"

    invoke-virtual {p1, v2, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_92

    goto :goto_98

    .line 35
    :cond_92
    new-instance p0, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>()V

    throw p0

    :cond_98
    :goto_98
    const-string v2, "1584479576572"

    .line 39
    new-instance v4, Ljava/io/File;

    const-string v5, "%s/%s.jar"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, p3

    aput-object v2, v7, p0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c9

    .line 41
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyv:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyw:[B

    invoke-virtual {v5, v7, p2}, Lcom/google/android/gms/internal/ads/zzei;->zza([BLjava/lang/String;)[B

    move-result-object p2

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 43
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 44
    array-length v7, p2

    invoke-virtual {v5, p2, p3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 45
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 48
    :cond_c9
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzb(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_cc
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_cc} :catch_128
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_cc} :catch_121
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_7f .. :try_end_cc} :catch_11a
    .catch Ljava/lang/NullPointerException; {:try_start_7f .. :try_end_cc} :catch_113
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_7f .. :try_end_cc} :catch_136

    .line 49
    :try_start_cc
    new-instance p2, Ldalvik/system/DexClassLoader;

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {p2, v5, v7, v3, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p2, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyu:Ldalvik/system/DexClassLoader;
    :try_end_e1
    .catchall {:try_start_cc .. :try_end_e1} :catchall_fe

    .line 51
    :try_start_e1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    .line 52
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zza(Ljava/io/File;Ljava/lang/String;)V

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, p3

    aput-object v2, p2, p0

    .line 53
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzex;->zzap(Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_f4} :catch_128
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_f4} :catch_121
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_e1 .. :try_end_f4} :catch_11a
    .catch Ljava/lang/NullPointerException; {:try_start_e1 .. :try_end_f4} :catch_113
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_e1 .. :try_end_f4} :catch_136

    .line 67
    :try_start_f4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(Lcom/google/android/gms/internal/ads/zzex;)V

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzex;->zzzc:Lcom/google/android/gms/internal/ads/zzdu;

    .line 68
    iput-boolean p0, v1, Lcom/google/android/gms/internal/ads/zzex;->zzzg:Z
    :try_end_fd
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_f4 .. :try_end_fd} :catch_136

    goto :goto_136

    :catchall_fe
    move-exception p2

    .line 55
    :try_start_ff
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    .line 56
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zza(Ljava/io/File;Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, p3

    aput-object v2, v3, p0

    .line 57
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzex;->zzap(Ljava/lang/String;)V

    .line 58
    throw p2
    :try_end_113
    .catch Ljava/io/FileNotFoundException; {:try_start_ff .. :try_end_113} :catch_128
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_113} :catch_121
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_ff .. :try_end_113} :catch_11a
    .catch Ljava/lang/NullPointerException; {:try_start_ff .. :try_end_113} :catch_113
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_ff .. :try_end_113} :catch_136

    :catch_113
    move-exception p0

    .line 66
    :try_start_114
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_11a
    move-exception p0

    .line 64
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_121
    move-exception p0

    .line 62
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_128
    move-exception p0

    .line 60
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_12f
    move-exception p0

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_136
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_114 .. :try_end_136} :catch_136

    :catch_136
    :goto_136
    return-object v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzex;)V
    .registers 1

    .line 318
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzex;->zzcr()V

    return-void
.end method

.method private final zza(Ljava/io/File;Ljava/lang/String;)V
    .registers 12

    const-string v0, "test"

    .line 104
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const-string v6, "%s/%s.tmp"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    return-void

    .line 107
    :cond_1d
    new-instance v3, Ljava/io/File;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_35

    return-void

    .line 112
    :cond_35
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gtz p1, :cond_40

    return-void

    :cond_40
    long-to-int p1, v5

    .line 115
    new-array p1, p1, [B

    const/4 v2, 0x0

    .line 116
    :try_start_44
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_e2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_44 .. :try_end_49} :catch_e2
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_44 .. :try_end_49} :catch_e2
    .catchall {:try_start_44 .. :try_end_49} :catchall_d0

    .line 117
    :try_start_49
    invoke-virtual {v5, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_cd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_49 .. :try_end_4d} :catch_cd
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_49 .. :try_end_4d} :catch_cd
    .catchall {:try_start_49 .. :try_end_4d} :catchall_c9

    if-gtz v6, :cond_56

    .line 119
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_52

    .line 123
    :catch_52
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    return-void

    .line 125
    :cond_56
    :try_start_56
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 126
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 127
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzbf()Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;

    move-result-object v0

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 129
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;->zzd(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;->zzc(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;

    move-result-object p2

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyv:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyw:[B

    invoke-virtual {v0, v6, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzb([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;->zza(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;

    move-result-object v0

    .line 134
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcx;->zzb([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;->zzb(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 136
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_aa} :catch_cd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_56 .. :try_end_aa} :catch_cd
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_56 .. :try_end_aa} :catch_cd
    .catchall {:try_start_56 .. :try_end_aa} :catchall_c9

    .line 137
    :try_start_aa
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcf$zzc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeeh;->toByteArray()[B

    move-result-object p2

    .line 138
    array-length v0, p2

    invoke-virtual {p1, p2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 139
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_bd} :catch_ce
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_aa .. :try_end_bd} :catch_ce
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_aa .. :try_end_bd} :catch_ce
    .catchall {:try_start_aa .. :try_end_bd} :catchall_c7

    .line 140
    :try_start_bd
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c0

    .line 143
    :catch_c0
    :try_start_c0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c3

    .line 146
    :catch_c3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    return-void

    :catchall_c7
    move-exception p2

    goto :goto_cb

    :catchall_c9
    move-exception p2

    move-object p1, v2

    :goto_cb
    move-object v2, v5

    goto :goto_d2

    :catch_cd
    move-object p1, v2

    :catch_ce
    move-object v2, v5

    goto :goto_e3

    :catchall_d0
    move-exception p2

    move-object p1, v2

    :goto_d2
    if-eqz v2, :cond_d9

    .line 161
    :try_start_d4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_d9

    :catch_d8
    nop

    :cond_d9
    :goto_d9
    if-eqz p1, :cond_de

    .line 165
    :try_start_db
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_de

    .line 168
    :catch_de
    :cond_de
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    .line 169
    throw p2

    :catch_e2
    move-object p1, v2

    :goto_e3
    if-eqz v2, :cond_ea

    .line 150
    :try_start_e5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e9

    goto :goto_ea

    :catch_e9
    nop

    :cond_ea
    :goto_ea
    if-eqz p1, :cond_ef

    .line 154
    :try_start_ec
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_ef

    .line 157
    :catch_ef
    :cond_ef
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    return-void
.end method

.method private static zza(ILcom/google/android/gms/internal/ads/zzcf$zza;)Z
    .registers 6

    const/4 v0, 0x4

    if-ge p0, v0, :cond_39

    const/4 p0, 0x1

    if-nez p1, :cond_7

    return p0

    .line 279
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzak()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 280
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_38

    .line 282
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzap()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 283
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzaq()Lcom/google/android/gms/internal/ads/zzcf$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcf$zzd;->zzbh()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 284
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzaq()Lcom/google/android/gms/internal/ads/zzcf$zzd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zzd;->zzbi()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_39

    :cond_38
    :goto_38
    return p0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method private static zzap(Ljava/lang/String;)V
    .registers 2

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    return-void
.end method

.method static synthetic zzb(ILcom/google/android/gms/internal/ads/zzcf$zza;)Z
    .registers 2

    .line 320
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzex;->zza(ILcom/google/android/gms/internal/ads/zzcf$zza;)Z

    move-result p0

    return p0
.end method

.method private final zzb(Ljava/io/File;Ljava/lang/String;)Z
    .registers 12

    .line 178
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    return v3

    .line 181
    :cond_1b
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_33

    return v3

    :cond_33
    const/4 p1, 0x0

    .line 186
    :try_start_34
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_42

    .line 188
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    return v3

    :cond_42
    long-to-int v1, v5

    .line 191
    new-array v1, v1, [B

    .line 192
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4a} :catch_ef
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_34 .. :try_end_4a} :catch_ef
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_34 .. :try_end_4a} :catch_ef
    .catchall {:try_start_34 .. :try_end_4a} :catchall_e0

    .line 193
    :try_start_4a
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_5e

    .line 195
    sget-object p2, Lcom/google/android/gms/internal/ads/zzex;->TAG:Ljava/lang/String;

    const-string v1, "Cannot read the cache data."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_dd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4a .. :try_end_5a} :catch_dd
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_4a .. :try_end_5a} :catch_dd
    .catchall {:try_start_4a .. :try_end_5a} :catchall_d9

    .line 197
    :try_start_5a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5d

    :catch_5d
    return v3

    .line 202
    :cond_5e
    :try_start_5e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefo;->zzber()Lcom/google/android/gms/internal/ads/zzefo;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzb([BLcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzcf$zzc;

    move-result-object v1

    .line 203
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzbd()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzeer;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d2

    .line 204
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzbc()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeer;->toByteArray()[B

    move-result-object p2

    .line 205
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzbb()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzeer;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzcx;->zzb([B)[B

    move-result-object v6

    .line 206
    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_d2

    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzbe()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeer;->toByteArray()[B

    move-result-object p2

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_a8

    goto :goto_d2

    .line 214
    :cond_a8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyv:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyw:[B

    new-instance v6, Ljava/lang/String;

    .line 215
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzbb()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0, v6}, Lcom/google/android/gms/internal/ads/zzei;->zza([BLjava/lang/String;)[B

    move-result-object p2

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 217
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_c5} :catch_dd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5e .. :try_end_c5} :catch_dd
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_5e .. :try_end_c5} :catch_dd
    .catchall {:try_start_5e .. :try_end_c5} :catchall_d9

    .line 218
    :try_start_c5
    array-length p1, p2

    invoke-virtual {v0, p2, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c9} :catch_de
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c5 .. :try_end_c9} :catch_de
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_c5 .. :try_end_c9} :catch_de
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_d0

    .line 219
    :try_start_c9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cc

    .line 222
    :catch_cc
    :try_start_cc
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_cf

    :catch_cf
    return v4

    :catchall_d0
    move-exception p2

    goto :goto_db

    .line 208
    :cond_d2
    :goto_d2
    :try_start_d2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_dd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d2 .. :try_end_d5} :catch_dd
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_d2 .. :try_end_d5} :catch_dd
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d9

    .line 209
    :try_start_d5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d8

    :catch_d8
    return v3

    :catchall_d9
    move-exception p2

    move-object v0, p1

    :goto_db
    move-object p1, v5

    goto :goto_e2

    :catch_dd
    move-object v0, p1

    :catch_de
    move-object p1, v5

    goto :goto_f0

    :catchall_e0
    move-exception p2

    move-object v0, p1

    :goto_e2
    if-eqz p1, :cond_e9

    .line 238
    :try_start_e4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_e9

    :catch_e8
    nop

    :cond_e9
    :goto_e9
    if-eqz v0, :cond_ee

    .line 242
    :try_start_eb
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ee

    .line 245
    :catch_ee
    :cond_ee
    throw p2

    :catch_ef
    move-object v0, p1

    :goto_f0
    if-eqz p1, :cond_f7

    .line 228
    :try_start_f2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_f7

    :catch_f6
    nop

    :cond_f7
    :goto_f7
    if-eqz v0, :cond_fc

    .line 232
    :try_start_f9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fc

    :catch_fc
    :cond_fc
    return v3
.end method

.method private static zzc(Ljava/io/File;)V
    .registers 4

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 174
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "File %s not found. No need for deletion"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private final zzcr()V
    .registers 3

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyx:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyz:Z

    if-eqz v0, :cond_14

    .line 256
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    .line 258
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyx:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_14
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyx:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-void
.end method

.method private final zzcs()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 4

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    .line 289
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    .line 292
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdpt;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    goto :goto_25

    :catchall_24
    const/4 v0, 0x0

    :goto_25
    return-object v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzg:Z

    return v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzf:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgk;

    if-nez p1, :cond_11

    const/4 p1, 0x0

    return-object p1

    .line 254
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzdc()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method final zza(IZ)V
    .registers 5

    .line 263
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzze:Z

    if-nez v0, :cond_5

    return-void

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyt:Ljava/util/concurrent/ExecutorService;

    .line 267
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Lcom/google/android/gms/internal/ads/zzex;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p1, :cond_14

    .line 269
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzb:Ljava/util/concurrent/Future;

    :cond_14
    return-void
.end method

.method public final varargs zza(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzf:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzf:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method final zzb(IZ)Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 3

    if-lez p1, :cond_a

    if-eqz p2, :cond_a

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    .line 272
    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_a

    .line 275
    :catch_a
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzex;->zzcs()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zzbv()I
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzc:Lcom/google/android/gms/internal/ads/zzdu;

    if-eqz v0, :cond_9

    .line 316
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdu;->zzbv()I

    move-result v0

    goto :goto_b

    :cond_9
    const/high16 v0, -0x80000000

    :goto_b
    return v0
.end method

.method public final zzcc()Z
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzys:Lcom/google/android/gms/internal/ads/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzev;->zzcc()Z

    move-result v0

    return v0
.end method

.method public final zzch()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyt:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final zzci()Ldalvik/system/DexClassLoader;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyu:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final zzcj()Lcom/google/android/gms/internal/ads/zzei;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyv:Lcom/google/android/gms/internal/ads/zzei;

    return-object v0
.end method

.method public final zzck()[B
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyw:[B

    return-object v0
.end method

.method public final zzcl()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzd:Z

    return v0
.end method

.method public final zzcm()Lcom/google/android/gms/internal/ads/zzdu;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzc:Lcom/google/android/gms/internal/ads/zzdu;

    return-object v0
.end method

.method public final zzcn()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzze:Z

    return v0
.end method

.method final zzco()Lcom/google/android/gms/internal/ads/zzev;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzys:Lcom/google/android/gms/internal/ads/zzev;

    return-object v0
.end method

.method public final zzcp()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzza:Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object v0
.end method

.method public final zzcq()Ljava/util/concurrent/Future;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzb:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final zzct()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 6

    .line 297
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzxi:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 299
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyx:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_d

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyx:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0

    .line 301
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_21

    const-wide/16 v2, 0x7d0

    .line 302
    :try_start_13
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 303
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Ljava/util/concurrent/Future;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_21
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_1a} :catch_21
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_21

    .line 310
    :catch_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 311
    :catch_21
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyx:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method
