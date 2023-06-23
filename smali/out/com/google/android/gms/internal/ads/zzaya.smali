.class public final Lcom/google/android/gms/internal/ads/zzaya;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxx;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzclb:Landroid/content/SharedPreferences;

.field private zzdpq:Z

.field private zzdqd:Z

.field private zzdqg:Ljava/lang/String;

.field private zzdrp:Z

.field private zzdsb:Z

.field private zzdyz:Z

.field private final zzdza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzdzb:Lcom/google/android/gms/internal/ads/zzdvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "*>;"
        }
    .end annotation
.end field

.field private zzdzc:Lcom/google/android/gms/internal/ads/zzri;

.field private zzdzd:Landroid/content/SharedPreferences$Editor;

.field private zzdze:Z

.field private zzdzf:Ljava/lang/String;

.field private zzdzg:Ljava/lang/String;

.field private zzdzh:J

.field private zzdzi:J

.field private zzdzj:J

.field private zzdzk:I

.field private zzdzl:I

.field private zzdzm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzdzn:Lorg/json/JSONObject;

.field private zzdzo:Ljava/lang/String;

.field private zzdzp:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdza:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzc:Lcom/google/android/gms/internal/ads/zzri;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdze:Z

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdpq:Z

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqd:Z

    const-string v3, ""

    .line 8
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqg:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 9
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzh:J

    .line 10
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzi:J

    .line 11
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzj:J

    const/4 v3, -0x1

    .line 12
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzk:I

    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzl:I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzm:Ljava/util/Set;

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzn:Lorg/json/JSONObject;

    .line 17
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdrp:Z

    .line 18
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdsb:Z

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzo:Ljava/lang/String;

    .line 20
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzp:I

    return-void
.end method

.method private final zzc(Landroid/os/Bundle;)V
    .registers 3

    .line 69
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbf;->zzedh:Lcom/google/android/gms/internal/ads/zzdvi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzayc;-><init>(Lcom/google/android/gms/internal/ads/zzaya;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdvi;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzxg()V
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzb:Lcom/google/android/gms/internal/ads/zzdvf;

    if-nez v0, :cond_5

    return-void

    .line 35
    :cond_5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdvf;->isDone()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 37
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzb:Lcom/google/android/gms/internal/ads/zzdvf;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdvf;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_15} :catch_21
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_15} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_15} :catch_18
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    goto :goto_1b

    :catch_18
    move-exception v0

    goto :goto_1b

    :catch_1a
    move-exception v0

    :goto_1b
    const-string v1, "Fail to initialize AdSharedPreferenceManager."

    .line 44
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_21
    move-exception v0

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "Interrupted while waiting for preferences loaded."

    .line 41
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzxh()Landroid/os/Bundle;
    .registers 6

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "listener_registration_bundle"

    const/4 v2, 0x1

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    const-string v2, "use_https"

    .line 49
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdpq:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "content_url_opted_out"

    .line 50
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdrp:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "content_vertical_opted_out"

    .line 51
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdsb:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "auto_collect_location"

    .line 52
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqd:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "version_code"

    .line 53
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzl:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "never_pool_slots"

    .line 54
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzm:Ljava/util/Set;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "app_settings_json"

    .line 55
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_settings_last_update_ms"

    .line 56
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzh:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "app_last_background_time_ms"

    .line 57
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzi:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "request_in_session_count"

    .line 58
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzk:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "first_ad_req_time_ms"

    .line 59
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzj:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "native_advanced_settings"

    .line 60
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzn:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "display_cutout"

    .line 61
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_measurement_npa"

    .line 62
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzp:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzf:Ljava/lang/String;

    if-eqz v2, :cond_88

    const-string v2, "content_url_hashes"

    .line 64
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzf:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_88
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzg:Ljava/lang/String;

    if-eqz v2, :cond_93

    const-string v2, "content_vertical_hashes"

    .line 66
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_93
    monitor-exit v1

    return-object v0

    :catchall_95
    move-exception v0

    monitor-exit v1
    :try_end_97
    .catchall {:try_start_e .. :try_end_97} :catchall_95

    throw v0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_9

    .line 24
    monitor-exit v0

    return-void

    .line 25
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_35

    if-nez p2, :cond_f

    const-string p2, "admob"

    goto :goto_25

    :cond_f
    const-string v0, "admob__"

    .line 28
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_25

    :cond_20
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 29
    :goto_25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzedh:Lcom/google/android/gms/internal/ads/zzdvi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaxz;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaxz;-><init>(Lcom/google/android/gms/internal/ads/zzaya;Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvi;->zzf(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzb:Lcom/google/android/gms/internal/ads/zzdvf;

    .line 31
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdyz:Z

    return-void

    :catchall_35
    move-exception p1

    .line 25
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    .line 257
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzn:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_13

    .line 261
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 262
    :cond_13
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 263
    :goto_19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 264
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_27

    .line 266
    monitor-exit v0

    return-void

    :cond_27
    const-string v6, "template_id"

    .line 267
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    if-eqz p3, :cond_3f

    const-string v2, "uses_media_view"

    .line 269
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 271
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_9a

    return-void

    :cond_3f
    move v2, v4

    goto :goto_44

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 275
    :cond_44
    :goto_44
    :try_start_44
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "template_id"

    .line 276
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "uses_media_view"

    .line 277
    invoke-virtual {v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "timestamp_ms"

    .line 278
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 279
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 280
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzn:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_68} :catch_69
    .catchall {:try_start_44 .. :try_end_68} :catchall_9a

    goto :goto_6f

    :catch_69
    move-exception p1

    :try_start_6a
    const-string p2, "Could not update native advanced settings"

    .line 283
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    :goto_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_85

    .line 285
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string p2, "native_advanced_settings"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzn:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    :cond_85
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "native_advanced_settings"

    .line 288
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzn:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 290
    monitor-exit v0

    return-void

    :catchall_9a
    move-exception p1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_6a .. :try_end_9c} :catchall_9a

    goto :goto_9e

    :goto_9d
    throw p1

    :goto_9e
    goto :goto_9d
.end method

.method public final zzao(Z)V
    .registers 5

    .line 86
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdrp:Z

    if-ne v1, p1, :cond_c

    .line 89
    monitor-exit v0

    return-void

    .line 90
    :cond_c
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdrp:Z

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1e

    .line 92
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "content_url_opted_out"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    :cond_1e
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "content_url_opted_out"

    .line 95
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdrp:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "content_vertical_opted_out"

    .line 96
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdsb:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 98
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public final zzap(Z)V
    .registers 5

    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdsb:Z

    if-ne v1, p1, :cond_c

    .line 122
    monitor-exit v0

    return-void

    .line 123
    :cond_c
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdsb:Z

    .line 124
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1e

    .line 125
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "content_vertical_opted_out"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    :cond_1e
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "content_url_opted_out"

    .line 128
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdrp:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "content_vertical_opted_out"

    .line 129
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdsb:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 131
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public final zzaq(Z)V
    .registers 5

    .line 152
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqd:Z

    if-ne v1, p1, :cond_c

    .line 155
    monitor-exit v0

    return-void

    .line 156
    :cond_c
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqd:Z

    .line 157
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1e

    .line 158
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "auto_collect_location"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    :cond_1e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "auto_collect_location"

    .line 161
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 163
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public final zzb(Ljava/lang/Runnable;)V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzdd(I)V
    .registers 5

    .line 168
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzl:I

    if-ne v1, p1, :cond_c

    .line 171
    monitor-exit v0

    return-void

    .line 172
    :cond_c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzl:I

    .line 173
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1e

    .line 174
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "version_code"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    :cond_1e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "version_code"

    .line 177
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 179
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public final zzde(I)V
    .registers 5

    .line 225
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzk:I

    if-ne v1, p1, :cond_c

    .line 228
    monitor-exit v0

    return-void

    .line 229
    :cond_c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzk:I

    .line 230
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1e

    .line 231
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "request_in_session_count"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 232
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    :cond_1e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request_in_session_count"

    .line 234
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 236
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public final zzei(Ljava/lang/String;)V
    .registers 5

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_32

    .line 105
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzf:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_32

    .line 107
    :cond_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzf:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_23

    .line 109
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "content_url_hashes"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    :cond_23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content_url_hashes"

    .line 112
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 114
    monitor-exit v0

    return-void

    .line 106
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p1

    .line 114
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public final zzej(Ljava/lang/String;)V
    .registers 5

    .line 136
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_32

    .line 138
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_32

    .line 140
    :cond_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzg:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_23

    .line 142
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "content_vertical_hashes"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    :cond_23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content_vertical_hashes"

    .line 145
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 147
    monitor-exit v0

    return-void

    .line 139
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p1

    .line 147
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public final zzek(Ljava/lang/String;)V
    .registers 7

    .line 184
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 187
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzh:J

    if-eqz p1, :cond_5e

    .line 188
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_5e

    .line 190
    :cond_1b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqg:Ljava/lang/String;

    .line 191
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_34

    .line 192
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v4, "app_settings_json"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v4, "app_settings_last_update_ms"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 194
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    :cond_34
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "app_settings_json"

    .line 196
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_settings_last_update_ms"

    .line 197
    invoke-virtual {v3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 199
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdza:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 200
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_4c

    .line 202
    :cond_5c
    monitor-exit v0

    return-void

    .line 189
    :cond_5e
    :goto_5e
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p1

    .line 202
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_6 .. :try_end_62} :catchall_60

    goto :goto_64

    :goto_63
    throw p1

    :goto_64
    goto :goto_63
.end method

.method public final zzel(Ljava/lang/String;)V
    .registers 5

    .line 309
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzo:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 312
    monitor-exit v0

    return-void

    .line 313
    :cond_10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzo:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_22

    .line 315
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "display_cutout"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    :cond_22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "display_cutout"

    .line 318
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 320
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public final zzez(J)V
    .registers 7

    .line 209
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzi:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_e

    .line 212
    monitor-exit v0

    return-void

    .line 213
    :cond_e
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzi:J

    .line 214
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_20

    .line 215
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "app_last_background_time_ms"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 216
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    :cond_20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_last_background_time_ms"

    .line 218
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 219
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 220
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final zzfa(J)V
    .registers 7

    .line 241
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzj:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_e

    .line 244
    monitor-exit v0

    return-void

    .line 245
    :cond_e
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzj:J

    .line 246
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_20

    .line 247
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "first_ad_req_time_ms"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    :cond_20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "first_ad_req_time_ms"

    .line 250
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 251
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 252
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method final synthetic zzq(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 324
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 325
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    .line 327
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastM()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 330
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p1

    if-nez p1, :cond_21

    const/4 v0, 0x1

    .line 331
    :cond_21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdze:Z

    .line 332
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "use_https"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdpq:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdpq:Z

    .line 333
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "content_url_opted_out"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdrp:Z

    .line 334
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdrp:Z

    .line 335
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "content_url_hashes"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzf:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzf:Ljava/lang/String;

    .line 336
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "auto_collect_location"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqd:Z

    .line 337
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqd:Z

    .line 338
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "content_vertical_opted_out"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdsb:Z

    .line 339
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdsb:Z

    .line 340
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "content_vertical_hashes"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzg:Ljava/lang/String;

    .line 341
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzg:Ljava/lang/String;

    .line 342
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "version_code"

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzl:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzl:I

    .line 343
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "app_settings_json"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqg:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqg:Ljava/lang/String;

    .line 344
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "app_settings_last_update_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzh:J

    .line 345
    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzh:J

    .line 346
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "app_last_background_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzi:J

    .line 347
    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzi:J

    .line 348
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "request_in_session_count"

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzk:I

    .line 349
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzk:I

    .line 350
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "first_ad_req_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzj:J

    .line 351
    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzj:J

    .line 352
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "never_pool_slots"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzm:Ljava/util/Set;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzm:Ljava/util/Set;

    .line 353
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "display_cutout"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzo:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzo:Ljava/lang/String;

    .line 354
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string p2, "app_measurement_npa"

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzp:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzp:I
    :try_end_d7
    .catchall {:try_start_c .. :try_end_d7} :catchall_f8

    .line 355
    :try_start_d7
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzclb:Landroid/content/SharedPreferences;

    const-string v0, "native_advanced_settings"

    const-string v2, "{}"

    .line 356
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzn:Lorg/json/JSONObject;
    :try_end_e8
    .catch Lorg/json/JSONException; {:try_start_d7 .. :try_end_e8} :catch_e9
    .catchall {:try_start_d7 .. :try_end_e8} :catchall_f8

    goto :goto_ef

    :catch_e9
    move-exception p1

    :try_start_ea
    const-string p2, "Could not convert native advanced settings to json object"

    .line 359
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    :goto_ef
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxh()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 361
    monitor-exit v1

    return-void

    :catchall_f8
    move-exception p1

    monitor-exit v1
    :try_end_fa
    .catchall {:try_start_ea .. :try_end_fa} :catchall_f8

    throw p1
.end method

.method public final zzws()Lcom/google/android/gms/internal/ads/zzri;
    .registers 4

    .line 71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdyz:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 73
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzwt()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzwv()Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    .line 75
    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacf;->zzczl:Lcom/google/android/gms/internal/ads/zzabx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22

    return-object v1

    .line 77
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 79
    monitor-exit v0

    return-object v1

    .line 80
    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzc:Lcom/google/android/gms/internal/ads/zzri;

    if-nez v1, :cond_38

    .line 81
    new-instance v1, Lcom/google/android/gms/internal/ads/zzri;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzc:Lcom/google/android/gms/internal/ads/zzri;

    .line 82
    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzc:Lcom/google/android/gms/internal/ads/zzri;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzmh()V

    const-string v1, "start fetching content..."

    .line 83
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfc(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzc:Lcom/google/android/gms/internal/ads/zzri;

    monitor-exit v0

    return-object v1

    :catchall_46
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public final zzwt()Z
    .registers 3

    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdrp:Z

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    .line 102
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzwu()Ljava/lang/String;
    .registers 3

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzf:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 118
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzwv()Z
    .registers 3

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdsb:Z

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    .line 135
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzww()Ljava/lang/String;
    .registers 3

    .line 148
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzg:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 151
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzwx()Z
    .registers 3

    .line 164
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqd:Z

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    .line 167
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzwy()I
    .registers 3

    .line 180
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzl:I

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    .line 183
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzwz()Lcom/google/android/gms/internal/ads/zzaxi;
    .registers 6

    .line 203
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaxi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdqg:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzh:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaxi;-><init>(Ljava/lang/String;J)V

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    .line 206
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final zzxa()J
    .registers 4

    .line 221
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzi:J

    monitor-exit v0

    return-wide v1

    :catchall_a
    move-exception v1

    .line 224
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzxb()I
    .registers 3

    .line 237
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzk:I

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    .line 240
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzxc()J
    .registers 4

    .line 253
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzj:J

    monitor-exit v0

    return-wide v1

    :catchall_a
    move-exception v1

    .line 256
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzxd()Lorg/json/JSONObject;
    .registers 3

    .line 291
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzn:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 294
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzxe()V
    .registers 5

    .line 295
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzn:Lorg/json/JSONObject;

    .line 298
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1d

    .line 299
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    const-string v2, "native_advanced_settings"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    :cond_1d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "native_advanced_settings"

    const-string v3, "{}"

    .line 302
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzc(Landroid/os/Bundle;)V

    .line 304
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public final zzxf()Ljava/lang/String;
    .registers 3

    .line 305
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaya;->zzxg()V

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdzo:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 308
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method
