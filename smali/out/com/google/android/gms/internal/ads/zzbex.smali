.class public final Lcom/google/android/gms/internal/ads/zzbex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahc<",
        "Lcom/google/android/gms/internal/ads/zzbdb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 4
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_16} :catch_17

    return-object p0

    .line 6
    :catch_17
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Precache invalid numeric parameter \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 12

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdb;

    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "google.afma.Notify_dt"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Precache GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 13
    :cond_35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzls()Lcom/google/android/gms/internal/ads/zzbep;

    const-string v0, "abort"

    .line 14
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbep;->zzc(Lcom/google/android/gms/internal/ads/zzbdb;)Z

    move-result p1

    if-nez p1, :cond_4b

    const-string p1, "Precache abort but no precache task running."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    :cond_4b
    return-void

    :cond_4c
    const-string v0, "src"

    .line 18
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_ee

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "demuxed"

    .line 21
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_a0

    .line 23
    :try_start_67
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 25
    :goto_73
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_82

    .line 26
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_7f} :catch_84

    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    :cond_82
    move-object v2, v6

    goto :goto_a0

    :catch_84
    nop

    const-string v2, "Malformed demuxed URL list for precache: "

    .line 30
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_96

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9c

    :cond_96
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_9c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    move-object v2, v5

    :cond_a0
    :goto_a0
    if-nez v2, :cond_a6

    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v3

    .line 34
    :cond_a6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbep;->zzd(Lcom/google/android/gms/internal/ads/zzbdb;)Lcom/google/android/gms/internal/ads/zzben;

    move-result-object v1

    if-eqz v1, :cond_b2

    const-string p1, "Precache task is already running."

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 38
    :cond_b2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdb;->zzzm()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v1

    if-nez v1, :cond_be

    const-string p1, "Precache requires a dependency provider."

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 41
    :cond_be
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdc;

    const-string v4, "flags"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzbdc;-><init>(Ljava/lang/String;)V

    const-string v4, "player"

    .line 42
    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzbex;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_d7

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 45
    :cond_d7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 47
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdb;->zzzm()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zza;->zzbny:Lcom/google/android/gms/internal/ads/zzbfa;

    .line 48
    invoke-interface {v4, p1, v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(Lcom/google/android/gms/internal/ads/zzbdb;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbdc;)Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    .line 50
    new-instance v3, Lcom/google/android/gms/internal/ads/zzben;

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzben;-><init>(Lcom/google/android/gms/internal/ads/zzbdb;Lcom/google/android/gms/internal/ads/zzbes;Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxr;->zzwq()Lcom/google/android/gms/internal/ads/zzdvf;

    goto :goto_f6

    .line 53
    :cond_ee
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbep;->zzd(Lcom/google/android/gms/internal/ads/zzbdb;)Lcom/google/android/gms/internal/ads/zzben;

    move-result-object p1

    if-eqz p1, :cond_133

    .line 55
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzben;->zzekc:Lcom/google/android/gms/internal/ads/zzbes;

    :goto_f6
    const-string p1, "minBufferMs"

    .line 58
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbex;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_105

    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzdj(I)V

    :cond_105
    const-string p1, "maxBufferMs"

    .line 61
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbex;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_114

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzdk(I)V

    :cond_114
    const-string p1, "bufferForPlaybackMs"

    .line 64
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbex;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_123

    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzdl(I)V

    :cond_123
    const-string p1, "bufferForPlaybackAfterRebufferMs"

    .line 68
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbex;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_132

    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzdm(I)V

    :cond_132
    return-void

    :cond_133
    const-string p1, "Precache must specify a source."

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void
.end method
