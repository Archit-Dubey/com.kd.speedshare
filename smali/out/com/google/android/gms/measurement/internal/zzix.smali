.class final Lcom/google/android/gms/measurement/internal/zzix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzis;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzis;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzn;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzix;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzb:Lcom/google/android/gms/measurement/internal/zzn;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzix;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zzd(Lcom/google/android/gms/measurement/internal/zzis;)Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    if-nez v1, :cond_21

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v1

    const-string v2, "Failed to get all user properties; not connected to service"

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_3b
    .catchall {:try_start_3 .. :try_end_1a} :catchall_39

    .line 8
    :try_start_1a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_58

    return-void

    .line 10
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzix;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzb:Lcom/google/android/gms/measurement/internal/zzn;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzc:Z

    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Lcom/google/android/gms/measurement/internal/zzn;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zze(Lcom/google/android/gms/measurement/internal/zzis;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_33} :catch_3b
    .catchall {:try_start_21 .. :try_end_33} :catchall_39

    .line 12
    :try_start_33
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_58

    goto :goto_50

    :catchall_39
    move-exception v1

    goto :goto_52

    :catch_3b
    move-exception v1

    .line 15
    :try_start_3c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v3, "Failed to get all user properties; remote exception"

    .line 17
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_39

    .line 18
    :try_start_4b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 22
    :goto_50
    monitor-exit v0

    return-void

    .line 20
    :goto_52
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzix;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 21
    throw v1

    :catchall_58
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_58

    throw v1
.end method
