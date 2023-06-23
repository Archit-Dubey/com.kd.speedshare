.class final Lcom/google/android/gms/internal/ads/zzrh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private foreground:Z

.field private final lock:Ljava/lang/Object;

.field private zzaar:Landroid/app/Activity;

.field private zzbsr:Z

.field private final zzbss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzrj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzru;",
            ">;"
        }
    .end annotation
.end field

.field private zzbsu:Ljava/lang/Runnable;

.field private zzbsv:J

.field private zzvr:Landroid/content/Context;

.field private zzzg:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->foreground:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsr:Z

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbss:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbst:Ljava/util/List;

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzzg:Z

    return-void
.end method

.method private final setActivity(Landroid/app/Activity;)V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 94
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzaar:Landroid/app/Activity;

    .line 95
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzrh;)Ljava/lang/Object;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzrh;Z)Z
    .registers 2

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->foreground:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzrh;)Z
    .registers 1

    .line 97
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzrh;->foreground:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzrh;)Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsr:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzrh;)Ljava/util/List;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbss:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzaar:Landroid/app/Activity;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzvr:Landroid/content/Context;

    return-object v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 7

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzaar:Landroid/app/Activity;

    if-nez v1, :cond_9

    .line 75
    monitor-exit v0

    return-void

    .line 76
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzaar:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzaar:Landroid/app/Activity;

    .line 78
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbst:Ljava/util/List;

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzru;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_42

    .line 82
    :try_start_26
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzru;->zza(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30
    .catchall {:try_start_26 .. :try_end_2f} :catchall_42

    goto :goto_1a

    :catch_30
    move-exception v2

    .line 86
    :try_start_31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v3

    const-string v4, "AppActivityTracker.ActivityListener.onActivityDestroyed"

    .line 87
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v3, ""

    .line 89
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 91
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_42

    goto :goto_46

    :goto_45
    throw p1

    :goto_46
    goto :goto_45
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 7

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrh;->setActivity(Landroid/app/Activity;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbst:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzru;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_4a

    .line 57
    :try_start_18
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzru;->onActivityPaused(Landroid/app/Activity;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_4a

    goto :goto_c

    :catch_1c
    move-exception v2

    .line 60
    :try_start_1d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v3

    const-string v4, "AppActivityTracker.ActivityListener.onActivityPaused"

    .line 61
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v3, ""

    .line 63
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 65
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_4a

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsr:Z

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsu:Ljava/lang/Runnable;

    if-eqz p1, :cond_3b

    .line 68
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaye;->zzdzw:Lcom/google/android/gms/internal/ads/zzdrr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsu:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdrr;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    :cond_3b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaye;->zzdzw:Lcom/google/android/gms/internal/ads/zzdrr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzrg;-><init>(Lcom/google/android/gms/internal/ads/zzrh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsu:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsv:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdrr;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_4a
    move-exception p1

    .line 65
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    goto :goto_4e

    :goto_4d
    throw p1

    :goto_4e
    goto :goto_4d
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 9

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrh;->setActivity(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsr:Z

    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->foreground:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 32
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->foreground:Z

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsu:Ljava/lang/Runnable;

    if-eqz v2, :cond_17

    .line 34
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaye;->zzdzw:Lcom/google/android/gms/internal/ads/zzdrr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsu:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdrr;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 36
    :try_start_1a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbst:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzru;
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_66

    .line 37
    :try_start_2c
    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzru;->onActivityResumed(Landroid/app/Activity;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_66

    goto :goto_20

    :catch_30
    move-exception v4

    .line 40
    :try_start_31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v5

    const-string v6, "AppActivityTracker.ActivityListener.onActivityResumed"

    .line 41
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v5, ""

    .line 43
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :cond_40
    if-eqz v0, :cond_5f

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbss:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzrj;
    :try_end_54
    .catchall {:try_start_31 .. :try_end_54} :catchall_66

    .line 47
    :try_start_54
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzrj;->zzp(Z)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_66

    goto :goto_48

    :catch_58
    move-exception v0

    :try_start_59
    const-string v3, ""

    .line 50
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    :cond_5f
    const-string p1, "App is still foreground."

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 53
    :cond_64
    monitor-exit v2

    return-void

    :catchall_66
    move-exception p1

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_66

    goto :goto_6a

    :goto_69
    throw p1

    :goto_6a
    goto :goto_69
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrh;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final zza(Landroid/app/Application;Landroid/content/Context;)V
    .registers 4

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzzg:Z

    if-nez v0, :cond_27

    .line 9
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 10
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 11
    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzrh;->setActivity(Landroid/app/Activity;)V

    .line 12
    :cond_10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzvr:Landroid/content/Context;

    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcoc:Lcom/google/android/gms/internal/ads/zzaag;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbsv:J

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzzg:Z

    :cond_27
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzrj;)V
    .registers 4

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbss:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzrj;)V
    .registers 4

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbss:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
