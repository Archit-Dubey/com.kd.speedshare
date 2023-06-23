.class public final Lcom/google/android/gms/internal/ads/zzbpr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzetl:Lcom/google/android/gms/internal/ads/zzdkw;

.field private final zzfko:Lcom/google/android/gms/internal/ads/zzdkk;

.field private final zzfpp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkw;Lcom/google/android/gms/internal/ads/zzdkk;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzetl:Lcom/google/android/gms/internal/ads/zzdkw;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzfko:Lcom/google/android/gms/internal/ads/zzdkk;

    if-nez p3, :cond_b

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 5
    :cond_b
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzfpp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzaim()Lcom/google/android/gms/internal/ads/zzdkw;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzetl:Lcom/google/android/gms/internal/ads/zzdkw;

    return-object v0
.end method

.method public final zzain()Lcom/google/android/gms/internal/ads/zzdkk;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzfko:Lcom/google/android/gms/internal/ads/zzdkk;

    return-object v0
.end method

.method public final zzaio()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzfpp:Ljava/lang/String;

    return-object v0
.end method
