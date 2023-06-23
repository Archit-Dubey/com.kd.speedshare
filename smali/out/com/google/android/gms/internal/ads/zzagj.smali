.class public final Lcom/google/android/gms/internal/ads/zzagj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahc<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzddi:Lcom/google/android/gms/internal/ads/zzagi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagi;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzddi:Lcom/google/android/gms/internal/ads/zzagi;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzddi:Lcom/google/android/gms/internal/ads/zzagi;

    if-nez p1, :cond_5

    return-void

    :cond_5
    const-string p1, "name"

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_16

    const-string p1, "Ad metadata with no name parameter."

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfc(Ljava/lang/String;)V

    const-string p1, ""

    :cond_16
    const-string v0, "info"

    .line 11
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 12
    :try_start_1f
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazy;->zzh(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception p2

    const-string v0, "Failed to convert ad metadata to JSON."

    .line 15
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    if-nez v2, :cond_3d

    const-string p1, "Failed to convert ad metadata to Bundle."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfb(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_3d
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzddi:Lcom/google/android/gms/internal/ads/zzagi;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzagi;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
