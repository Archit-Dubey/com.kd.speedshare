.class final Lcom/google/android/gms/internal/ads/zzsu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final synthetic zzbuu:Lcom/google/android/gms/internal/ads/zzsq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzbuu:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzbuu:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsq;->zzc(Lcom/google/android/gms/internal/ads/zzsq;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzbuu:Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zztd;)Lcom/google/android/gms/internal/ads/zztd;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzbuu:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzd(Lcom/google/android/gms/internal/ads/zzsq;)Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzbuu:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzsz;)Lcom/google/android/gms/internal/ads/zzsz;

    .line 6
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzbuu:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzc(Lcom/google/android/gms/internal/ads/zzsq;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v0
.end method
