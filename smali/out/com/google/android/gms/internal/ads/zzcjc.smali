.class public final Lcom/google/android/gms/internal/ads/zzcjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public static zza(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcpr:Lcom/google/android/gms/internal/ads/zzaag;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    if-nez p0, :cond_18

    return-object v1

    .line 7
    :cond_18
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_1f

    return-object v1

    :cond_1f
    const/4 p2, 0x0

    .line 10
    :goto_20
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_4e

    .line 11
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4b

    const-string v2, "including"

    .line 13
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "excluding"

    .line 14
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 15
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcjc;->zza(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzcjc;->zza(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    const-string p0, "effective_ad_unit_id"

    .line 16
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4b
    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_4e
    return-object v1
.end method

.method private static zza(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-nez p1, :cond_6

    goto :goto_2e

    :cond_6
    const/4 v1, 0x0

    .line 21
    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    :try_start_11
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2
    :try_end_1d
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_11 .. :try_end_1d} :catch_21

    if-eqz v2, :cond_2b

    const/4 p0, 0x1

    return p0

    :catch_21
    move-exception v2

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v3

    const-string v4, "RtbAdapterMap.hasAtleastOneRegexMatch"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2e
    :goto_2e
    return v0
.end method
