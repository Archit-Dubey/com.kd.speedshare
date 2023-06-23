.class public final Lcom/google/android/gms/internal/ads/zzafz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private final zzdcw:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

.field private final zzdcx:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

.field private zzdcy:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzdcw:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzdcx:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzafz;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzdcw:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzaep;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafz;->zzb(Lcom/google/android/gms/internal/ads/zzaep;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzafz;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzdcx:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-object p0
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzaep;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .registers 3

    monitor-enter p0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzdcy:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    if-eqz v0, :cond_9

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzdcy:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_12

    monitor-exit p0

    return-object p1

    .line 11
    :cond_9
    :try_start_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaeq;-><init>(Lcom/google/android/gms/internal/ads/zzaep;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzdcy:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final zzso()Lcom/google/android/gms/internal/ads/zzafa;
    .registers 3

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaga;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaga;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafy;)V

    return-object v0
.end method

.method public final zzsp()Lcom/google/android/gms/internal/ads/zzaez;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzdcx:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 8
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzagb;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzagb;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafy;)V

    return-object v0
.end method
