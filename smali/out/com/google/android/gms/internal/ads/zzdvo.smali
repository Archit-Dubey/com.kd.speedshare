.class final Lcom/google/android/gms/internal/ads/zzdvo;
.super Lcom/google/android/gms/internal/ads/zzduv;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvf;
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzduv<",
        "TV;>;",
        "Lcom/google/android/gms/internal/ads/zzdvf<",
        "TV;>;",
        "Ljava/util/concurrent/ScheduledFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final zzhpb:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdvf;Ljava/util/concurrent/ScheduledFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "TV;>;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzduv;-><init>(Lcom/google/android/gms/internal/ads/zzdvf;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzhpb:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 4

    .line 4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzduv;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzhpb:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_b
    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 9
    check-cast p1, Ljava/util/concurrent/Delayed;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzhpb:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getDelay(Ljava/util/concurrent/TimeUnit;)J
    .registers 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzhpb:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
