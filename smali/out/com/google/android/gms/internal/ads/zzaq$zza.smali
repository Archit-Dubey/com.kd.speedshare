.class final Lcom/google/android/gms/internal/ads/zzaq$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzaq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# static fields
.field public static final zzbw:Z


# instance fields
.field private final zzbx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzas;",
            ">;"
        }
    .end annotation
.end field

.field private zzby:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaq;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzbw:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzbx:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzby:Z

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzby:Z

    if-nez v0, :cond_11

    const-string v0, "Request on the loose"

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzd(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Marker log finalized without finish() - uncaught exit point for request"

    .line 28
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;J)V
    .registers 12

    monitor-enter p0

    .line 4
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzby:Z

    if-nez v0, :cond_18

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzbx:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzas;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzas;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_20

    .line 7
    monitor-exit p0

    return-void

    .line 5
    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Marker added to finished log"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    const/4 v0, 0x1

    .line 8
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzby:Z

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzbx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_11

    move-wide v7, v2

    goto :goto_2d

    .line 12
    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzbx:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzas;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzas;->time:J

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzbx:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzbx:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzas;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzas;->time:J
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_81

    sub-long/2addr v7, v5

    :goto_2d
    cmp-long v1, v7, v2

    if-gtz v1, :cond_33

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_33
    :try_start_33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzbx:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzas;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzas;->time:J

    const-string v3, "(%-4d ms) %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 19
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p1, v6, v0

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzaq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaq$zza;->zzbx:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzas;

    .line 21
    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzas;->time:J

    const-string v8, "(+%-4d) [%2d] %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    sub-long v1, v6, v1

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v4

    iget-wide v1, v3, Lcom/google/android/gms/internal/ads/zzas;->zzbz:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzas;->name:Ljava/lang/String;

    aput-object v1, v9, v5

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzaq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7d
    .catchall {:try_start_33 .. :try_end_7d} :catchall_81

    move-wide v1, v6

    goto :goto_53

    .line 25
    :cond_7f
    monitor-exit p0

    return-void

    :catchall_81
    move-exception p1

    monitor-exit p0

    goto :goto_85

    :goto_84
    throw p1

    :goto_85
    goto :goto_84
.end method
