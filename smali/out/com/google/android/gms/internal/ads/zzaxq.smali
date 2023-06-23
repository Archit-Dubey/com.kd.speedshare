.class public final Lcom/google/android/gms/internal/ads/zzaxq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private zzdpm:Ljava/lang/String;

.field private zzdyq:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzdyq:Ljava/math/BigInteger;

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzdpm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzwo()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzdyq:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzdyq:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzdyq:Ljava/math/BigInteger;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzdpm:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzwp()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzdpm:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
