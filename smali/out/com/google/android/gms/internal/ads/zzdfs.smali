.class final synthetic Lcom/google/android/gms/internal/ads/zzdfs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfrf:Lcom/google/android/gms/internal/ads/zzdvf;

.field private final zzgay:Lcom/google/android/gms/internal/ads/zzdvf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdvf;Lcom/google/android/gms/internal/ads/zzdvf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfs;->zzgay:Lcom/google/android/gms/internal/ads/zzdvf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfs;->zzfrf:Lcom/google/android/gms/internal/ads/zzdvf;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfs;->zzgay:Lcom/google/android/gms/internal/ads/zzdvf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfs;->zzfrf:Lcom/google/android/gms/internal/ads/zzdvf;

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdfq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdvf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdvf;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdfq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
