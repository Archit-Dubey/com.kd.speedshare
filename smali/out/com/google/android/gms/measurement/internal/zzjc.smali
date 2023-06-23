.class final Lcom/google/android/gms/measurement/internal/zzjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzao;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzw;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzis;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzis;Lcom/google/android/gms/measurement/internal/zzao;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzw;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzc:Lcom/google/android/gms/internal/measurement/zzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v0, 0x0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zzd(Lcom/google/android/gms/measurement/internal/zzis;)Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    if-nez v1, :cond_24

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_3f
    .catchall {:try_start_1 .. :try_end_18} :catchall_3d

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzc:Lcom/google/android/gms/internal/measurement/zzw;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/internal/measurement/zzw;[B)V

    return-void

    .line 10
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzb:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Lcom/google/android/gms/measurement/internal/zzao;Ljava/lang/String;)[B

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zze(Lcom/google/android/gms/measurement/internal/zzis;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_31} :catch_3f
    .catchall {:try_start_24 .. :try_end_31} :catchall_3d

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzc:Lcom/google/android/gms/internal/measurement/zzw;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/internal/measurement/zzw;[B)V

    return-void

    :catchall_3d
    move-exception v1

    goto :goto_5b

    :catch_3f
    move-exception v1

    .line 15
    :try_start_40
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_3d

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzc:Lcom/google/android/gms/internal/measurement/zzw;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/internal/measurement/zzw;[B)V

    return-void

    .line 18
    :goto_5b
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjc;->zzc:Lcom/google/android/gms/internal/measurement/zzw;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/internal/measurement/zzw;[B)V

    .line 19
    throw v1
.end method
