.class public final Lcom/google/android/gms/internal/ads/zzaky;
.super Lcom/google/android/gms/internal/ads/zzbbu;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbu<",
        "Lcom/google/android/gms/internal/ads/zzaju;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzdgc:Lcom/google/android/gms/internal/ads/zzazj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzazj<",
            "Lcom/google/android/gms/internal/ads/zzaju;",
            ">;"
        }
    .end annotation
.end field

.field private zzdgt:Z

.field private zzdgu:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzazj<",
            "Lcom/google/android/gms/internal/ads/zzaju;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->lock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgc:Lcom/google/android/gms/internal/ads/zzazj;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgt:Z

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgu:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaky;)Lcom/google/android/gms/internal/ads/zzazj;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgc:Lcom/google/android/gms/internal/ads/zzazj;

    return-object p0
.end method

.method private final zzte()V
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgu:I

    if-ltz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 28
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgt:Z

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgu:I

    if-nez v1, :cond_28

    const-string v1, "No reference is left (including root). Cleaning up engine."

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/google/android/gms/internal/ads/zzald;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzald;-><init>(Lcom/google/android/gms/internal/ads/zzaky;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbbs;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbbs;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbu;->zza(Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzbbp;)V

    goto :goto_2d

    :cond_28
    const-string v1, "There are still references to the engine. Not destroying."

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 32
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method


# virtual methods
.method public final zztb()Lcom/google/android/gms/internal/ads/zzaku;
    .registers 5

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaku;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaku;-><init>(Lcom/google/android/gms/internal/ads/zzaky;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzalb;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzalb;-><init>(Lcom/google/android/gms/internal/ads/zzaky;Lcom/google/android/gms/internal/ads/zzaku;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzala;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzala;-><init>(Lcom/google/android/gms/internal/ads/zzaky;Lcom/google/android/gms/internal/ads/zzaku;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbu;->zza(Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzbbp;)V

    .line 10
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgu:I

    const/4 v3, 0x1

    if-ltz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 11
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgu:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgu:I

    .line 12
    monitor-exit v1

    return-object v0

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v0
.end method

.method protected final zztc()V
    .registers 4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgu:I

    const/4 v2, 0x1

    if-lez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string v1, "Releasing 1 reference for JS Engine"

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgu:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgu:I

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaky;->zzte()V

    .line 19
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final zztd()V
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgu:I

    const/4 v2, 0x1

    if-ltz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string v1, "Releasing root reference. JS Engine will be destroyed once other references are released."

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 23
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdgt:Z

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaky;->zzte()V

    .line 25
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
