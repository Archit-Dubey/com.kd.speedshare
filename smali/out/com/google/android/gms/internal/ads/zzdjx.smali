.class final Lcom/google/android/gms/internal/ads/zzdjx;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final synthetic zzgyx:Lcom/google/android/gms/internal/ads/zzxx;

.field private final synthetic zzgyy:Lcom/google/android/gms/internal/ads/zzdjy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjy;Lcom/google/android/gms/internal/ads/zzxx;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjx;->zzgyy:Lcom/google/android/gms/internal/ads/zzdjy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjx;->zzgyx:Lcom/google/android/gms/internal/ads/zzxx;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjx;->zzgyy:Lcom/google/android/gms/internal/ads/zzdjy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjy;->zza(Lcom/google/android/gms/internal/ads/zzdjy;)Lcom/google/android/gms/internal/ads/zzchj;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjx;->zzgyx:Lcom/google/android/gms/internal/ads/zzxx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxx;->onAdMetadataChanged()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    return-void
.end method
