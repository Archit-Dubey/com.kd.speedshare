.class final Lcom/google/android/gms/measurement/internal/zziz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzis;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzis;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzn;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzis;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzb:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zzd(Lcom/google/android/gms/measurement/internal/zzis;)Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    if-nez v1, :cond_21

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v1

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_57
    .catchall {:try_start_3 .. :try_end_1a} :catchall_55

    .line 6
    :try_start_1a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_74

    return-void

    .line 8
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzb:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-interface {v1, v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzd;->zzf()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhh;->zza(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfl;->zzj:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)V

    .line 13
    :cond_4a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zze(Lcom/google/android/gms/measurement/internal/zzis;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_4f} :catch_57
    .catchall {:try_start_21 .. :try_end_4f} :catchall_55

    .line 14
    :try_start_4f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_74

    goto :goto_6c

    :catchall_55
    move-exception v1

    goto :goto_6e

    :catch_57
    move-exception v1

    .line 17
    :try_start_58
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_55

    .line 18
    :try_start_67
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 22
    :goto_6c
    monitor-exit v0

    return-void

    .line 20
    :goto_6e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 21
    throw v1

    :catchall_74
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_67 .. :try_end_76} :catchall_74

    throw v1
.end method
