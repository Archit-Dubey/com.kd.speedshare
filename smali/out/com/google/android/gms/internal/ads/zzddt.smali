.class public final Lcom/google/android/gms/internal/ads/zzddt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdec<",
        "Lcom/google/android/gms/internal/ads/zzddz<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzaah:Landroid/content/Context;

.field private final zzgad:Lcom/google/android/gms/internal/ads/zzdvi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdvi;Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddt;->zzgad:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddt;->zzaah:Landroid/content/Context;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lorg/json/JSONArray;)Landroid/os/Bundle;
    .registers 11

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_c2

    .line 8
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "bk"

    .line 9
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sk"

    .line 10
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const-string v7, "type"

    .line 11
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_34

    if-eq v3, v7, :cond_31

    if-eq v3, v6, :cond_2e

    const/4 v3, 0x0

    goto :goto_36

    .line 15
    :cond_2e
    sget v3, Lcom/google/android/gms/internal/ads/zzddx;->zzguj:I

    goto :goto_36

    .line 14
    :cond_31
    sget v3, Lcom/google/android/gms/internal/ads/zzddx;->zzgui:I

    goto :goto_36

    .line 13
    :cond_34
    sget v3, Lcom/google/android/gms/internal/ads/zzddx;->zzguh:I

    .line 18
    :goto_36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_be

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_be

    if-eqz v3, :cond_be

    const-string v8, "/"

    .line 20
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 21
    array-length v8, v5

    if-gt v8, v6, :cond_6c

    array-length v8, v5

    if-nez v8, :cond_51

    goto :goto_6c

    .line 23
    :cond_51
    array-length v8, v5

    if-ne v8, v7, :cond_5b

    .line 24
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 25
    aget-object v5, v5, v1

    goto :goto_63

    .line 26
    :cond_5b
    aget-object v8, v5, v1

    invoke-virtual {p0, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 27
    aget-object v5, v5, v7

    .line 28
    :goto_63
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 v5, 0x0

    :goto_6d
    if-eqz v5, :cond_be

    .line 31
    sget-object v8, Lcom/google/android/gms/internal/ads/zzddy;->zzgul:[I

    add-int/lit8 v3, v3, -0x1

    aget v3, v8, v3

    if-eq v3, v7, :cond_b5

    if-eq v3, v6, :cond_8b

    const/4 v6, 0x3

    if-eq v3, v6, :cond_7d

    goto :goto_be

    .line 40
    :cond_7d
    instance-of v3, v5, Ljava/lang/Boolean;

    if-eqz v3, :cond_be

    .line 41
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_be

    .line 34
    :cond_8b
    instance-of v3, v5, Ljava/lang/Integer;

    if-eqz v3, :cond_99

    .line 35
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_be

    .line 36
    :cond_99
    instance-of v3, v5, Ljava/lang/Long;

    if-eqz v3, :cond_a7

    .line 37
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_be

    .line 38
    :cond_a7
    instance-of v3, v5, Ljava/lang/Float;

    if-eqz v3, :cond_be

    .line 39
    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_be

    .line 32
    :cond_b5
    instance-of v3, v5, Ljava/lang/String;

    if-eqz v3, :cond_be

    .line 33
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    :goto_be
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_c2
    return-object v0
.end method


# virtual methods
.method public final zzaqm()Lcom/google/android/gms/internal/ads/zzdvf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "Lcom/google/android/gms/internal/ads/zzddz<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->zzgad:Lcom/google/android/gms/internal/ads/zzdvi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzddw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzddw;-><init>(Lcom/google/android/gms/internal/ads/zzddt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvi;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzarb()Lcom/google/android/gms/internal/ads/zzddz;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcvl:Lcom/google/android/gms/internal/ads/zzaag;

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    return-object v2

    .line 49
    :cond_14
    :try_start_14
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_25

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->zzaah:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzddt;->zza(Landroid/content/Context;Lorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/google/android/gms/internal/ads/zzddv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :catch_25
    move-exception v0

    const-string v1, "JSON parsing error"

    .line 52
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
