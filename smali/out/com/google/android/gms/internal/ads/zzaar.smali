.class public final Lcom/google/android/gms/internal/ads/zzaar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private metaData:Landroid/os/Bundle;

.field private final zzckz:Landroid/os/ConditionVariable;

.field private volatile zzcla:Z

.field private zzclb:Landroid/content/SharedPreferences;

.field private zzclc:Landroid/content/Context;

.field private zzcld:Lorg/json/JSONObject;

.field private volatile zzzg:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzckz:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzzg:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcla:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzclb:Landroid/content/SharedPreferences;

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->metaData:Landroid/os/Bundle;

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcld:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaar;)Landroid/content/SharedPreferences;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzclb:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final zzre()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzclb:Landroid/content/SharedPreferences;

    if-nez v0, :cond_5

    return-void

    .line 69
    :cond_5
    :try_start_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaat;-><init>(Lcom/google/android/gms/internal/ads/zzaar;)V

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbai;->zza(Lcom/google/android/gms/internal/ads/zzdsl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcld:Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .registers 7

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzzg:Z

    if-eqz v0, :cond_5

    return-void

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzzg:Z

    if-eqz v1, :cond_e

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcla:Z

    const/4 v2, 0x1

    if-nez v1, :cond_15

    .line 15
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcla:Z

    .line 17
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1d

    move-object v1, p1

    goto :goto_21

    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_21
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzclc:Landroid/content/Context;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_83

    .line 19
    :try_start_23
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzclc:Landroid/content/Context;

    .line 20
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->metaData:Landroid/os/Bundle;
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_37} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_37} :catch_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_83

    :catch_37
    const/4 v1, 0x0

    .line 23
    :try_start_38
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_49

    if-eqz p1, :cond_49

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_7a

    if-nez v3, :cond_47

    goto :goto_48

    :cond_47
    move-object p1, v3

    :goto_48
    move-object v3, p1

    :cond_49
    if-nez v3, :cond_54

    .line 28
    :try_start_4b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcla:Z

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzckz:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_83

    return-void

    .line 32
    :cond_54
    :try_start_54
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpu()Lcom/google/android/gms/internal/ads/zzaao;

    const-string p1, "google_ads_flags"

    .line 33
    invoke-virtual {v3, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzclb:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_64

    .line 36
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 37
    :cond_64
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaas;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzaas;-><init>(Lcom/google/android/gms/internal/ads/zzaar;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacy;->zza(Lcom/google/android/gms/internal/ads/zzacz;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaar;->zzre()V

    .line 39
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzzg:Z
    :try_end_71
    .catchall {:try_start_54 .. :try_end_71} :catchall_7a

    .line 40
    :try_start_71
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcla:Z

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzckz:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 46
    monitor-exit v0

    return-void

    :catchall_7a
    move-exception p1

    .line 43
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcla:Z

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzckz:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 45
    throw p1

    :catchall_83
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_71 .. :try_end_85} :catchall_83

    throw p1
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    const-string p1, "flag_configuration"

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaar;->zzre()V

    :cond_b
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzaag<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzckz:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcla:Z

    if-eqz v1, :cond_13

    .line 51
    monitor-exit v0

    goto :goto_1e

    .line 50
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Flags.initialize() was not called!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1b
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw p1

    .line 52
    :cond_1e
    :goto_1e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzzg:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzclb:Landroid/content/SharedPreferences;

    if-nez v0, :cond_33

    .line 53
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_29
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzzg:Z

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzclb:Landroid/content/SharedPreferences;

    if-nez v1, :cond_32

    goto :goto_6c

    .line 56
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_72

    .line 57
    :cond_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaag;->getSource()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_43

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaag;->zzrb()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :cond_43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaag;->zza(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 61
    :cond_48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaag;->getSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcld:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaag;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzcld:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaag;->zzb(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 63
    :cond_62
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzaaq;-><init>(Lcom/google/android/gms/internal/ads/zzaar;Lcom/google/android/gms/internal/ads/zzaag;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbai;->zza(Lcom/google/android/gms/internal/ads/zzdsl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 55
    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaag;->zzrb()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_72
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_72

    throw p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzclb:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaag;->zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzrf()Ljava/lang/String;
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzclb:Landroid/content/SharedPreferences;

    const-string v1, "flag_configuration"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
