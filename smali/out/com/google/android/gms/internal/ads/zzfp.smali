.class public final Lcom/google/android/gms/internal/ads/zzfp;
.super Lcom/google/android/gms/internal/ads/zzgm;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field private static volatile zzaay:Ljava/lang/Long;

.field private static final zzaaz:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zzaaz:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V
    .registers 14

    const/16 v6, 0x2c

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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zzaay:Ljava/lang/Long;

    if-nez v0, :cond_1e

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zzaaz:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfp;->zzaay:Ljava/lang/Long;

    if-nez v1, :cond_19

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzabl:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfp;->zzaay:Ljava/lang/Long;

    .line 7
    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1

    .line 8
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    monitor-enter v0

    .line 9
    :try_start_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfp;->zzaay:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzaa(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 10
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2e

    throw v1
.end method
