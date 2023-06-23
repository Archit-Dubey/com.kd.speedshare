.class public final Lcom/google/android/gms/internal/ads/zzaxg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzbqd:Lcom/google/android/gms/common/util/Clock;

.field private final zzdpv:Ljava/lang/String;

.field private zzdrf:Z

.field private zzdrj:J

.field private final zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

.field private final zzdxd:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzaxf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdxe:Ljava/lang/String;

.field private zzdxf:J

.field private zzdxg:J

.field private zzdxh:J

.field private zzdxi:J

.field private zzdxj:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzaxs;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->lock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdrj:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxf:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdrf:Z

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxg:J

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxh:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxi:J

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxj:J

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxe:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdpv:Ljava/lang/String;

    .line 14
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxd:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxg;)Lcom/google/android/gms/common/util/Clock;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .registers 6

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "seq_num"

    .line 53
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxe:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "slotid"

    .line 54
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdpv:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ismediation"

    const/4 v3, 0x0

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "treq"

    .line 56
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxi:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tresponse"

    .line 57
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxj:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "timp"

    .line 58
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxf:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tload"

    .line 59
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxg:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pcc"

    .line 60
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxh:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tfetch"

    .line 61
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdrj:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxd:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaxf;

    .line 64
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaxf;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_65
    const-string v3, "tclick"

    .line 66
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 67
    monitor-exit v0

    return-object v1

    :catchall_6c
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    goto :goto_70

    :goto_6f
    throw v1

    :goto_70
    goto :goto_6f
.end method

.method public final zzan(Z)V
    .registers 7

    .line 47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 48
    :try_start_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxj:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxg:J

    .line 50
    :cond_13
    monitor-exit p1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzve;)V
    .registers 6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxi:J

    .line 18
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    invoke-virtual {v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxs;->zza(Lcom/google/android/gms/internal/ads/zzve;J)V

    .line 19
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final zzey(J)V
    .registers 7

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxj:J

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_10

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzaxs;->zzb(Lcom/google/android/gms/internal/ads/zzaxg;)V

    .line 24
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final zzvu()V
    .registers 7

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxj:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1e

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxf:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1e

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxf:J

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzaxs;->zzb(Lcom/google/android/gms/internal/ads/zzaxg;)V

    .line 29
    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxs;->zzvu()V

    .line 30
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public final zzvv()V
    .registers 7

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxj:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_29

    .line 33
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaxf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzaxf;-><init>(Lcom/google/android/gms/internal/ads/zzaxg;)V

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxf;->zzvt()V

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxd:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxh:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxh:J

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxs;->zzvv()V

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzaxs;->zzb(Lcom/google/android/gms/internal/ads/zzaxg;)V

    .line 39
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public final zzvw()V
    .registers 8

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxj:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxd:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxd:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaxf;

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxf;->zzvr()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_2b

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxf;->zzvs()V

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzaxs;->zzb(Lcom/google/android/gms/internal/ads/zzaxg;)V

    .line 46
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public final zzvx()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdxe:Ljava/lang/String;

    return-object v0
.end method
