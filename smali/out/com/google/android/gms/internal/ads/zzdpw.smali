.class final Lcom/google/android/gms/internal/ads/zzdpw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzebv:Landroid/os/HandlerThread;

.field private zzhhv:Lcom/google/android/gms/internal/ads/zzdqu;

.field private final zzhhw:Ljava/lang/String;

.field private final zzhhx:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpw;->packageName:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhw:Ljava/lang/String;

    .line 4
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzebv:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqu;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzebv:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x8c6180

    move-object v0, p2

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdqu;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhv:Lcom/google/android/gms/internal/ads/zzdqu;

    .line 8
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhx:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhv:Lcom/google/android/gms/internal/ads/zzdqu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqu;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private final zzape()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhv:Lcom/google/android/gms/internal/ads/zzdqu;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqu;->isConnected()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhv:Lcom/google/android/gms/internal/ads/zzdqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqu;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 49
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhv:Lcom/google/android/gms/internal/ads/zzdqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqu;->disconnect()V

    :cond_17
    return-void
.end method

.method private final zzaux()Lcom/google/android/gms/internal/ads/zzdqx;
    .registers 2

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhv:Lcom/google/android/gms/internal/ads/zzdqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqu;->zzavm()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzauy()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 3

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzar()Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    move-result-object v0

    const-wide/32 v1, 0x8000

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzn(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object v0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpw;->zzaux()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 26
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhw:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zza(Lcom/google/android/gms/internal/ads/zzdqt;)Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzavn()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhx:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpw;->zzape()V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzebv:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    .line 34
    :catchall_25
    :try_start_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhx:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpw;->zzauy()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2e} :catch_39
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_39

    :catchall_2f
    move-exception p1

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpw;->zzape()V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzebv:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 42
    throw p1

    .line 37
    :catch_39
    :goto_39
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpw;->zzape()V

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzebv:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    :cond_41
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhx:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpw;->zzauy()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhx:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpw;->zzauy()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public final zzec(I)Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 5

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhhx:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcf$zza;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    const/4 p1, 0x0

    :goto_e
    if-nez p1, :cond_14

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpw;->zzauy()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p1

    :cond_14
    return-object p1
.end method