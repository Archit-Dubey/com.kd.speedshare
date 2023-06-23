.class final Lcom/google/android/gms/internal/ads/zzagb;
.super Lcom/google/android/gms/internal/ads/zzaey;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private final synthetic zzdcz:Lcom/google/android/gms/internal/ads/zzafz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzafz;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzdcz:Lcom/google/android/gms/internal/ads/zzafz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaey;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafy;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagb;-><init>(Lcom/google/android/gms/internal/ads/zzafz;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaep;Ljava/lang/String;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzdcz:Lcom/google/android/gms/internal/ads/zzafz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafz;->zzb(Lcom/google/android/gms/internal/ads/zzafz;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzdcz:Lcom/google/android/gms/internal/ads/zzafz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafz;->zzb(Lcom/google/android/gms/internal/ads/zzafz;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzdcz:Lcom/google/android/gms/internal/ads/zzafz;

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzafz;->zza(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzaep;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V

    return-void
.end method
