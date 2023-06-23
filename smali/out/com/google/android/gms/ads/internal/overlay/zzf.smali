.class final synthetic Lcom/google/android/gms/ads/internal/overlay/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhc;


# instance fields
.field private final zzdnw:Lcom/google/android/gms/ads/internal/overlay/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzf;->zzdnw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    return-void
.end method


# virtual methods
.method public final zzak(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzf;->zzdnw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_b

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzuq()V

    :cond_b
    return-void
.end method
