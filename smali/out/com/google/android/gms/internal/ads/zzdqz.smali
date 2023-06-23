.class final Lcom/google/android/gms/internal/ads/zzdqz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpp;


# instance fields
.field private final zzhjf:Ljava/lang/Object;

.field private final zzhjg:Lcom/google/android/gms/internal/ads/zzdrc;

.field private final zzhjh:Lcom/google/android/gms/internal/ads/zzdrl;

.field private final zzvv:Lcom/google/android/gms/internal/ads/zzdpm;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdrc;Lcom/google/android/gms/internal/ads/zzdrl;Lcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjg:Lcom/google/android/gms/internal/ads/zzdrc;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjh:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzvv:Lcom/google/android/gms/internal/ads/zzdpm;

    return-void
.end method

.method private final declared-synchronized zzb(Ljava/util/Map;Ljava/util/Map;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3e

    const/4 p1, 0x0

    .line 71
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "xss"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/util/Map;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/util/Map;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_2f
    .catchall {:try_start_6 .. :try_end_2d} :catchall_3e

    monitor-exit p0

    return-object p2

    :catch_2f
    move-exception p2

    .line 75
    :try_start_30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzvv:Lcom/google/android/gms/internal/ads/zzdpm;

    const/16 v3, 0x7d7

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 78
    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/google/android/gms/internal/ads/zzdpm;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3e

    .line 79
    monitor-exit p0

    return-object p1

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static zzk([B)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzbm()Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcm;->zzlp:Lcom/google/android/gms/internal/ads/zzcm;

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;->zzb(Lcom/google/android/gms/internal/ads/zzcm;)Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    move-result-object v0

    .line 66
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;->zzj(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeh;->toByteArray()[B

    move-result-object p0

    const/16 v0, 0xb

    .line 69
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdrj;
        }
    .end annotation

    monitor-enter p0

    .line 12
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "close"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzvv:Lcom/google/android/gms/internal/ads/zzdpm;

    const/16 v3, 0xbb9

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 17
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdpm;->zzg(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2b
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 18
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    goto :goto_34

    :catch_2b
    move-exception v0

    .line 20
    :try_start_2c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrj;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdrj;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_29

    :goto_34
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 35
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjh:Lcom/google/android/gms/internal/ads/zzdrl;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdrl;->zzcg()Ljava/util/Map;

    move-result-object p2

    const-string v0, "f"

    const-string v1, "c"

    .line 36
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ctx"

    .line 37
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cs"

    .line 38
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "aid"

    const/4 p3, 0x0

    .line 39
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "view"

    .line 40
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "act"

    .line 41
    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-direct {p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzdqz;->zzb(Ljava/util/Map;Ljava/util/Map;)[B

    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqz;->zzk([B)Ljava/lang/String;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object p1

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdrj;
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "aid"

    const/4 v3, 0x0

    .line 46
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "evt"

    .line 47
    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v2, "he"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {p2, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzvv:Lcom/google/android/gms/internal/ads/zzdpm;

    const/16 p2, 0xbbb

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 53
    invoke-virtual {p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdpm;->zzg(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_42
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 54
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    goto :goto_4b

    :catch_42
    move-exception p1

    .line 56
    :try_start_43
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdrj;

    const/16 v0, 0x7d5

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdrj;-><init>(ILjava/lang/Throwable;)V

    throw p2
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_40

    :goto_4b
    monitor-exit p0

    throw p1
.end method

.method final zzavp()Lcom/google/android/gms/internal/ads/zzdrc;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjg:Lcom/google/android/gms/internal/ads/zzdrc;

    return-object v0
.end method

.method final declared-synchronized zzavq()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdrj;
        }
    .end annotation

    monitor-enter p0

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "init"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_22
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    goto :goto_2b

    :catch_22
    move-exception v0

    .line 11
    :try_start_23
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrj;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdrj;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_20

    :goto_2b
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzavr()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdrj;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "lcs"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjf:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_22
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    goto :goto_2b

    :catch_22
    move-exception v0

    .line 61
    :try_start_23
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrj;

    const/16 v2, 0x7d6

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdrj;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_20

    :goto_2b
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzb(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjh:Lcom/google/android/gms/internal/ads/zzdrl;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdrl;->zzcf()Ljava/util/Map;

    move-result-object p2

    const-string v0, "f"

    const-string v1, "v"

    .line 28
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ctx"

    .line 29
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "aid"

    const/4 v0, 0x0

    .line 30
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "view"

    .line 31
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "act"

    .line 32
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqz;->zzb(Ljava/util/Map;Ljava/util/Map;)[B

    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqz;->zzk([B)Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object p1

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzv(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 21
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhjh:Lcom/google/android/gms/internal/ads/zzdrl;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdrl;->zzce()Ljava/util/Map;

    move-result-object p2

    const-string v0, "f"

    const-string v1, "q"

    .line 22
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ctx"

    .line 23
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "aid"

    const/4 v0, 0x0

    .line 24
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqz;->zzb(Ljava/util/Map;Ljava/util/Map;)[B

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqz;->zzk([B)Ljava/lang/String;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object p1

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
