.class public final Lcom/google/android/gms/measurement/internal/zzeo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzf:Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/measurement/internal/zzem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzem<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zze:Ljava/lang/Object;

.field private volatile zzg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile zzh:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzeo;->zzf:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzem;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;",
            "Lcom/google/android/gms/measurement/internal/zzem<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zze:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzg:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzh:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zza:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzc:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzd:Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzb:Lcom/google/android/gms/measurement/internal/zzem;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzem;Lcom/google/android/gms/measurement/internal/zzen;)V
    .registers 6

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzeo;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzem;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zze:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_7a

    if-eqz p1, :cond_7

    return-object p1

    .line 16
    :cond_7
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzep;->zza:Lcom/google/android/gms/measurement/internal/zzx;

    if-nez p1, :cond_e

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzc:Ljava/lang/Object;

    return-object p1

    .line 18
    :cond_e
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzep;->zza:Lcom/google/android/gms/measurement/internal/zzx;

    .line 19
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzeo;->zzf:Ljava/lang/Object;

    monitor-enter p1

    .line 20
    :try_start_13
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzx;->zza()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzh:Ljava/lang/Object;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzc:Ljava/lang/Object;

    goto :goto_22

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzh:Ljava/lang/Object;

    :goto_22
    monitor-exit p1

    return-object v0

    .line 22
    :cond_24
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_75

    .line 23
    :try_start_25
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaq;->zzcu()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzeo;

    .line 25
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzx;->zza()Z

    move-result v1
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_3d} :catch_5c

    if-nez v1, :cond_54

    const/4 v1, 0x0

    .line 27
    :try_start_40
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzeo;->zzb:Lcom/google/android/gms/measurement/internal/zzem;

    if-eqz v2, :cond_4a

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzeo;->zzb:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zza()Ljava/lang/Object;

    move-result-object v1
    :try_end_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_4a} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_4a} :catch_5c

    .line 31
    :catch_4a
    :cond_4a
    :try_start_4a
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzeo;->zzf:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4d
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_4d} :catch_5c

    .line 32
    :try_start_4d
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzeo;->zzh:Ljava/lang/Object;

    .line 33
    monitor-exit v2

    goto :goto_2d

    :catchall_51
    move-exception p1

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_51

    :try_start_53
    throw p1

    .line 26
    :cond_54
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Refreshing flag cache must be done on a worker thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_53 .. :try_end_5c} :catch_5c

    :catch_5c
    nop

    .line 36
    :cond_5d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzb:Lcom/google/android/gms/measurement/internal/zzem;

    if-nez p1, :cond_66

    .line 37
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzep;->zza:Lcom/google/android/gms/measurement/internal/zzx;

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzc:Ljava/lang/Object;

    return-object p1

    .line 40
    :cond_66
    :try_start_66
    invoke-interface {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zza()Ljava/lang/Object;

    move-result-object p1
    :try_end_6a
    .catch Ljava/lang/SecurityException; {:try_start_66 .. :try_end_6a} :catch_70
    .catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_6a} :catch_6b

    return-object p1

    .line 46
    :catch_6b
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzep;->zza:Lcom/google/android/gms/measurement/internal/zzx;

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzc:Ljava/lang/Object;

    return-object p1

    .line 42
    :catch_70
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzep;->zza:Lcom/google/android/gms/measurement/internal/zzx;

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zzc:Ljava/lang/Object;

    return-object p1

    :catchall_75
    move-exception v0

    .line 22
    :try_start_76
    monitor-exit p1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0

    .line 13
    :goto_78
    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_7a

    throw p1

    :catchall_7a
    move-exception p1

    goto :goto_78
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->zza:Ljava/lang/String;

    return-object v0
.end method
