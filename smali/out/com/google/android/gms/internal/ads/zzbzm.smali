.class final synthetic Lcom/google/android/gms/internal/ads/zzbzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwd;


# instance fields
.field private final zzeot:Lcom/google/android/gms/internal/ads/zzbfn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzm;->zzeot:Lcom/google/android/gms/internal/ads/zzbfn;

    return-void
.end method


# virtual methods
.method public final zzahv()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzm;->zzeot:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaav()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaav()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    :cond_f
    return-void
.end method
