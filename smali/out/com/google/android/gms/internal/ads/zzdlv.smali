.class public final Lcom/google/android/gms/internal/ads/zzdlv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxn;
.implements Lcom/google/android/gms/internal/ads/zzbsq;


# instance fields
.field private final zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

.field private final zzhbx:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzaxg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxs;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzhbx:Ljava/util/HashSet;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzvr:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdFailedToLoad(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    .line 7
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzhbx:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxs;->zzb(Ljava/util/HashSet;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    goto :goto_f

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1

    .line 8
    :cond_f
    :goto_f
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zza(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzaxg;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzhbx:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzhbx:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 11
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzasu()Landroid/os/Bundle;
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzdxc:Lcom/google/android/gms/internal/ads/zzaxs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzaxs;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxn;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
