.class final synthetic Lcom/google/android/gms/internal/ads/zzcsg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtd;


# instance fields
.field private final zzeot:Lcom/google/android/gms/internal/ads/zzbfn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzeot:Lcom/google/android/gms/internal/ads/zzbfn;

    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzeot:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaaz()Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaaz()Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaby()V

    :cond_f
    return-void
.end method
