.class final synthetic Lcom/google/android/gms/internal/ads/zzcxk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsq;


# instance fields
.field private final zzgpj:Lcom/google/android/gms/internal/ads/zzcxb;

.field private final zzgqa:Lcom/google/android/gms/internal/ads/zzaiw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxb;Lcom/google/android/gms/internal/ads/zzaiw;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxk;->zzgpj:Lcom/google/android/gms/internal/ads/zzcxb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxk;->zzgqa:Lcom/google/android/gms/internal/ads/zzaiw;

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxk;->zzgpj:Lcom/google/android/gms/internal/ads/zzcxb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxk;->zzgqa:Lcom/google/android/gms/internal/ads/zzaiw;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxb;->onAdFailedToLoad(I)V

    if-eqz v1, :cond_13

    .line 4
    :try_start_9
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaiw;->onInstreamAdFailedToLoad(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    return-void
.end method
