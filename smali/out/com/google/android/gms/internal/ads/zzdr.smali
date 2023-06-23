.class final Lcom/google/android/gms/internal/ads/zzdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzwc:Lcom/google/android/gms/internal/ads/zzdp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdp;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzwc:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzwc:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdp;->zza(Lcom/google/android/gms/internal/ads/zzdp;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzwc:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdp;->zzb(Lcom/google/android/gms/internal/ads/zzdp;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzwc:Lcom/google/android/gms/internal/ads/zzdp;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdp;->zza(Lcom/google/android/gms/internal/ads/zzdp;Z)Z

    .line 6
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_3e

    .line 7
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzwc:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdp;->zzc(Lcom/google/android/gms/internal/ads/zzdp;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_2a

    :catch_1c
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzwc:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdp;->zzd(Lcom/google/android/gms/internal/ads/zzdp;)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    const/16 v2, 0x7e7

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzdpm;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 11
    :goto_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzwc:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdp;->zza(Lcom/google/android/gms/internal/ads/zzdp;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 12
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzwc:Lcom/google/android/gms/internal/ads/zzdp;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdp;->zza(Lcom/google/android/gms/internal/ads/zzdp;Z)Z

    .line 13
    monitor-exit v1

    return-void

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw v0

    .line 5
    :cond_3c
    :try_start_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_3e

    throw v1
.end method
