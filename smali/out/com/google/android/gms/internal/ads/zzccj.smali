.class public final Lcom/google/android/gms/internal/ads/zzccj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private zzckd:Lcom/google/android/gms/internal/ads/zzado;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccb;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccj;->zzckd:Lcom/google/android/gms/internal/ads/zzado;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzado;)V
    .registers 2

    monitor-enter p0

    .line 5
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccj;->zzckd:Lcom/google/android/gms/internal/ads/zzado;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 6
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzsn()Lcom/google/android/gms/internal/ads/zzado;
    .registers 2

    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->zzckd:Lcom/google/android/gms/internal/ads/zzado;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
