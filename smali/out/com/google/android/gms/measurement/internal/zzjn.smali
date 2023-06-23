.class public final Lcom/google/android/gms/measurement/internal/zzjn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzis;

.field private volatile zzb:Z

.field private volatile zzc:Lcom/google/android/gms/measurement/internal/zzew;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzis;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjn;Z)Z
    .registers 2

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Z

    return p1
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 4

    const-string p1, "MeasurementServiceConnection.onConnected"

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 70
    monitor-enter p0

    .line 71
    :try_start_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzer;

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzjo;-><init>(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzer;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_1c} :catch_1f
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    goto :goto_25

    :catchall_1d
    move-exception p1

    goto :goto_27

    :catch_1f
    const/4 p1, 0x0

    .line 76
    :try_start_20
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Z

    .line 78
    :goto_25
    monitor-exit p0

    return-void

    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_1d

    throw p1
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzis;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzd()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_18
    monitor-enter p0

    const/4 p1, 0x0

    .line 89
    :try_start_1a
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Z

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    .line 91
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_2f

    .line 92
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjq;-><init>(Lcom/google/android/gms/measurement/internal/zzjn;)V

    .line 93
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void

    :catchall_2f
    move-exception p1

    .line 91
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string v0, "Service connection suspended"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjr;-><init>(Lcom/google/android/gms/measurement/internal/zzjn;)V

    .line 82
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 18
    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_1f

    .line 20
    :try_start_9
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Z

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 22
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception p1

    goto/16 :goto_99

    :cond_1f
    const/4 v0, 0x0

    .line 24
    :try_start_20
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    if-nez p2, :cond_2f

    goto :goto_42

    :cond_2f
    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 29
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 30
    instance-of v2, v1, Lcom/google/android/gms/measurement/internal/zzer;

    if-eqz v2, :cond_3c

    .line 31
    check-cast v1, Lcom/google/android/gms/measurement/internal/zzer;

    goto :goto_41

    .line 32
    :cond_3c
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzet;

    invoke-direct {v1, p2}, Lcom/google/android/gms/measurement/internal/zzet;-><init>(Landroid/os/IBinder;)V

    :goto_41
    move-object v0, v1

    .line 34
    :goto_42
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p2

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    goto :goto_71

    .line 35
    :cond_52
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p2

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_61} :catch_62
    .catchall {:try_start_20 .. :try_end_61} :catchall_1c

    goto :goto_71

    .line 38
    :catch_62
    :try_start_62
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p2

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    :goto_71
    if-nez v0, :cond_89

    .line 40
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Z
    :try_end_75
    .catchall {:try_start_62 .. :try_end_75} :catchall_1c

    .line 41
    :try_start_75
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzis;->zza(Lcom/google/android/gms/measurement/internal/zzis;)Lcom/google/android/gms/measurement/internal/zzjn;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_88} :catch_97
    .catchall {:try_start_75 .. :try_end_88} :catchall_1c

    goto :goto_97

    .line 46
    :cond_89
    :try_start_89
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzjm;-><init>(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzer;)V

    .line 47
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    .line 48
    :catch_97
    :goto_97
    monitor-exit p0

    return-void

    :goto_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_89 .. :try_end_9a} :catchall_1c

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzw()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzjp;-><init>(Lcom/google/android/gms/measurement/internal/zzjn;Landroid/content/ComponentName;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza()V
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->isConnected()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 14
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->disconnect()V

    :cond_19
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    return-void
.end method

.method public final zza(Landroid/content/Intent;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_10
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Z

    if-eqz v2, :cond_25

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    const-string v0, "Connection attempt already in progress"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v3, "Using local app measurement service"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Z

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzis;->zza(Lcom/google/android/gms/measurement/internal/zzis;)Lcom/google/android/gms/measurement/internal/zzjn;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 12
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public final zzb()V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v0

    .line 56
    monitor-enter p0

    .line 57
    :try_start_c
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Z

    if-eqz v1, :cond_21

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 59
    monitor-exit p0

    return-void

    .line 60
    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    if-eqz v1, :cond_46

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 62
    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 63
    monitor-exit p0

    return-void

    .line 64
    :cond_46
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzew;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Lcom/google/android/gms/measurement/internal/zzew;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Z

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->checkAvailabilityAndConnect()V

    .line 68
    monitor-exit p0

    return-void

    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_c .. :try_end_6c} :catchall_6a

    throw v0
.end method
