.class public final Lcom/google/android/gms/measurement/internal/zzfm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Landroid/os/Bundle;

.field private zzc:Z

.field private zzd:Landroid/os/Bundle;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzfl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfl;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zze:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Ljava/lang/String;

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzb:Landroid/os/Bundle;

    return-void
.end method

.method private final zzb(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8

    .line 50
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 54
    :try_start_1f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "n"

    .line 55
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "v"

    .line 56
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    instance-of v2, v3, Ljava/lang/String;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_34} :catch_69

    const-string v5, "t"

    if-eqz v2, :cond_3e

    :try_start_38
    const-string v2, "s"

    .line 58
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_51

    .line 59
    :cond_3e
    instance-of v2, v3, Ljava/lang/Long;

    if-eqz v2, :cond_48

    const-string v2, "l"

    .line 60
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_51

    .line 61
    :cond_48
    instance-of v2, v3, Ljava/lang/Double;

    if-eqz v2, :cond_55

    const-string v2, "d"

    .line 62
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :goto_51
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    .line 63
    :cond_55
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zze:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    const-string v4, "Cannot serialize bundle value to SharedPreferences. Type"

    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_68} :catch_69

    goto :goto_d

    :catch_69
    move-exception v2

    .line 70
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zze:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v3

    const-string v4, "Cannot serialize bundle value to SharedPreferences"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 72
    :cond_7a
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza()Landroid/os/Bundle;
    .registers 13

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzc:Z

    if-nez v0, :cond_cd

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzc:Z

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zze:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzg()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c5

    .line 11
    :try_start_16
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 12
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 13
    :goto_22
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_26} :catch_b6

    if-ge v4, v5, :cond_b3

    .line 14
    :try_start_28
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "n"

    .line 15
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "t"

    .line 16
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    .line 17
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x64

    const/4 v11, 0x2

    if-eq v9, v10, :cond_5f

    const/16 v10, 0x6c

    if-eq v9, v10, :cond_55

    const/16 v10, 0x73

    if-eq v9, v10, :cond_4b

    goto :goto_68

    :cond_4b
    const-string v9, "s"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    const/4 v8, 0x0

    goto :goto_68

    :cond_55
    const-string v9, "l"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    const/4 v8, 0x2

    goto :goto_68

    :cond_5f
    const-string v9, "d"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_65} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_65} :catch_a0

    if-eqz v9, :cond_68

    const/4 v8, 0x1

    :cond_68
    :goto_68
    const-string v9, "v"

    if-eqz v8, :cond_98

    if-eq v8, v0, :cond_8c

    if-eq v8, v11, :cond_80

    .line 27
    :try_start_70
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zze:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v5

    const-string v6, "Unrecognized persisted bundle type. Type"

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_af

    .line 24
    :cond_80
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 25
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_af

    .line 21
    :cond_8c
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 22
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_af

    .line 18
    :cond_98
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_9f} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_9f} :catch_a0

    goto :goto_af

    .line 30
    :catch_a0
    :try_start_a0
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zze:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v5

    const-string v6, "Error reading value from SharedPreferences. Value dropped"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    :goto_af
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_22

    .line 32
    :cond_b3
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzd:Landroid/os/Bundle;
    :try_end_b5
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_b5} :catch_b6

    goto :goto_c5

    .line 35
    :catch_b6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zze:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzf()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v1, "Error loading bundle from SharedPreferences. Values will be lost"

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 38
    :cond_c5
    :goto_c5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzd:Landroid/os/Bundle;

    if-nez v0, :cond_cd

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzb:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzd:Landroid/os/Bundle;

    .line 40
    :cond_cd
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzd:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zza(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_7

    .line 42
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 43
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zze:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzg()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_1d

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_26

    .line 46
    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfm;->zzb(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    :goto_26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzd:Landroid/os/Bundle;

    return-void
.end method
