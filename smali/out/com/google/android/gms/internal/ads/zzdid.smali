.class public final Lcom/google/android/gms/internal/ads/zzdid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdil;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestComponentT::",
        "Lcom/google/android/gms/internal/ads/zzbrv<",
        "TAdT;>;AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdil<",
        "TRequestComponentT;TAdT;>;"
    }
.end annotation


# instance fields
.field private zzgxk:Lcom/google/android/gms/internal/ads/zzbrv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final declared-synchronized zzarw()Lcom/google/android/gms/internal/ads/zzbrv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestComponentT;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzgxk:Lcom/google/android/gms/internal/ads/zzbrv;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdiq;Lcom/google/android/gms/internal/ads/zzdin;)Lcom/google/android/gms/internal/ads/zzdvf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdiq;",
            "Lcom/google/android/gms/internal/ads/zzdin<",
            "TRequestComponentT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdiq;->zzgyh:Lcom/google/android/gms/internal/ads/zzdio;

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdin;->zzc(Lcom/google/android/gms/internal/ads/zzdio;)Lcom/google/android/gms/internal/ads/zzbru;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbru;->zzaeg()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzgxk:Lcom/google/android/gms/internal/ads/zzbrv;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbrv;->zzaex()Lcom/google/android/gms/internal/ads/zzbpz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpz;->zzaiq()Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object p1

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zzarv()Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdid;->zzarw()Lcom/google/android/gms/internal/ads/zzbrv;

    move-result-object v0

    return-object v0
.end method
