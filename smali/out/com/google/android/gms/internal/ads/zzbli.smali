.class public final Lcom/google/android/gms/internal/ads/zzbli;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtg;


# instance fields
.field private final zzfkl:Lcom/google/android/gms/internal/ads/zzdlm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlm;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbli;->zzfkl:Lcom/google/android/gms/internal/ads/zzdlm;

    return-void
.end method


# virtual methods
.method public final zzca(Landroid/content/Context;)V
    .registers 3

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbli;->zzfkl:Lcom/google/android/gms/internal/ads/zzdlm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlm;->pause()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzdlg; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, "Cannot invoke onPause for the mediation adapter."

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzcb(Landroid/content/Context;)V
    .registers 3

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbli;->zzfkl:Lcom/google/android/gms/internal/ads/zzdlm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlm;->resume()V

    if-eqz p1, :cond_c

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbli;->zzfkl:Lcom/google/android/gms/internal/ads/zzdlm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlm;->onContextChanged(Landroid/content/Context;)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzdlg; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception p1

    const-string v0, "Cannot invoke onResume for the mediation adapter."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzcc(Landroid/content/Context;)V
    .registers 3

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbli;->zzfkl:Lcom/google/android/gms/internal/ads/zzdlm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlm;->destroy()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzdlg; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, "Cannot invoke onDestroy for the mediation adapter."

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
