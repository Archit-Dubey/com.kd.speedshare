.class public Lcom/google/android/gms/internal/ads/zzbba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# direct methods
.method public static isLoggable(I)Z
    .registers 2

    const/4 v0, 0x5

    if-ge p0, v0, :cond_e

    const-string v0, "Ads"

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Ads"

    .line 5
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x6

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Ads"

    .line 11
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x5

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Ads"

    .line 20
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method public static zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x5

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_11

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbba;->zzfe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 29
    :cond_11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbba;->zzfe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbba;->zzfd(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public static zzee(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Ads"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public static zzfb(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x6

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Ads"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public static zzfc(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x4

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Ads"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public static zzfd(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x5

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Ads"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method private static zzfe(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 23
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_31

    const/4 v1, 0x3

    .line 24
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " @"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_31
    return-object p0
.end method

.method public static zzff(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
