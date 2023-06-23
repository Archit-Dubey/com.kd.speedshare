.class public final Lcom/google/android/gms/internal/ads/zzatd;
.super Landroid/content/ContextWrapper;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private zzdul:Landroid/content/Context;

.field private zzdum:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdum:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static zzaa(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzatd;
    .registers 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatd;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzatd;->zzl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzatd;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static zzab(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 40
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzatd;

    if-eqz v0, :cond_b

    .line 41
    check-cast p0, Lcom/google/android/gms/internal/ads/zzatd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzatd;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 42
    :cond_b
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzatd;->zzl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzd(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    monitor-enter p0

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdul:Landroid/content/Context;

    if-eqz v0, :cond_37

    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdul:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_37

    .line 22
    :cond_20
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 23
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_39

    .line 24
    monitor-exit p0

    return-object v0

    .line 21
    :cond_37
    :goto_37
    monitor-exit p0

    return-object p1

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zze(Landroid/content/Intent;)V
    .registers 7

    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x10000000

    if-nez v0, :cond_15

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 29
    monitor-exit p0

    return-void

    .line 30
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x10000001

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2b

    .line 33
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    .line 35
    :try_start_2c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_3d

    .line 38
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static zzl(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    return-object v0
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .registers 1

    return-object p0
.end method

.method public final declared-synchronized getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    monitor-enter p0

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdul:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdul:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    monitor-exit p0

    return-object v0

    .line 9
    :cond_d
    :try_start_d
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPackageName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdul:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdul:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    monitor-exit p0

    return-object v0

    .line 12
    :cond_d
    :try_start_d
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPackageResourcePath()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdul:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdul:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    monitor-exit p0

    return-object v0

    .line 15
    :cond_d
    :try_start_d
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAppPackageName(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 4
    :try_start_2
    invoke-super {p0, p1, v0}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzdul:Landroid/content/Context;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 5
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized startActivity(Landroid/content/Intent;)V
    .registers 2

    monitor-enter p0

    .line 16
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatd;->zzd(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatd;->zze(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 17
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
