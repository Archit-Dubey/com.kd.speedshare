.class final synthetic Lcom/google/android/gms/internal/ads/zzzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzckl:Lcom/google/android/gms/internal/ads/zzauq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzr;->zzckl:Lcom/google/android/gms/internal/ads/zzauq;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzr;->zzckl:Lcom/google/android/gms/internal/ads/zzauq;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    .line 3
    :try_start_5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzauq;->onRewardedAdFailedToLoad(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method
