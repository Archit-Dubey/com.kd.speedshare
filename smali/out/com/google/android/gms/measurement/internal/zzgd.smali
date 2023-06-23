.class public Lcom/google/android/gms/measurement/internal/zzgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgz;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzgd;


# instance fields
.field final zza:J

.field private zzaa:Ljava/lang/Boolean;

.field private zzab:J

.field private volatile zzac:Ljava/lang/Boolean;

.field private zzad:Ljava/lang/Boolean;

.field private zzae:Ljava/lang/Boolean;

.field private zzaf:I

.field private zzag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzx;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzfl;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzez;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzfw;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzjw;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzkw;

.field private final zzo:Lcom/google/android/gms/measurement/internal/zzex;

.field private final zzp:Lcom/google/android/gms/common/util/Clock;

.field private final zzq:Lcom/google/android/gms/measurement/internal/zzin;

.field private final zzr:Lcom/google/android/gms/measurement/internal/zzhh;

.field private final zzs:Lcom/google/android/gms/measurement/internal/zza;

.field private final zzt:Lcom/google/android/gms/measurement/internal/zzie;

.field private zzu:Lcom/google/android/gms/measurement/internal/zzev;

.field private zzv:Lcom/google/android/gms/measurement/internal/zzis;

.field private zzw:Lcom/google/android/gms/measurement/internal/zzai;

.field private zzx:Lcom/google/android/gms/measurement/internal/zzes;

.field private zzy:Lcom/google/android/gms/measurement/internal/zzfq;

.field private zzz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzhe;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzz:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Landroid/content/Context;

    .line 6
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzx;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzh:Lcom/google/android/gms/measurement/internal/zzx;

    .line 9
    sput-object v2, Lcom/google/android/gms/measurement/internal/zzep;->zza:Lcom/google/android/gms/measurement/internal/zzx;

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Landroid/content/Context;

    .line 11
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzb:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzd:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzc:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zze:Ljava/lang/String;

    .line 13
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzd:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzf:Ljava/lang/String;

    .line 14
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzh:Z

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzg:Z

    .line 15
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzac:Ljava/lang/Boolean;

    .line 16
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v1, :cond_5b

    .line 17
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz v2, :cond_5b

    .line 18
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string v3, "measurementEnabled"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_4b

    .line 20
    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzad:Ljava/lang/Boolean;

    .line 21
    :cond_4b
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string v2, "measurementDeactivated"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_5b

    .line 23
    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzae:Ljava/lang/Boolean;

    .line 24
    :cond_5b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 29
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzi:Ljava/lang/Long;

    if-eqz v1, :cond_71

    .line 30
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzi:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_77

    .line 31
    :cond_71
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    :goto_77
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zza:J

    .line 33
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 34
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 36
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgw;->zzab()V

    .line 39
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzj:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 41
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzez;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzez;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgw;->zzab()V

    .line 44
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzk:Lcom/google/android/gms/measurement/internal/zzez;

    .line 46
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgw;->zzab()V

    .line 49
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzn:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 51
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzex;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzex;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgw;->zzab()V

    .line 54
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzo:Lcom/google/android/gms/measurement/internal/zzex;

    .line 56
    new-instance v1, Lcom/google/android/gms/measurement/internal/zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 57
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzs:Lcom/google/android/gms/measurement/internal/zza;

    .line 59
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzin;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzin;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()V

    .line 62
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzin;

    .line 64
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzhh;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()V

    .line 67
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzr:Lcom/google/android/gms/measurement/internal/zzhh;

    .line 69
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzjw;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()V

    .line 72
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzm:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 74
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzie;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzie;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgw;->zzab()V

    .line 77
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzt:Lcom/google/android/gms/measurement/internal/zzie;

    .line 79
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzfw;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 81
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgw;->zzab()V

    .line 82
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzl:Lcom/google/android/gms/measurement/internal/zzfw;

    .line 83
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    const/4 v2, 0x1

    if-eqz v1, :cond_f1

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    iget-wide v3, v1, Lcom/google/android/gms/internal/measurement/zzae;->zzb:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f1

    const/4 v0, 0x1

    :cond_f1
    xor-int/2addr v0, v2

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_13c

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzh()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_149

    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 92
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    if-nez v3, :cond_122

    .line 93
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzid;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Lcom/google/android/gms/measurement/internal/zzhh;Lcom/google/android/gms/measurement/internal/zzhi;)V

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    :cond_122
    if-eqz v0, :cond_149

    .line 95
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    .line 96
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 97
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    .line 98
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto :goto_149

    .line 101
    :cond_13c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 102
    :cond_149
    :goto_149
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzl:Lcom/google/android/gms/measurement/internal/zzfw;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgf;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;Lcom/google/android/gms/measurement/internal/zzhe;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzgd;
    .registers 14

    if-eqz p1, :cond_1d

    .line 293
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zze:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 294
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzae;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzd:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/zzae;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v0

    .line 295
    :cond_1d
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Lcom/google/android/gms/measurement/internal/zzgd;

    if-nez v0, :cond_43

    .line 298
    const-class v0, Lcom/google/android/gms/measurement/internal/zzgd;

    monitor-enter v0

    .line 299
    :try_start_2e
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Lcom/google/android/gms/measurement/internal/zzgd;

    if-nez v1, :cond_3e

    .line 301
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)V

    .line 303
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;-><init>(Lcom/google/android/gms/measurement/internal/zzhe;)V

    .line 304
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 305
    :cond_3e
    monitor-exit v0

    goto :goto_60

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_40

    throw p0

    :cond_43
    if-eqz p1, :cond_60

    .line 306
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_60

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 307
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_60

    .line 308
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Lcom/google/android/gms/measurement/internal/zzgd;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 309
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 310
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Z)V

    .line 311
    :cond_60
    :goto_60
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Lcom/google/android/gms/measurement/internal/zzgd;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzgd;Lcom/google/android/gms/measurement/internal/zzhe;)V
    .registers 2

    .line 499
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Lcom/google/android/gms/measurement/internal/zzhe;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzgx;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 323
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzhe;)V
    .registers 6

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 107
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzab()V

    .line 110
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzw:Lcom/google/android/gms/measurement/internal/zzai;

    .line 112
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzf:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;J)V

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()V

    .line 115
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzx:Lcom/google/android/gms/measurement/internal/zzes;

    .line 117
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzev;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzev;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()V

    .line 120
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzu:Lcom/google/android/gms/measurement/internal/zzev;

    .line 122
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzis;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzis;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 124
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()V

    .line 125
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzv:Lcom/google/android/gms/measurement/internal/zzis;

    .line 126
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzn:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgw;->zzac()V

    .line 127
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzj:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgw;->zzac()V

    .line 129
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfq;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 130
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzy:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 131
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzx:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy()V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzv()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 134
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzf()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzv()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzab()Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkw;->zzf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzv()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    goto :goto_ad

    .line 150
    :cond_8c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzv()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a5

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_aa

    :cond_a5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_aa
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 152
    :goto_ad
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 153
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 154
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzaf:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_e4

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzaf:I

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e4
    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzz:Z

    return-void
.end method

.method private final zzai()Lcom/google/android/gms/measurement/internal/zzie;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzt:Lcom/google/android/gms/measurement/internal/zzie;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzgw;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzt:Lcom/google/android/gms/measurement/internal/zzie;

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 4

    if-eqz p0, :cond_32

    .line 319
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 320
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/zzgw;)V
    .registers 4

    if-eqz p0, :cond_32

    .line 314
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzz()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 315
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final zza()V
    .registers 7

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzc:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzc:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 164
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 165
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(J)V

    .line 166
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzh:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zza()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5a

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Persisting first open"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzh:Lcom/google/android/gms/measurement/internal/zzfp;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zza:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(J)V

    .line 171
    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 172
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzcq:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzh()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhh;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzb()V

    .line 176
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzag()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 177
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzab()Z

    move-result v0

    if-eqz v0, :cond_261

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zzd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 180
    :cond_92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zzd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 186
    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Landroid/content/Context;

    .line 187
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 189
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzy()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Landroid/content/Context;

    .line 192
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 195
    :cond_d4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Landroid/content/Context;

    const/4 v1, 0x0

    .line 196
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 197
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 198
    :cond_ea
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto/16 :goto_261

    .line 203
    :cond_f9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_116

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_196

    .line 205
    :cond_116
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzac()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzad()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzi()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzv()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzk()V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzk()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzev;->zzab()V

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzv:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzis;->zzah()V

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzv:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzis;->zzaf()V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzh:Lcom/google/android/gms/measurement/internal/zzfp;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zza:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(J)V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzj:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)V

    .line 218
    :cond_178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd(Ljava/lang/String;)V

    .line 220
    :cond_196
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzh()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfl;->zzj:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhh;->zza(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmv;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 226
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkw;->zzv()Z

    move-result v0

    if-nez v0, :cond_1e7

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzu:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e7

    .line 229
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v2, "Remote config removed with active feature rollouts"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzu:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)V

    .line 231
    :cond_1e7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_203

    .line 232
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_261

    .line 233
    :cond_203
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzab()Z

    move-result v0

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzx()Z

    move-result v1

    if-nez v1, :cond_222

    .line 235
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzh()Z

    move-result v1

    if-nez v1, :cond_222

    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc(Z)V

    :cond_222
    if-eqz v0, :cond_22b

    .line 239
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzh()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhh;->zzai()V

    .line 240
    :cond_22b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zze()Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zza()V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzw()Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzis;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 242
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzof;->zzb()Z

    move-result v0

    if-eqz v0, :cond_261

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 244
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzcm:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_261

    .line 245
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzw()Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zzx:Lcom/google/android/gms/measurement/internal/zzfm;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfm;->zza()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzis;->zza(Landroid/os/Bundle;)V

    .line 247
    :cond_261
    :goto_261
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzo:Lcom/google/android/gms/measurement/internal/zzfn;

    .line 248
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 249
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzaz:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(Z)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 2

    .line 377
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzaf:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzaf:I

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzgw;)V
    .registers 2

    .line 375
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzaf:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzaf:I

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12

    const-string p1, "gclid"

    const-string p5, ""

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_12

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_12

    const/16 v2, 0x130

    if-ne p2, v2, :cond_16

    :cond_12
    if-nez p3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-nez v2, :cond_2b

    .line 454
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 455
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    .line 456
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    .line 457
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 459
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfl;->zzs:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(Z)V

    .line 460
    array-length p2, p4

    if-nez p2, :cond_45

    .line 461
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-void

    .line 463
    :cond_45
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    .line 464
    :try_start_4a
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "deeplink"

    .line 466
    invoke-virtual {p3, p2, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 467
    invoke-virtual {p3, p1, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "timestamp"

    const-wide/16 v2, 0x0

    .line 469
    invoke-virtual {p3, p5, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 470
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_75

    .line 471
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-void

    .line 473
    :cond_75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p3

    .line 474
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb()V

    .line 475
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_a2

    .line 477
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object p3

    .line 478
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance p5, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 479
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p5, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p3, p5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_a2

    .line 480
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a2

    goto :goto_a3

    :cond_a2
    const/4 v0, 0x0

    :goto_a3
    if-nez v0, :cond_b3

    .line 482
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    .line 484
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 486
    :cond_b3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 487
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_cis"

    const-string p4, "ddp"

    .line 488
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzr:Lcom/google/android/gms/measurement/internal/zzhh;

    const-string p4, "auto"

    const-string p5, "_cmp"

    invoke-virtual {p1, p4, p5, p3}, Lcom/google/android/gms/measurement/internal/zzhh;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p1

    .line 491
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_e9

    .line 492
    invoke-virtual {p1, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;D)Z

    move-result p2

    if-eqz p2, :cond_e9

    .line 493
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_e9} :catch_ea

    :cond_e9
    return-void

    :catch_ea
    move-exception p1

    .line 497
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Z)V
    .registers 2

    .line 325
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzac:Ljava/lang/Boolean;

    return-void
.end method

.method public final zzaa()Z
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final zzab()Z
    .registers 2

    .line 328
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzac()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzac()I
    .registers 4

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 332
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 333
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzh()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    return v0

    .line 335
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzae:Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    .line 336
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x2

    return v0

    .line 338
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzv()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 340
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    return v1

    :cond_2f
    const/4 v0, 0x3

    return v0

    .line 342
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 344
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    const-string v2, "firebase_analytics_collection_enabled"

    .line 346
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 349
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    return v1

    :cond_45
    const/4 v0, 0x4

    return v0

    .line 350
    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzad:Ljava/lang/Boolean;

    if-eqz v0, :cond_54

    .line 351
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_52

    return v1

    :cond_52
    const/4 v0, 0x5

    return v0

    .line 355
    :cond_54
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->isMeasurementExplicitlyDisabled()Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x6

    return v0

    .line 359
    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 360
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzas:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_75

    .line 361
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_73

    return v1

    :cond_73
    const/4 v0, 0x7

    return v0

    :cond_75
    return v1
.end method

.method final zzad()V
    .registers 1

    return-void
.end method

.method final zzae()V
    .registers 3

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzaf()V
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected final zzag()Z
    .registers 7

    .line 382
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzz:Z

    if-eqz v0, :cond_c6

    .line 385
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 386
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzaa:Ljava/lang/Boolean;

    if-eqz v0, :cond_32

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzab:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_32

    if-eqz v0, :cond_bf

    .line 387
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 388
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 389
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzab:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_bf

    .line 391
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 392
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzab:J

    .line 398
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zzd(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7a

    .line 399
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->zzd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 400
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Landroid/content/Context;

    .line 401
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_78

    .line 402
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 403
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzy()Z

    move-result v0

    if-nez v0, :cond_78

    .line 404
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Landroid/content/Context;

    .line 405
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 406
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Landroid/content/Context;

    .line 407
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_7a

    :cond_78
    const/4 v0, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v0, 0x0

    .line 408
    :goto_7b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzaa:Ljava/lang/Boolean;

    .line 409
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 411
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    .line 412
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzac()Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzad()Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzae()Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 416
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto :goto_b9

    :cond_b8
    const/4 v1, 0x0

    .line 417
    :cond_b9
    :goto_b9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzaa:Ljava/lang/Boolean;

    .line 418
    :cond_bf
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzaa:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 383
    :cond_c6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzah()V
    .registers 11

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 421
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzai()Lcom/google/android/gms/measurement/internal/zzie;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzgw;)V

    .line 422
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzab()Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 427
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzi()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a6

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 428
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a6

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 429
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_a6

    .line 432
    :cond_3f
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzai()Lcom/google/android/gms/measurement/internal/zzie;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzie;->zzg()Z

    move-result v2

    if-nez v2, :cond_57

    .line 433
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-void

    .line 436
    :cond_57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzi()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    .line 437
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    .line 438
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzy;->zzf()J

    move-result-wide v3

    .line 439
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 440
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfl;->zzt:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfp;->zza()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v0

    .line 441
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;

    move-result-object v4

    .line 442
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzai()Lcom/google/android/gms/measurement/internal/zzie;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzgc;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzgc;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 444
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 445
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgw;->zzaa()V

    .line 446
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzig;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzig;-><init>(Lcom/google/android/gms/measurement/internal/zzie;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 449
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfw;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 430
    :cond_a6
    :goto_a6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzfl;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzj:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Lcom/google/android/gms/measurement/internal/zzgx;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzj:Lcom/google/android/gms/measurement/internal/zzfl;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzk:Lcom/google/android/gms/measurement/internal/zzez;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzz()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzk:Lcom/google/android/gms/measurement/internal/zzez;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzjw;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzm:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzm:Lcom/google/android/gms/measurement/internal/zzjw;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzfq;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzy:Lcom/google/android/gms/measurement/internal/zzfq;

    return-object v0
.end method

.method final zzg()Lcom/google/android/gms/measurement/internal/zzfw;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzl:Lcom/google/android/gms/measurement/internal/zzfw;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzhh;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzr:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzr:Lcom/google/android/gms/measurement/internal/zzhh;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzkw;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzn:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Lcom/google/android/gms/measurement/internal/zzgx;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzn:Lcom/google/android/gms/measurement/internal/zzkw;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzex;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzo:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Lcom/google/android/gms/measurement/internal/zzgx;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzo:Lcom/google/android/gms/measurement/internal/zzex;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzev;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzu:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzu:Lcom/google/android/gms/measurement/internal/zzev;

    return-object v0
.end method

.method public final zzl()Z
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzp:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final zzn()Landroid/content/Context;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method public final zzo()Ljava/lang/String;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzp()Ljava/lang/String;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzfw;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzl:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzgw;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzl:Lcom/google/android/gms/measurement/internal/zzfw;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzk:Lcom/google/android/gms/measurement/internal/zzez;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzgw;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzk:Lcom/google/android/gms/measurement/internal/zzez;

    return-object v0
.end method

.method public final zzs()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzt()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzg:Z

    return v0
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzh:Lcom/google/android/gms/measurement/internal/zzx;

    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zzin;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzin;

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/measurement/internal/zzis;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzv:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzv:Lcom/google/android/gms/measurement/internal/zzis;

    return-object v0
.end method

.method public final zzx()Lcom/google/android/gms/measurement/internal/zzai;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzw:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzgw;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzw:Lcom/google/android/gms/measurement/internal/zzai;

    return-object v0
.end method

.method public final zzy()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzx:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzx:Lcom/google/android/gms/measurement/internal/zzes;

    return-object v0
.end method

.method public final zzz()Lcom/google/android/gms/measurement/internal/zza;
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgd;->zzs:Lcom/google/android/gms/measurement/internal/zza;

    if-eqz v0, :cond_5

    return-object v0

    .line 291
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
