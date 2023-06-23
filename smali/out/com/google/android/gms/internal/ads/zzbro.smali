.class final Lcom/google/android/gms/internal/ads/zzbro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtg;
.implements Lcom/google/android/gms/internal/ads/zzbua;


# instance fields
.field private final zzboc:Lcom/google/android/gms/internal/ads/zzaqp;

.field private final zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzaqp;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzboc:Lcom/google/android/gms/internal/ads/zzaqp;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkk;->zzhae:Lcom/google/android/gms/internal/ads/zzaqn;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkk;->zzhae:Lcom/google/android/gms/internal/ads/zzaqn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdoq:Z

    if-nez v0, :cond_f

    goto :goto_30

    .line 8
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdkk;->zzhae:Lcom/google/android/gms/internal/ads/zzaqn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqn;->zzdor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdkk;->zzhae:Lcom/google/android/gms/internal/ads/zzaqn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqn;->zzdor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzboc:Lcom/google/android/gms/internal/ads/zzaqp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzvr:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Landroid/content/Context;Ljava/util/List;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public final zzca(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public final zzcb(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public final zzcc(Landroid/content/Context;)V
    .registers 2

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzboc:Lcom/google/android/gms/internal/ads/zzaqp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqp;->detach()V

    return-void
.end method
