.class final Lcom/google/android/gms/internal/ads/zzeed;
.super Lcom/google/android/gms/internal/ads/zzedz;
.source "com.google.android.gms:play-services-ads-base@@19.2.0"


# instance fields
.field private final zzhze:Lcom/google/android/gms/internal/ads/zzeec;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzedz;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeec;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeed;->zzhze:Lcom/google/android/gms/internal/ads/zzeec;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 6

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeed;->zzhze:Lcom/google/android/gms/internal/ads/zzeec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeec;->zza(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    .line 13
    :cond_d
    monitor-enter p1

    .line 14
    :try_start_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "Suppressed: "

    .line 15
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_12

    .line 18
    :cond_27
    monitor-exit p1

    return-void

    :catchall_29
    move-exception p2

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    goto :goto_2d

    :goto_2c
    throw p2

    :goto_2d
    goto :goto_2c
.end method

.method public final zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    if-eq p2, p1, :cond_17

    if-eqz p2, :cond_f

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeed;->zzhze:Lcom/google/android/gms/internal/ads/zzeec;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeec;->zza(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The suppressed exception cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
