.class public final Lcom/google/android/gms/internal/ads/zzchf;
.super Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzfuu:Lcom/google/android/gms/internal/ads/zzcck;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcck;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzcck;)Lcom/google/android/gms/internal/ads/zzyj;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcck;->getVideoController()Lcom/google/android/gms/internal/ads/zzyi;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 31
    :cond_8
    :try_start_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzyi;->zzqi()Lcom/google/android/gms/internal/ads/zzyj;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    return-object v0
.end method


# virtual methods
.method public final onVideoEnd()V
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchf;->zza(Lcom/google/android/gms/internal/ads/zzcck;)Lcom/google/android/gms/internal/ads/zzyj;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 23
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyj;->onVideoEnd()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 26
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoPause()V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchf;->zza(Lcom/google/android/gms/internal/ads/zzcck;)Lcom/google/android/gms/internal/ads/zzyj;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 15
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyj;->onVideoPause()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoStart()V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchf;->zza(Lcom/google/android/gms/internal/ads/zzcck;)Lcom/google/android/gms/internal/ads/zzyj;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 7
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyj;->onVideoStart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
