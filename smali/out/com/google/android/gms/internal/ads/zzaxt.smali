.class public final Lcom/google/android/gms/internal/ads/zzaxt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public static zzao(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbau;->zzbt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbau;->zzyl()Z

    move-result v0

    if-nez v0, :cond_20

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaxw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxr;->zzwq()Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object p0

    const-string v0, "Updating ad debug logging enablement."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfc(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbbj;->zza(Lcom/google/android/gms/internal/ads/zzdvf;Ljava/lang/String;)V

    :cond_20
    return-void
.end method
