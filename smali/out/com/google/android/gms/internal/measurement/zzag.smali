.class public Lcom/google/android/gms/internal/measurement/zzag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzag$zzc;,
        Lcom/google/android/gms/internal/measurement/zzag$zza;,
        Lcom/google/android/gms/internal/measurement/zzag$zzd;,
        Lcom/google/android/gms/internal/measurement/zzag$zzb;
    }
.end annotation


# static fields
.field private static volatile zzb:Lcom/google/android/gms/internal/measurement/zzag; = null

.field private static zzh:Ljava/lang/Boolean; = null

.field private static zzi:Ljava/lang/String; = "allow_remote_dynamite"

.field private static zzj:Z = false


# instance fields
.field protected final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/concurrent/ExecutorService;

.field private final zze:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field private zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/measurement/internal/zzhf;",
            "Lcom/google/android/gms/internal/measurement/zzag$zzd;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzk:Z

.field private zzl:Ljava/lang/String;

.field private zzm:Lcom/google/android/gms/internal/measurement/zzv;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_f

    .line 11
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_f

    .line 13
    :cond_c
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Ljava/lang/String;

    goto :goto_13

    :cond_f
    :goto_f
    const-string p2, "FA"

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Ljava/lang/String;

    .line 15
    :goto_13
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzi;->zza()Lcom/google/android/gms/internal/measurement/zzj;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    sget v1, Lcom/google/android/gms/internal/measurement/zzr;->zza:I

    .line 19
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzj;->zza(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzd:Ljava/util/concurrent/ExecutorService;

    .line 21
    new-instance p2, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zze:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzag;->zze(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_42

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzag;->zzk()Z

    move-result p2

    if-eqz p2, :cond_40

    goto :goto_42

    :cond_40
    const/4 p2, 0x0

    goto :goto_43

    :cond_42
    :goto_42
    const/4 p2, 0x1

    :goto_43
    if-nez p2, :cond_52

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzl:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzk:Z

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Ljava/lang/String;

    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 29
    :cond_52
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7b

    const-string p2, "fa"

    .line 30
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzl:Ljava/lang/String;

    if-eqz p3, :cond_68

    if-eqz p4, :cond_68

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Ljava/lang/String;

    const-string v0, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    :cond_68
    if-nez p3, :cond_6c

    const/4 p2, 0x1

    goto :goto_6d

    :cond_6c
    const/4 p2, 0x0

    :goto_6d
    if-nez p4, :cond_70

    const/4 v0, 0x1

    :cond_70
    xor-int/2addr p2, v0

    if-eqz p2, :cond_7d

    .line 34
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Ljava/lang/String;

    const-string v0, "Specified origin or custom app id is null. Both parameters will be ignored."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 35
    :cond_7b
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzl:Ljava/lang/String;

    .line 36
    :cond_7d
    :goto_7d
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzaj;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaj;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_9b

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Ljava/lang/String;

    const-string p2, "Unable to register lifecycle notifications. Application null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_9b
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzag$zzc;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/zzag$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzag;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, v0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzag;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzag;
    .registers 13

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzag;->zzb:Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v0, :cond_20

    .line 4
    const-class v0, Lcom/google/android/gms/internal/measurement/zzag;

    monitor-enter v0

    .line 5
    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzag;->zzb:Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v1, :cond_1b

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzag;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzag;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzag;->zzb:Lcom/google/android/gms/internal/measurement/zzag;

    .line 7
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_1d

    throw p0

    .line 8
    :cond_20
    :goto_20
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzag;->zzb:Lcom/google/android/gms/internal/measurement/zzag;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/internal/measurement/zzv;
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzm:Lcom/google/android/gms/internal/measurement/zzv;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzag;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzf:Ljava/util/List;

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzd:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/internal/measurement/zzag$zzb;)V
    .registers 2

    .line 223
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/Exception;ZZ)V
    .registers 4

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method private final zza(Ljava/lang/Exception;ZZ)V
    .registers 10

    .line 64
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzk:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzk:Z

    if-eqz p2, :cond_f

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Ljava/lang/String;

    const-string p3, "Data collection startup failed. No data will be collected."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_f
    const-string p2, "Error with data collection. Data lost."

    if-eqz p3, :cond_1c

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzag;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    :cond_1c
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Ljava/lang/String;

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .registers 16

    .line 90
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzbl;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzbl;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 12

    .line 96
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzbk;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzbk;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 202
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 204
    :try_start_4
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 206
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_19

    goto :goto_20

    .line 208
    :cond_19
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1f} :catch_20

    return p0

    :catch_20
    :cond_20
    :goto_20
    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzag;)Z
    .registers 1

    .line 211
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzk:Z

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 214
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzag;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Landroid/content/Context;)V
    .registers 1

    .line 216
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzag;->zzh(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic zzc(Landroid/content/Context;)I
    .registers 1

    .line 220
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzag;->zzg(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzag;)Lcom/google/android/gms/internal/measurement/zzv;
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzm:Lcom/google/android/gms/internal/measurement/zzv;

    return-object p0
.end method

.method private static zzc(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    if-eqz p0, :cond_c

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzag;->zzk()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzd(Landroid/content/Context;)I
    .registers 1

    .line 221
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzag;->zzf(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzag;)Ljava/util/List;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzf:Ljava/util/List;

    return-object p0
.end method

.method private static zze(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "google_app_id"

    .line 44
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_7} :catch_b

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :catch_b
    :cond_b
    return v0
.end method

.method private static zzf(Landroid/content/Context;)I
    .registers 2

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 62
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static zzg(Landroid/content/Context;)I
    .registers 2

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 63
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static zzh(Landroid/content/Context;)V
    .registers 5

    .line 184
    const-class v0, Lcom/google/android/gms/internal/measurement/zzag;

    monitor-enter v0

    const/4 v1, 0x0

    .line 185
    :try_start_4
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzag;->zzh:Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6} :catch_3b
    .catchall {:try_start_4 .. :try_end_6} :catchall_39

    if-eqz v2, :cond_a

    .line 186
    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_39

    return-void

    :cond_a
    :try_start_a
    const-string v2, "app_measurement_internal_disable_startup_flags"

    .line 187
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 188
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzag;->zzh:Ljava/lang/Boolean;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_3b
    .catchall {:try_start_a .. :try_end_18} :catchall_39

    .line 189
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_39

    return-void

    :cond_1a
    :try_start_1a
    const-string v2, "com.google.android.gms.measurement.prefs"

    .line 191
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 192
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzag;->zzi:Ljava/lang/String;

    .line 193
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzag;->zzh:Ljava/lang/Boolean;

    .line 194
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 195
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzag;->zzi:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_38} :catch_3b
    .catchall {:try_start_1a .. :try_end_38} :catchall_39

    goto :goto_49

    :catchall_39
    move-exception p0

    goto :goto_4b

    :catch_3b
    move-exception p0

    :try_start_3c
    const-string v2, "FA"

    const-string v3, "Exception reading flag from SharedPreferences."

    .line 199
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzag;->zzh:Ljava/lang/Boolean;

    .line 201
    :goto_49
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_39

    throw p0
.end method

.method static synthetic zzj()Ljava/lang/Boolean;
    .registers 1

    .line 217
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzag;->zzh:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static zzk()Z
    .registers 1

    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 72
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 5

    .line 162
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 163
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbd;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzbd;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzt;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    if-eqz p2, :cond_16

    const-wide/16 p1, 0x1388

    .line 166
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzt;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/zzv;
    .registers 4

    if-eqz p2, :cond_5

    .line 53
    :try_start_2
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    goto :goto_7

    .line 54
    :cond_5
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    :goto_7
    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 55
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string p2, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzu;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzv;

    move-result-object p1
    :try_end_17
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zze:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    return-object v0
.end method

.method public final zza(I)Ljava/lang/Object;
    .registers 5

    .line 179
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 180
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbh;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzbh;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/internal/measurement/zzt;I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    const-wide/16 v1, 0x3a98

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzt;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzt;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 147
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzbb;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzbb;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzt;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    const-wide/16 p1, 0x1388

    .line 149
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/measurement/zzt;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 151
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_22

    goto :goto_54

    .line 153
    :cond_22
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_33
    :goto_33
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 156
    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_4f

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_4f

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 157
    :cond_4f
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_53
    return-object p2

    .line 152
    :cond_54
    :goto_54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 14

    .line 160
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzba;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzba;-><init>(Lcom/google/android/gms/internal/measurement/zzag;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zza(J)V
    .registers 4

    .line 118
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzar;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzar;-><init>(Lcom/google/android/gms/internal/measurement/zzag;J)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zza(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 112
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzam;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzam;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;)V
    .registers 3

    .line 98
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzhc;)V
    .registers 3

    .line 76
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbf;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/measurement/internal/zzhc;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzhf;)V
    .registers 3

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbj;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/measurement/internal/zzhf;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3

    .line 110
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzan;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzan;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 84
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 86
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 13

    .line 88
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final zza(Z)V
    .registers 3

    .line 114
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzap;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 103
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzak;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzak;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzt;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    const-wide/16 p1, 0x1388

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzt;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzt;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_21

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_21
    return-object p1
.end method

.method public final zzb()V
    .registers 2

    .line 116
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzao;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zzb(J)V
    .registers 4

    .line 120
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzaq;-><init>(Lcom/google/android/gms/internal/measurement/zzag;J)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzhf;)V
    .registers 3

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbi;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/measurement/internal/zzhf;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .registers 3

    .line 122
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzat;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 100
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzal;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzal;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zzb(Z)V
    .registers 3

    .line 182
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zzc()Ljava/lang/String;
    .registers 4

    .line 126
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 127
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzau;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/internal/measurement/zzt;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    const-wide/16 v1, 0x1f4

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzt;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)V
    .registers 3

    .line 124
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzav;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzav;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;)I
    .registers 5

    .line 169
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 170
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbc;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzbc;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzt;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    const-wide/16 v1, 0x2710

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzt;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzt;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_20

    const/16 p1, 0x19

    return p1

    .line 174
    :cond_20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final zzd()Ljava/lang/String;
    .registers 4

    .line 129
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 130
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzax;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzax;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/internal/measurement/zzt;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    const-wide/16 v1, 0x32

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzt;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()J
    .registers 6

    .line 132
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 133
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzaw;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/internal/measurement/zzt;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    const-wide/16 v1, 0x1f4

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzt;->zzb(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzt;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_3a

    .line 138
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzag;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzg:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 139
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 4

    .line 140
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 141
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaz;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzaz;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/internal/measurement/zzt;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    const-wide/16 v1, 0x1f4

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzt;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 4

    .line 143
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 144
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzay;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzay;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/internal/measurement/zzt;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    const-wide/16 v1, 0x1f4

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzt;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 4

    .line 175
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>()V

    .line 176
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbe;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzbe;-><init>(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/internal/measurement/zzt;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag$zzb;)V

    const-wide/32 v1, 0x1d4c0

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzt;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzl:Ljava/lang/String;

    return-object v0
.end method
