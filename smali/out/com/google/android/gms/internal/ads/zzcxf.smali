.class final synthetic Lcom/google/android/gms/internal/ads/zzcxf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgpx:Lcom/google/android/gms/internal/ads/zzcxc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxf;->zzgpx:Lcom/google/android/gms/internal/ads/zzcxc;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxf;->zzgpx:Lcom/google/android/gms/internal/ads/zzcxc;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxc;->zzgpt:Lcom/google/android/gms/internal/ads/zzcxd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcxd;->zzd(Lcom/google/android/gms/internal/ads/zzcxd;)Lcom/google/android/gms/internal/ads/zzcxb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxb;->onAdLoaded()V

    return-void
.end method
