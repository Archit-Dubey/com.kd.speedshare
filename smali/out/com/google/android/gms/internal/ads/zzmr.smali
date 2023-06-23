.class final Lcom/google/android/gms/internal/ads/zzmr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbdd:Lcom/google/android/gms/internal/ads/zzmp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmp;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmr;->zzbdd:Lcom/google/android/gms/internal/ads/zzmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmr;->zzbdd:Lcom/google/android/gms/internal/ads/zzmp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzmp;->zzb(Lcom/google/android/gms/internal/ads/zzmp;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmr;->zzbdd:Lcom/google/android/gms/internal/ads/zzmp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzmp;->zzc(Lcom/google/android/gms/internal/ads/zzmp;)Lcom/google/android/gms/internal/ads/zzmy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmr;->zzbdd:Lcom/google/android/gms/internal/ads/zzmp;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzmy;->zza(Lcom/google/android/gms/internal/ads/zznn;)V

    :cond_13
    return-void
.end method
