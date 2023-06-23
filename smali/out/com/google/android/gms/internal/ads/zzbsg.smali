.class public final Lcom/google/android/gms/internal/ads/zzbsg;
.super Lcom/google/android/gms/internal/ads/zzyg;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzfrl:Ljava/lang/String;

.field private final zzfrm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkk;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyg;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_8

    move-object v1, v0

    goto :goto_a

    .line 2
    :cond_8
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdkk;->zzfrm:Ljava/lang/String;

    :goto_a
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzfrm:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    .line 4
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    if-eqz v1, :cond_26

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbsg;->zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Ljava/lang/String;

    move-result-object v0

    :cond_26
    if-nez v0, :cond_29

    goto :goto_2a

    :cond_29
    move-object p2, v0

    .line 7
    :goto_2a
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzfrl:Ljava/lang/String;

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Ljava/lang/String;
    .registers 2

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zzgzu:Lorg/json/JSONObject;

    const-string v0, "class_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzfrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseId()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzfrm:Ljava/lang/String;

    return-object v0
.end method
