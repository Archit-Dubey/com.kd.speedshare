.class final Lcom/google/android/gms/internal/ads/zzdtu$zzh;
.super Lcom/google/android/gms/internal/ads/zzdtu$zza;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdtu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzh"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtu$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdtu$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdtu$1;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtu$zzh;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzdtu$zzk;Lcom/google/android/gms/internal/ads/zzdtu$zzk;)V
    .registers 3

    .line 4
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzdtu$zzk;->next:Lcom/google/android/gms/internal/ads/zzdtu$zzk;

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdtu$zzk;Ljava/lang/Thread;)V
    .registers 3

    .line 2
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzdtu$zzk;->thread:Ljava/lang/Thread;

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu$zzd;Lcom/google/android/gms/internal/ads/zzdtu$zzd;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdtu$zzd;",
            "Lcom/google/android/gms/internal/ads/zzdtu$zzd;",
            ")Z"
        }
    .end annotation

    .line 12
    monitor-enter p1

    .line 13
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtu;->zze(Lcom/google/android/gms/internal/ads/zzdtu;)Lcom/google/android/gms/internal/ads/zzdtu$zzd;

    move-result-object v0

    if-ne v0, p2, :cond_d

    .line 14
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzdtu;->zza(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu$zzd;)Lcom/google/android/gms/internal/ads/zzdtu$zzd;

    const/4 p2, 0x1

    .line 15
    monitor-exit p1

    return p2

    :cond_d
    const/4 p2, 0x0

    .line 16
    monitor-exit p1

    return p2

    :catchall_10
    move-exception p2

    .line 17
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu$zzk;Lcom/google/android/gms/internal/ads/zzdtu$zzk;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdtu$zzk;",
            "Lcom/google/android/gms/internal/ads/zzdtu$zzk;",
            ")Z"
        }
    .end annotation

    .line 6
    monitor-enter p1

    .line 7
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtu;->zzd(Lcom/google/android/gms/internal/ads/zzdtu;)Lcom/google/android/gms/internal/ads/zzdtu$zzk;

    move-result-object v0

    if-ne v0, p2, :cond_d

    .line 8
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzdtu;->zza(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu$zzk;)Lcom/google/android/gms/internal/ads/zzdtu$zzk;

    const/4 p2, 0x1

    .line 9
    monitor-exit p1

    return p2

    :cond_d
    const/4 p2, 0x0

    .line 10
    monitor-exit p1

    return p2

    :catchall_10
    move-exception p2

    .line 11
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdtu;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 18
    monitor-enter p1

    .line 19
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtu;->zzb(Lcom/google/android/gms/internal/ads/zzdtu;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_d

    .line 20
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzdtu;->zza(Lcom/google/android/gms/internal/ads/zzdtu;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 21
    monitor-exit p1

    return p2

    :cond_d
    const/4 p2, 0x0

    .line 22
    monitor-exit p1

    return p2

    :catchall_10
    move-exception p2

    .line 23
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method
