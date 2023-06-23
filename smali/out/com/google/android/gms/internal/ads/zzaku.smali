.class public final Lcom/google/android/gms/internal/ads/zzaku;
.super Lcom/google/android/gms/internal/ads/zzbbu;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbu<",
        "Lcom/google/android/gms/internal/ads/zzalf;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzdgq:Lcom/google/android/gms/internal/ads/zzaky;

.field private zzdgr:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaky;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->lock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzdgq:Lcom/google/android/gms/internal/ads/zzaky;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaku;)Lcom/google/android/gms/internal/ads/zzaky;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzdgq:Lcom/google/android/gms/internal/ads/zzaky;

    return-object p0
.end method


# virtual methods
.method public final release()V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzdgr:Z

    if-eqz v1, :cond_9

    .line 7
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzdgr:Z

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzakx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzakx;-><init>(Lcom/google/android/gms/internal/ads/zzaku;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbbs;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbbs;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbu;->zza(Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzbbp;)V

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzakw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzakw;-><init>(Lcom/google/android/gms/internal/ads/zzaku;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzakz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzakz;-><init>(Lcom/google/android/gms/internal/ads/zzaku;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbu;->zza(Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzbbp;)V

    .line 11
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
