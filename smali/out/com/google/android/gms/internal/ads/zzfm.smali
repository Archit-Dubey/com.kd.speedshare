.class public final Lcom/google/android/gms/internal/ads/zzfm;
.super Lcom/google/android/gms/internal/ads/zzgm;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V
    .registers 14

    const/16 v6, 0x31

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V

    return-void
.end method


# virtual methods
.method protected final zzcx()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcn;->zzlu:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 4
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzabl:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzwf:Lcom/google/android/gms/internal/ads/zzex;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzex;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zzlt:Lcom/google/android/gms/internal/ads/zzcn;

    goto :goto_29

    :cond_27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zzls:Lcom/google/android/gms/internal/ads/zzcn;

    :goto_29
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;
    :try_end_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/provider/Settings$SettingNotFoundException;

    if-eqz v1, :cond_37

    return-void

    .line 10
    :cond_37
    throw v0
.end method
