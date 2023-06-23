.class final Lcom/google/android/gms/internal/ads/zzapg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;


# instance fields
.field private final synthetic zzdlf:Lcom/google/android/gms/internal/ads/zzaoy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapc;Lcom/google/android/gms/internal/ads/zzaoy;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzdlf:Lcom/google/android/gms/internal/ads/zzaoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .registers 3

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzdlf:Lcom/google/android/gms/internal/ads/zzaoy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaoy;->onFailure(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzdlf:Lcom/google/android/gms/internal/ads/zzaoy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaoy;->zzdr(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
