.class public final Lcom/google/android/gms/internal/ads/zzbmj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public static zzb(Lcom/google/android/gms/internal/ads/zzdkk;)Lorg/json/JSONObject;
    .registers 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zzdrn:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    const/4 p0, 0x0

    return-object p0
.end method
