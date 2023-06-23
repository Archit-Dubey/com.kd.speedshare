.class public final Lcom/google/android/gms/internal/ads/zzaty;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzdup:Lcom/google/android/gms/internal/ads/zzatj;

.field private final zzduq:Lcom/google/android/gms/internal/ads/zzatt;

.field private zzdur:Ljava/lang/String;

.field private zzdus:Ljava/lang/String;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzatj;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzatt;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzduq:Lcom/google/android/gms/internal/ads/zzatt;

    if-nez p2, :cond_19

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzzq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzzq;-><init>()V

    :cond_19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzvr:Landroid/content/Context;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyq;)V
    .registers 6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    if-nez v1, :cond_9

    .line 9
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    return-void

    .line 10
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzvr:Landroid/content/Context;

    .line 12
    invoke-static {v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyq;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzatw;

    move-result-object p1

    .line 13
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzatj;->zza(Lcom/google/android/gms/internal/ads/zzatw;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    goto :goto_1b

    :catch_15
    move-exception p1

    :try_start_16
    const-string p2, "#007 Could not call remote method."

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaty;->destroy(Landroid/content/Context;)V

    return-void
.end method

.method public final destroy(Landroid/content/Context;)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzduq:Lcom/google/android/gms/internal/ads/zzatt;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzatt;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    if-nez v1, :cond_f

    .line 93
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    return-void

    .line 94
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzatj;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19
    .catchall {:try_start_f .. :try_end_18} :catchall_21

    goto :goto_1f

    :catch_19
    move-exception p1

    :try_start_1a
    const-string v1, "#007 Could not call remote method."

    .line 97
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-eqz v1, :cond_15

    .line 47
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzatj;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_f
    .catchall {:try_start_7 .. :try_end_d} :catchall_1c

    :try_start_d
    monitor-exit v0

    return-object v1

    :catch_f
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 49
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public final getCustomData()Ljava/lang/String;
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdus:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 128
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    if-eqz v0, :cond_11

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatj;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 109
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 4

    const/4 v0, 0x0

    .line 130
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    if-eqz v1, :cond_12

    .line 131
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzatj;->zzkj()Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 134
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    :cond_12
    :goto_12
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzduq:Lcom/google/android/gms/internal/ads/zzatt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatt;->getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 101
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdur:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 104
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isLoaded()Z
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 62
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    .line 63
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzatj;->isLoaded()Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "#007 Could not call remote method."

    .line 65
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    .line 67
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .registers 3

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzdq()Lcom/google/android/gms/internal/ads/zzyq;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaty;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyq;)V

    return-void
.end method

.method public final loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 3

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdq()Lcom/google/android/gms/internal/ads/zzyq;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaty;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyq;)V

    return-void
.end method

.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaty;->pause(Landroid/content/Context;)V

    return-void
.end method

.method public final pause(Landroid/content/Context;)V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    if-nez v1, :cond_9

    .line 72
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    return-void

    .line 73
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzatj;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13
    .catchall {:try_start_9 .. :try_end_12} :catchall_1b

    goto :goto_19

    :catch_13
    move-exception p1

    :try_start_14
    const-string v1, "#007 Could not call remote method."

    .line 76
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final resume()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaty;->resume(Landroid/content/Context;)V

    return-void
.end method

.method public final resume(Landroid/content/Context;)V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    if-nez v1, :cond_9

    .line 82
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    return-void

    .line 83
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzatj;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13
    .catchall {:try_start_9 .. :try_end_12} :catchall_1b

    goto :goto_19

    :catch_13
    move-exception p1

    :try_start_14
    const-string v1, "#007 Could not call remote method."

    .line 86
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :goto_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final setAdMetadataListener(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-eqz v1, :cond_18

    .line 40
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzvb;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzvb;-><init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzatj;->zza(Lcom/google/android/gms/internal/ads/zzwz;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12
    .catchall {:try_start_7 .. :try_end_11} :catchall_1a

    goto :goto_18

    :catch_12
    move-exception p1

    :try_start_13
    const-string v1, "#007 Could not call remote method."

    .line 43
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final setCustomData(Ljava/lang/String;)V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v1, :cond_15

    .line 120
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzatj;->setCustomData(Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdus:Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f
    .catchall {:try_start_7 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception p1

    :try_start_10
    const-string v1, "#007 Could not call remote method."

    .line 124
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final setImmersiveMode(Z)V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-eqz v1, :cond_13

    .line 113
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzatj;->setImmersiveMode(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_15

    goto :goto_13

    :catch_d
    move-exception p1

    :try_start_e
    const-string v1, "#007 Could not call remote method."

    .line 116
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzduq:Lcom/google/android/gms/internal/ads/zzatt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzatt;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    if-eqz p1, :cond_1a

    .line 33
    :try_start_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzduq:Lcom/google/android/gms/internal/ads/zzatt;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzatj;->zza(Lcom/google/android/gms/internal/ads/zzatq;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14
    .catchall {:try_start_c .. :try_end_13} :catchall_1c

    goto :goto_1a

    :catch_14
    move-exception p1

    :try_start_15
    const-string v1, "#007 Could not call remote method."

    .line 36
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdur:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_17

    if-eqz v1, :cond_15

    .line 55
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzatj;->setUserId(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception p1

    :try_start_10
    const-string v1, "#007 Could not call remote method."

    .line 58
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final show()V
    .registers 4

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaty;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    if-nez v1, :cond_9

    .line 24
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    return-void

    .line 25
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaty;->zzdup:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzatj;->show()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception v1

    :try_start_10
    const-string v2, "#007 Could not call remote method."

    .line 28
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v1
.end method
