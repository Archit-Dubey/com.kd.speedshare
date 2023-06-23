.class public final Lcom/google/android/gms/internal/ads/zzabd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public static varargs zza(Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/internal/ads/zzabg;[Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-nez p1, :cond_6

    goto :goto_1a

    .line 4
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcye:Z

    if-eqz v1, :cond_1a

    if-nez p1, :cond_d

    goto :goto_1a

    .line 6
    :cond_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzabi;->zza(Lcom/google/android/gms/internal/ads/zzabg;J[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzabi;)Lcom/google/android/gms/internal/ads/zzabg;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzabi;->zzex(J)Lcom/google/android/gms/internal/ads/zzabg;

    move-result-object p0

    return-object p0
.end method
