.class final Lcom/google/android/gms/internal/ads/zzamf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahk;


# instance fields
.field private final zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbn<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final synthetic zzdhx:Lcom/google/android/gms/internal/ads/zzamd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamd;Lcom/google/android/gms/internal/ads/zzbbn;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbbn<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdhx:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_d

    .line 12
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalg;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbn;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 13
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzalg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzalg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbn;->setException(Ljava/lang/Throwable;)Z
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method

.method public final zzc(Lorg/json/JSONObject;)V
    .registers 4

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdhx:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzamd;->zza(Lcom/google/android/gms/internal/ads/zzamd;)Lcom/google/android/gms/internal/ads/zzall;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzall;->zzd(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbn;->set(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdhu:Lcom/google/android/gms/internal/ads/zzbbn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbn;->setException(Ljava/lang/Throwable;)Z

    :catch_16
    return-void
.end method
