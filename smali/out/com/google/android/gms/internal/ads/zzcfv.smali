.class final synthetic Lcom/google/android/gms/internal/ads/zzcfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhc;


# instance fields
.field private final zzfzp:Lcom/google/android/gms/internal/ads/zzbfn;

.field private final zzgbd:Lcom/google/android/gms/internal/ads/zzcfp;

.field private final zzgbe:Lcom/google/android/gms/internal/ads/zzbbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfp;Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zzbbo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzgbd:Lcom/google/android/gms/internal/ads/zzcfp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzfzp:Lcom/google/android/gms/internal/ads/zzbfn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzgbe:Lcom/google/android/gms/internal/ads/zzbbo;

    return-void
.end method


# virtual methods
.method public final zzak(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzgbd:Lcom/google/android/gms/internal/ads/zzcfp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzfzp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzgbe:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcfp;->zzb(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zzbbo;Z)V

    return-void
.end method
