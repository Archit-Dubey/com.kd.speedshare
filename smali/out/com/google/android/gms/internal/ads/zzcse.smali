.class final synthetic Lcom/google/android/gms/internal/ads/zzcse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzduh;


# instance fields
.field private final zzglj:Lcom/google/android/gms/internal/ads/zzcsf;

.field private final zzglk:Lcom/google/android/gms/internal/ads/zzdkk;

.field private final zzgll:Lcom/google/android/gms/internal/ads/zzcim;

.field private final zzglm:Lcom/google/android/gms/internal/ads/zzdkw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsf;Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzcim;Lcom/google/android/gms/internal/ads/zzdkw;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzglj:Lcom/google/android/gms/internal/ads/zzcsf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzglk:Lcom/google/android/gms/internal/ads/zzdkk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzgll:Lcom/google/android/gms/internal/ads/zzcim;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzglm:Lcom/google/android/gms/internal/ads/zzdkw;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdvf;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzglj:Lcom/google/android/gms/internal/ads/zzcsf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzglk:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzgll:Lcom/google/android/gms/internal/ads/zzcim;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzglm:Lcom/google/android/gms/internal/ads/zzdkw;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcsf;->zza(Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzcim;Lcom/google/android/gms/internal/ads/zzdkw;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object p1

    return-object p1
.end method
