.class final Lcom/google/android/gms/internal/ads/zzbcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzeeq:Lcom/google/android/gms/internal/ads/zzbbz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbz;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeeq:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeeq:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->zza(Lcom/google/android/gms/internal/ads/zzbbz;)Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeeq:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->zza(Lcom/google/android/gms/internal/ads/zzbbz;)Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcj;->zzyt()V

    :cond_11
    return-void
.end method
