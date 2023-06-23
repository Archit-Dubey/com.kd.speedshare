.class final Lcom/google/android/gms/internal/ads/zzbfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

.field private zzeme:Lcom/google/android/gms/internal/ads/zzbfn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/ads/internal/overlay/zzo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzeme:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 1

    return-void
.end method

.method public final zzud()V
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_7

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzud()V

    .line 11
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzeme:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaas()V

    return-void
.end method

.method public final zzue()V
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_7

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzue()V

    .line 7
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzeme:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzuq()V

    return-void
.end method
