.class public final Lcom/google/android/gms/internal/ads/zzcwj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private zzgdg:Lorg/json/JSONObject;

.field private final zzgoo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgop:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgoo:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgop:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwj;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final declared-synchronized zzapr()V
    .registers 16

    monitor-enter p0

    .line 37
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxh;->zzwe()Lcom/google/android/gms/internal/ads/zzaxx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaxx;->zzwz()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzwn()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_122

    if-eqz v0, :cond_120

    :try_start_13
    const-string v1, "ad_unit_id_settings"

    .line 41
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "ad_unit_patterns"

    .line 42
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgdg:Lorg/json/JSONObject;

    if-eqz v1, :cond_120

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 44
    :goto_25
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_120

    .line 45
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ad_unit_id"

    const-string v5, ""

    .line 46
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format"

    const-string v6, ""

    .line 47
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "mediation_config"

    .line 50
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_e1

    const-string v7, "ad_networks"

    .line 52
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_e1

    const/4 v7, 0x0

    .line 54
    :goto_55
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_e1

    .line 55
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_da

    const-string v10, "data"

    .line 59
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 61
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    if-eqz v10, :cond_8d

    .line 63
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 64
    :goto_77
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8d

    .line 65
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, ""

    .line 66
    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_8d
    const-string v10, "rtb_adapters"

    .line 70
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_da

    .line 72
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 73
    :goto_9b
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_b3

    const-string v13, ""

    .line 74
    invoke-virtual {v8, v12, v13}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 75
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b0

    .line 76
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b0
    add-int/lit8 v12, v12, 0x1

    goto :goto_9b

    .line 78
    :cond_b3
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x0

    :cond_ba
    :goto_ba
    if-ge v12, v8, :cond_da

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v13}, Lcom/google/android/gms/internal/ads/zzcwj;->zzgp(Ljava/lang/String;)V

    .line 80
    iget-object v14, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgoo:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzcwm;

    if-eqz v14, :cond_ba

    .line 82
    new-instance v14, Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-direct {v14, v13, v5, v11}, Lcom/google/android/gms/internal/ads/zzcwm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    .line 86
    :cond_da
    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_55

    .line 91
    :cond_e1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_114

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_114

    .line 93
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgop:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_fc

    .line 95
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 96
    :cond_fc
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgop:Ljava/util/Map;

    invoke-interface {v7, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_10e

    .line 99
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 100
    :cond_10e
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_114
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_114} :catch_118
    .catchall {:try_start_13 .. :try_end_114} :catchall_122

    :cond_114
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25

    :catch_118
    move-exception v0

    :try_start_119
    const-string v1, "Malformed config loading JSON."

    .line 105
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11e
    .catchall {:try_start_119 .. :try_end_11e} :catchall_122

    .line 106
    monitor-exit p0

    return-void

    .line 103
    :cond_120
    monitor-exit p0

    return-void

    :catchall_122
    move-exception v0

    monitor-exit p0

    goto :goto_126

    :goto_125
    throw v0

    :goto_126
    goto :goto_125
.end method


# virtual methods
.method public final zzann()V
    .registers 3

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxh;->zzwe()Lcom/google/android/gms/internal/ads/zzaxx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcwi;-><init>(Lcom/google/android/gms/internal/ads/zzcwj;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxx;->zzb(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcwl;-><init>(Lcom/google/android/gms/internal/ads/zzcwj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzaps()V
    .registers 1

    .line 107
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcwj;->zzapr()V

    return-void
.end method

.method final synthetic zzapt()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcwk;-><init>(Lcom/google/android/gms/internal/ads/zzcwj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzapu()V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcwj;->zzapr()V

    return-void
.end method

.method public final zzgp(Ljava/lang/String;)V
    .registers 6

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgoo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 35
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgoo:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwm;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, ""

    invoke-direct {v1, p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcwm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6a

    .line 13
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgop:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1c

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1c
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_31

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgdg:Lorg/json/JSONObject;

    invoke-static {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzcjc;->zza(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    :cond_31
    if-nez v1, :cond_38

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 22
    :cond_38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcwm;

    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwm;->zzfpp:Ljava/lang/String;

    .line 25
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_5d
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 28
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwm;->zzepn:Landroid/os/Bundle;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_69
    return-object p1

    .line 12
    :cond_6a
    :goto_6a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
