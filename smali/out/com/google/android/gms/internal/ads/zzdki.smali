.class public final Lcom/google/android/gms/internal/ads/zzdki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzbqd:Lcom/google/android/gms/common/util/Clock;

.field private volatile zzdyg:J

.field private volatile zzgzi:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdki;->lock:Ljava/lang/Object;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzdkh;->zzgze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzgzi:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzdyg:J

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzasd()V
    .registers 8

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdki;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 19
    :try_start_9
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzgzi:I

    sget v4, Lcom/google/android/gms/internal/ads/zzdkh;->zzgzg:I

    if-ne v3, v4, :cond_2a

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzdyg:J

    sget-object v5, Lcom/google/android/gms/internal/ads/zzaav;->zzcvc:Lcom/google/android/gms/internal/ads/zzaag;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v5

    .line 22
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_2a

    .line 23
    sget v0, Lcom/google/android/gms/internal/ads/zzdkh;->zzgze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzgzi:I

    .line 24
    :cond_2a
    monitor-exit v2

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private final zzr(II)V
    .registers 7

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdki;->zzasd()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdki;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_c
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzgzi:I

    if-eq v3, p1, :cond_12

    .line 11
    monitor-exit v2

    return-void

    .line 12
    :cond_12
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzgzi:I

    .line 13
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzgzi:I

    sget p2, Lcom/google/android/gms/internal/ads/zzdkh;->zzgzg:I

    if-ne p1, p2, :cond_1c

    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzdyg:J

    .line 15
    :cond_1c
    monitor-exit v2

    return-void

    :catchall_1e
    move-exception p1

    .line 16
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1e

    throw p1
.end method


# virtual methods
.method public final zzase()Z
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdki;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdki;->zzasd()V

    .line 31
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzgzi:I

    sget v2, Lcom/google/android/gms/internal/ads/zzdkh;->zzgzf:I

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit v0

    return v1

    :catchall_11
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final zzasf()Z
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdki;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdki;->zzasd()V

    .line 35
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzgzi:I

    sget v2, Lcom/google/android/gms/internal/ads/zzdkh;->zzgzg:I

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit v0

    return v1

    :catchall_11
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final zzbn(Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 26
    sget p1, Lcom/google/android/gms/internal/ads/zzdkh;->zzgze:I

    sget v0, Lcom/google/android/gms/internal/ads/zzdkh;->zzgzf:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdki;->zzr(II)V

    return-void

    .line 27
    :cond_a
    sget p1, Lcom/google/android/gms/internal/ads/zzdkh;->zzgzf:I

    sget v0, Lcom/google/android/gms/internal/ads/zzdkh;->zzgze:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdki;->zzr(II)V

    return-void
.end method

.method public final zzwa()V
    .registers 3

    .line 37
    sget v0, Lcom/google/android/gms/internal/ads/zzdkh;->zzgzf:I

    sget v1, Lcom/google/android/gms/internal/ads/zzdkh;->zzgzg:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdki;->zzr(II)V

    return-void
.end method
