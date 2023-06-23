.class public final Lcom/google/android/gms/internal/ads/zzabi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field zzcye:Z

.field private final zzcyf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzabg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcyg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcyh:Lcom/google/android/gms/internal/ads/zzabi;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyf:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyg:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabi;->lock:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcye:Z

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyg:Ljava/util/Map;

    const-string v0, "action"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyg:Ljava/util/Map;

    const-string p2, "ad_format"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/android/gms/internal/ads/zzabg;J[Ljava/lang/String;)Z
    .registers 10

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_3
    array-length v1, p4

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_16

    aget-object v3, p4, v2

    .line 17
    new-instance v4, Lcom/google/android/gms/internal/ads/zzabg;

    invoke-direct {v4, p2, p3, v3, p1}, Lcom/google/android/gms/internal/ads/zzabg;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzabg;)V

    .line 18
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyf:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 20
    :cond_16
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_19
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    goto :goto_1d

    :goto_1c
    throw p1

    :goto_1d
    goto :goto_1c
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzabi;)V
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyh:Lcom/google/android/gms/internal/ads/zzabi;

    .line 11
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzex(J)Lcom/google/android/gms/internal/ads/zzabg;
    .registers 5

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcye:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 14
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabg;

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzabg;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzabg;)V

    return-object v0
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcye:Z

    if-eqz v0, :cond_31

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_31

    .line 41
    :cond_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxh;->zzvy()Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    .line 44
    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabi;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaay;->zzct(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzabc;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyg:Ljava/util/Map;

    .line 46
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Lcom/google/android/gms/internal/ads/zzabc;->zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit v1

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_2e

    throw p1

    :cond_31
    :goto_31
    return-void
.end method

.method public final zzrn()Ljava/lang/String;
    .registers 11

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabi;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzabg;

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzabg;->getTime()J

    move-result-wide v4

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzabg;->zzrl()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzabg;->zzrm()Lcom/google/android/gms/internal/ads/zzabg;

    move-result-object v3

    if-eqz v3, :cond_e

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-lez v9, :cond_e

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzabg;->getTime()J

    move-result-wide v7

    sub-long/2addr v4, v7

    .line 30
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 32
    :cond_44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 35
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_63

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 37
    :cond_63
    :goto_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_69
    move-exception v0

    .line 38
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_8 .. :try_end_6b} :catchall_69

    goto :goto_6d

    :goto_6c
    throw v0

    :goto_6d
    goto :goto_6c
.end method

.method final zzro()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zzvy()Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyh:Lcom/google/android/gms/internal/ads/zzabi;

    if-nez v2, :cond_12

    goto :goto_20

    .line 52
    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyg:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyh:Lcom/google/android/gms/internal/ads/zzabi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzabi;->zzro()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaay;->zza(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 51
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabi;->zzcyg:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method
