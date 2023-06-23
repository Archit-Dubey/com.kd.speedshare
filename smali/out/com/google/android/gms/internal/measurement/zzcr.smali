.class final Lcom/google/android/gms/internal/measurement/zzcr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcm;


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzcr;


# instance fields
.field private final zzb:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Landroid/database/ContentObserver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcr;->zzb:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcr;->zzc:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcr;->zzb:Landroid/content/Context;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzct;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzct;-><init>(Lcom/google/android/gms/internal/measurement/zzcr;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcr;->zzc:Landroid/database/ContentObserver;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zza:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcr;->zzc:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzcr;
    .registers 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzcr;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcr;->zza:Lcom/google/android/gms/internal/measurement/zzcr;

    if-nez v1, :cond_21

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 4
    invoke-static {p0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_1a

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzcr;-><init>(Landroid/content/Context;)V

    goto :goto_1f

    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzcr;-><init>()V

    :goto_1f
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzcr;->zza:Lcom/google/android/gms/internal/measurement/zzcr;

    .line 6
    :cond_21
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcr;->zza:Lcom/google/android/gms/internal/measurement/zzcr;

    monitor-exit v0

    return-object p0

    :catchall_25
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method static declared-synchronized zza()V
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/measurement/zzcr;

    monitor-enter v0

    .line 23
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcr;->zza:Lcom/google/android/gms/internal/measurement/zzcr;

    if-eqz v1, :cond_22

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcr;->zza:Lcom/google/android/gms/internal/measurement/zzcr;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzcr;->zzb:Landroid/content/Context;

    if-eqz v1, :cond_22

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcr;->zza:Lcom/google/android/gms/internal/measurement/zzcr;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzcr;->zzc:Landroid/database/ContentObserver;

    if-eqz v1, :cond_22

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcr;->zza:Lcom/google/android/gms/internal/measurement/zzcr;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzcr;->zzb:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcr;->zza:Lcom/google/android/gms/internal/measurement/zzcr;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzcr;->zzc:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_22
    const/4 v1, 0x0

    .line 25
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzcr;->zza:Lcom/google/android/gms/internal/measurement/zzcr;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 26
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zzc(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcr;->zzb:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 19
    :cond_6
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzcq;-><init>(Lcom/google/android/gms/internal/measurement/zzcr;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzcp;->zza(Lcom/google/android/gms/internal/measurement/zzco;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_11} :catch_14
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    goto :goto_15

    :catch_14
    move-exception v0

    :goto_15
    const-string v2, "Unable to read GServices for: "

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2b

    :cond_26
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2b
    const-string v2, "GservicesLoader"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcr;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcr;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzcf;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
