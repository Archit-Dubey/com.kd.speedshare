.class final Lcom/google/android/gms/internal/ads/zzrg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbsq:Lcom/google/android/gms/internal/ads/zzrh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrh;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbsq:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbsq:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrh;->zza(Lcom/google/android/gms/internal/ads/zzrh;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbsq:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzrh;->zzb(Lcom/google/android/gms/internal/ads/zzrh;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbsq:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzrh;->zzc(Lcom/google/android/gms/internal/ads/zzrh;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbsq:Lcom/google/android/gms/internal/ads/zzrh;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzrh;->zza(Lcom/google/android/gms/internal/ads/zzrh;Z)Z

    const-string v1, "App went background"

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbsq:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzrh;->zzd(Lcom/google/android/gms/internal/ads/zzrh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzrj;
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_4a

    .line 7
    :try_start_38
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzrj;->zzp(Z)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_4a

    goto :goto_2c

    :catch_3c
    move-exception v3

    :try_start_3d
    const-string v4, ""

    .line 10
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c

    :cond_43
    const-string v1, "App is still foreground"

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 13
    :cond_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4a

    goto :goto_4e

    :goto_4d
    throw v1

    :goto_4e
    goto :goto_4d
.end method
